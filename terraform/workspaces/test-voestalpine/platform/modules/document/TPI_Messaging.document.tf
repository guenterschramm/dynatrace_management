resource "dynatrace_document" "TPI_Messaging" {
  name    = "TPI Messaging"
  type    = "dashboard"
  content = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 6,
          "w": 4,
          "x": 8,
          "y": 4
        },
        "1": {
          "h": 6,
          "w": 4,
          "x": 4,
          "y": 4
        },
        "11": {
          "h": 3,
          "w": 4,
          "x": 12,
          "y": 0
        },
        "12": {
          "h": 3,
          "w": 4,
          "x": 16,
          "y": 0
        },
        "13": {
          "h": 1,
          "w": 4,
          "x": 12,
          "y": 3
        },
        "14": {
          "h": 1,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "15": {
          "h": 5,
          "w": 20,
          "x": 0,
          "y": 17
        },
        "16": {
          "h": 7,
          "w": 20,
          "x": 0,
          "y": 10
        },
        "2": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 0
        },
        "3": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 0
        },
        "4": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 0
        },
        "5": {
          "h": 2,
          "w": 4,
          "x": 12,
          "y": 4
        },
        "6": {
          "h": 2,
          "w": 4,
          "x": 12,
          "y": 6
        },
        "7": {
          "h": 2,
          "w": 4,
          "x": 16,
          "y": 4
        },
        "8": {
          "h": 2,
          "w": 4,
          "x": 16,
          "y": 6
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777978196623,
                "icon": "ServicesIcon",
                "name": "Services",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.services"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.service\n| filter serviceType != \"DATABASE_SERVICE\"\n| lookup [\n  fetch dt.davis.problems\n  | filter event.status == \"ACTIVE\"\n  | expand affected_entity_ids\n], sourceField:id, lookupField:affected_entity_ids\n| fieldsAdd affected = if(isNotNull(lookup.affected_entity_ids), \"yes\", else: \"no\")\n| fields affected, id, name = entity.name, event.id = lookup.event.id, event.kind = lookup.event.kind",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Service health",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-notice-default, #2a7453)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "affected",
                  "type": "string",
                  "value": "no"
                },
                {
                  "color": "var(--dt-colors-charts-loglevel-error-default, #cd3741)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "affected",
                  "type": "string",
                  "value": "yes"
                }
              ]
            },
            "honeycomb": {
              "displayedFields": [
                "name"
              ],
              "legend": {
                "hidden": true
              }
            }
          }
        },
        "1": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777978146448,
                "icon": "HostsIcon",
                "name": "Hosts",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.infraops/explorer/Hosts"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.host\n| lookup [\n  fetch dt.davis.problems\n  | filter event.status == \"ACTIVE\"\n  | expand affected_entity_ids\n], sourceField:id, lookupField:affected_entity_ids\n| fieldsAdd affected = if(isNotNull(lookup.affected_entity_ids), \"yes\", else: \"no\")\n| fields affected, id, name = entity.name, event.id = lookup.event.id, event.kind = lookup.event.kind",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Host Health",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-notice-default, #2a7453)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "affected",
                  "type": "string",
                  "value": "no"
                },
                {
                  "color": "var(--dt-colors-charts-loglevel-error-default, #cd3741)",
                  "colorMode": "single-color",
                  "comparator": "= *value*",
                  "field": "affected",
                  "type": "string",
                  "value": "yes"
                }
              ]
            },
            "honeycomb": {
              "displayedFields": [
                "name"
              ],
              "legend": {
                "hidden": true
              }
            }
          }
        },
        "11": {
          "content": "![](/platform/document/v1/documents/image-tibco/content)",
          "type": "markdown"
        },
        "12": {
          "content": "![](/platform/document/v1/documents/image-image-74s/content)",
          "type": "markdown"
        },
        "13": {
          "content": "[Tibco EMS](https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.dashboards/dashboard/com-dynatrace-extension-tibcoems-tibco-ems-overview--659040689)",
          "type": "markdown"
        },
        "14": {
          "content": "[Rabbit MQ](https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.dashboards/dashboard/com-dynatrace-rabbitmq-rabbitmq-overview--1705986483)",
          "type": "markdown"
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { sum(tpi_messaging.loglevel.counter), value.A = count(tpi_messaging.loglevel.counter, scalar: true) }, by: { loglevel }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "loglevel"
                ],
                "convertToValue": "Count",
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "sum",
                  "key": "tpi_messaging.loglevel.counter"
                }
              }
            ],
            "version": 20
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "log-level",
                  "comparator": "= *value*",
                  "field": "loglevel",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "legend": {
              "ratio": 15
            }
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum(dt.service.request.count), by: { dt.service.name }",
          "queryConfig": {
            "subQueries": [
              {
                "by": [
                  "dt.service.name"
                ],
                "datatype": "metrics",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "sum",
                  "key": "dt.service.request.count"
                }
              }
            ],
            "version": 20
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "legend": {
              "ratio": 18
            }
          }
        },
        "2": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777978114826,
                "icon": "HostsIcon",
                "name": "Hosts",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.infraops/explorer/Hosts"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.host\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Hosts",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "3": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777978177499,
                "icon": "ServicesIcon",
                "name": "Services",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.services"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.service\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Services",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "4": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1777977744577,
                "icon": "EventIcon",
                "name": "Problems",
                "urlPattern": "https://test-voestalpine.apps.dynatrace.com/ui/apps/dynatrace.davis.problems"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.davis.problems\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Problems found",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-error-default, #cd3741)",
                  "colorMode": "single-color",
                  "comparator": "\u003e",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                },
                {
                  "color": "var(--dt-colors-charts-apdex-excellent-default, #2a7453)",
                  "colorMode": "single-color",
                  "comparator": "=",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.tibco:broker`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tibco Brokers",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
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
          "query": "fetch `dt.entity.tibco:queue`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tibco Queues",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
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
          "query": "fetch `dt.entity.rabbitmq:node`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "RabbitMQ Nodes",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.rabbitmq:queue`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "RabbitMQ Queues",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "count()",
                  "type": "long",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        }
      },
      "variables": [],
      "version": 21
    })
  private = true
}
