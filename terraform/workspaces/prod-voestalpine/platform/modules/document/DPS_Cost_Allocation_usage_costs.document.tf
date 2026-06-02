resource "dynatrace_document" "DPS_Cost_Allocation_usage_costs" {
  name    = "DPS Cost Allocation usage & costs"
  type    = "dashboard"
  content = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 35
        },
        "1": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 35
        },
        "11": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "15": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "16": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "17": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 1
        },
        "19": {
          "h": 6,
          "w": 13,
          "x": 11,
          "y": 7
        },
        "2": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 29
        },
        "20": {
          "h": 6,
          "w": 11,
          "x": 0,
          "y": 7
        },
        "23": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 51
        },
        "24": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 49
        },
        "25": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 59
        },
        "26": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 57
        },
        "27": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 59
        },
        "28": {
          "h": 5,
          "w": 11,
          "x": 0,
          "y": 13
        },
        "29": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 41
        },
        "30": {
          "h": 5,
          "w": 13,
          "x": 11,
          "y": 13
        },
        "31": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "32": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "5": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 29
        },
        "6": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 32
        },
        "7": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 32
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| fieldsAdd usage = coalesce(billed_host_hours, billed_gibibyte_hours)\n| summarize sum(usage), alias: `usage`, by: { dt.cost.product}\n|fieldsAdd `cost USD` = usage * toDouble($Ratecard)\n| sort `cost USD` desc\n| fieldsAdd dt.cost.product = if(isNull(dt.cost.product), \"unassigned\", else:dt.cost.product)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Overview per product - pricepoint 0.08$/8GB",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"dt.cost.product\"]": 196.96875,
                "[\"usage\"]": 91.11250305175781
              },
              "hiddenColumns": [
                [
                  "gibibyte"
                ]
              ],
              "lineWrapIds": [
                [
                  "count"
                ]
              ]
            },
            "thresholds": [
              {
                "field": "costs",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≤",
                    "id": 0,
                    "label": "",
                    "value": 220
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "\u003e",
                    "id": 1,
                    "label": "",
                    "value": 220
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 255
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1712838776597,
                "baseUnit": "usd",
                "decimals": 2,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "costs",
                "suffix": "USD",
                "unitCategory": "currency"
              },
              {
                "added": 1720435664184,
                "baseUnit": "usd",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": null,
                "suffix": "USD",
                "unitCategory": "currency"
              }
            ]
          }
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| fieldsAdd usage = coalesce(billed_host_hours, billed_gibibyte_hours)\n| summarize sum(usage), alias: `usage`, by: { dt.cost.costcenter}\n| sort dt.cost.costcenter\n| fieldsAdd `cost USD` = usage * toDouble($Ratecard)\n| sort `cost USD` desc\n| fieldsAdd dt.cost.costcenter = if(isNull(dt.cost.costcenter), \"unassigned\", else:dt.cost.costcenter)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Overview per costcenter",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "hiddenColumns": [
                [
                  "gibibyte"
                ]
              ]
            },
            "thresholds": [
              {
                "field": "costs",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≤",
                    "id": 0,
                    "label": "",
                    "value": 5
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "\u003e",
                    "id": 1,
                    "label": "",
                    "value": 5
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "\u003e",
                    "id": 2,
                    "label": "",
                    "value": 9
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1712838812292,
                "baseUnit": "usd",
                "decimals": 2,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "costs",
                "suffix": "$",
                "unitCategory": "currency"
              }
            ]
          }
        },
        "11": {
          "davis": {},
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| fieldsAdd usage = coalesce(billed_host_hours, billed_gibibyte_hours) \n| fieldsAdd costs = usage * toDouble($Ratecard)\n\n| append [\n  fetch dt.system.events\n  | filter event.kind == \"BILLING_USAGE_EVENT\"\n  | filter event.provider == \"LIMA_CLIENT\"\n  | filter event.type == \"Infrastructure Monitoring\" \n  | fieldsAdd costs = billed_host_hours * toDouble($Ratecard)\n]\n\n\n| makeTimeseries sum(costs), by:{event.type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(costs)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval"
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1713254980105,
                "baseUnit": "usd",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sum(costs)",
                "suffix": "USD",
                "unitCategory": "currency"
              }
            ]
          }
        },
        "15": {
          "davis": {},
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| makeTimeseries sum(billed_gibibyte_hours), by:{event.type}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 5000,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 10000
          },
          "title": "Usage",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(billed_gibibyte_hours)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval"
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1713254980105,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "interval",
                "suffix": "$",
                "unitCategory": "time"
              },
              {
                "added": 1720169506924,
                "baseUnit": "gibibyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sum(billed_gibibyte_hours)",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| fieldsAdd usage = coalesce(billed_host_hours, billed_gibibyte_hours)\n| makeTimeseries sum(usage), alias: `unassigned`, by:{dt.cost.product}\n| fieldsAdd dt.cost.product = if(isNull(dt.cost.product), \"unassigned\", else:dt.cost.product)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Usage per Product",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "unassigned"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval"
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1720169570984,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "interval",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1720169591630,
                "baseUnit": "gibibyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "unassigned",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "17": {
          "content": "# Showback Usage Details for selected Capability",
          "type": "markdown"
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| summarize total= sum(billed_gibibyte_hours), by:{dt.cost.product}\n| sort `dt.cost.product` desc\n| limit 15\n| fieldsAdd dt.cost.product = if(isNull(dt.cost.product), \"unassigned\", else:dt.cost.product)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Usage per Product Top 15",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "dt.cost.product",
                "categoryAxisLabel": "dt.cost.product",
                "valueAxis": [
                  "total"
                ],
                "valueAxisLabel": "total"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| fieldsAdd usage = coalesce(billed_host_hours, billed_gibibyte_hours)\n| summarize sum(usage), alias: `usage`, by: { dt.cost.costcenter=if(isNull(dt.cost.costcenter), \"unassigned\", else:dt.cost.costcenter)}\n| sort `usage` desc\n| limit 1\n| fieldsKeep dt.cost.costcenter\n| fieldsRename `top costcenter`= dt.cost.costcenter",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top Costcenter",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "top costcenter",
              "prefixIcon": "",
              "recordField": "top costcenter",
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": []
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| summarize total= sum(billed_gibibyte_hours), by:{dt.cost.costcenter}\n| sort `dt.cost.costcenter` desc\n| limit 15\n| fieldsAdd dt.cost.costcenter = if(isNull(dt.cost.costcenter), \"unassigned\", else:dt.cost.costcenter)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "segments": {
            "tileSegments": [],
            "tileSegmentsEnabled": true
          },
          "title": "Usage per Cost-Center Top 15",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "dt.cost.costcenter",
                "categoryAxisLabel": "dt.cost.costcenter",
                "valueAxis": [
                  "total"
                ],
                "valueAxisLabel": "total"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| fields timestamp, billed_gibibyte_hours, hostname=coalesce(entityName(dt.entity.host),dt.entity.host), dt.cost.costcenter, dt.cost.product, event.type\n\n| summarize dt.cost.costcenter=takeLast(dt.cost.costcenter), dt.cost.product=takeLast(dt.cost.product),`Usage (GiB/h)`= sum(billed_gibibyte_hours), by:{hostname}\n| sort `Usage (GiB/h)` desc\n| fieldsAdd `cost USD`= `Usage (GiB/h)`* toDouble($Ratecard)\n| fieldsAdd dt.cost.costcenter = if(isNull(dt.cost.costcenter), \"unassigned\", else:dt.cost.costcenter)\n| fieldsAdd dt.cost.product = if(isNull(dt.cost.product), \"unassigned\", else:dt.cost.product)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "sortBy": {
                "columnId": "[\"billed_gibibyte_hours\"]",
                "direction": "descending"
              }
            },
            "thresholds": []
          }
        },
        "24": {
          "content": "# Host usage and cost summary",
          "type": "markdown"
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability \n| summarize sum(billed_gibibyte_hours), alias: `Usage (GiB/h)`, by: { dt.cost.product}\n| sort `Usage (GiB/h)` desc\n| fieldsAdd `cost USD`= `Usage (GiB/h)`* toDouble($Ratecard)\n| fieldsAdd dt.cost.product = if(isNull(dt.cost.product), \"unassigned\", else:dt.cost.product)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Usage/Cost per Product",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1715150957835,
                "baseUnit": "usd",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "product cost",
                "suffix": "$",
                "unitCategory": "currency"
              }
            ]
          }
        },
        "26": {
          "content": "# Cost summary per Cost Center / Product\nFind detailed costs per cost center or product",
          "type": "markdown"
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| summarize sum(billed_gibibyte_hours), alias: `Usage (GiB/h)`, by: { dt.cost.costcenter}\n| sort `Usage (GiB/h)` desc\n| fieldsAdd `cost USD`= `Usage (GiB/h)`* toDouble($Ratecard)\n| fieldsAdd dt.cost.costcenter = if(isNull(dt.cost.costcenter), \"unassigned\", else:dt.cost.costcenter)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Usage/Cost per Cost Center",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1715150957835,
                "baseUnit": "usd",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "product cost",
                "suffix": "$",
                "unitCategory": "currency"
              }
            ]
          }
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.entity.host\n| summarize count = count(), by:{id}\n| join [\n  fetch dt.system.events\n  | filter event.kind == \"BILLING_USAGE_EVENT\"\n  | filter event.type == $Capability\n  | filterOut isNull(dt.cost.costcenter) or isNull(dt.cost.product)\n  | summarize count = count(), by:{dt.entity.host, dt.cost.costcenter, dt.cost.product, entityName(dt.entity.host)}\n], kind:leftOuter, on:{left[id] == right[dt.entity.host]}\n| filter isNull(right.dt.entity.host)\n| fields id, right.dt.cost.costcenter, right.dt.cost.product\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 5000,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 10000
          },
          "title": "Hosts without Cost Center or Product assignment",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"id\"]": 270.5625
              },
              "sortBy": {
                "columnId": "[\"Usage (GiB/h)\"]",
                "direction": "descending"
              }
            },
            "thresholds": []
          }
        },
        "29": {
          "content": "# Capability costs\n",
          "type": "markdown"
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == $Capability\n| filter dt.cost.costcenter == \"not-allowlisted\" or dt.cost.product == \"not-allowlisted\"\n| summarize count = count(), by:{dt.entity.host, dt.cost.costcenter, dt.cost.product}\n| fields hostname=coalesce(entityName(dt.entity.host),dt.entity.host), dt.cost.costcenter, dt.cost.product",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 5000,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 10000
          },
          "title": "Hosts with not-allowlisted fields",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "thresholds": []
          }
        },
        "31": {
          "content": "# Cost Details",
          "type": "markdown"
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| fieldsAdd usage = coalesce(billed_host_hours, billed_gibibyte_hours)\n| makeTimeseries sum(usage), alias: `unassigned`, by:{dt.cost.costcenter}\n| fieldsAdd dt.cost.costcenter = if(isNull(dt.cost.costcenter), \"unassigned\", else:dt.cost.costcenter)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Usage per Cost Center",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "unassigned"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval"
              ],
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1720169570984,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "interval",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1720169591630,
                "baseUnit": "gibibyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "unassigned",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "33": {
          "content": "Disclaimer: \nPlease ensure the above listed pricing variables match with your rate card pricing.",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| fieldsAdd usage = coalesce(billed_host_hours, billed_gibibyte_hours)\n| summarize sum(usage), alias: `usage`, by: { dt.cost.product=if(isNull(dt.cost.product), \"unassigned\", else:dt.cost.product)}\n| sort `usage` desc\n| limit 1\n| fieldsKeep dt.cost.product\n| fieldsRename `top product`= dt.cost.product",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top Product",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "top product",
              "prefixIcon": "",
              "recordField": "top product",
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": []
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| fieldsAdd usage = coalesce(billed_host_hours, billed_gibibyte_hours)\n| summarize sum(usage), alias: `usage`, by: { dt.cost.costcenter}\n| sort `usage` desc\n| limit 1\n| fieldsAdd `top costcenter`= usage * toDouble($Ratecard)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top Costcenter",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "top costcenter",
              "prefixIcon": "",
              "recordField": "top costcenter",
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1712838491820,
                "baseUnit": "usd",
                "decimals": 2,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "top costcenter",
                "suffix": "$",
                "unitCategory": "currency"
              }
            ]
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.provider == \"LIMA_CLIENT\"\n| filter event.type == $Capability\n| fieldsAdd usage = coalesce(billed_host_hours, billed_gibibyte_hours)\n| summarize sum(usage), alias: `usage`, by: { dt.cost.product}\n| sort `usage` desc\n| limit 1\n| fieldsAdd `top product`= usage * toDouble($Ratecard)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top Product",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "top product",
              "prefixIcon": "",
              "recordField": "top product",
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1712838641069,
                "baseUnit": "usd",
                "decimals": 2,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "top product",
                "suffix": "$",
                "unitCategory": "currency"
              }
            ]
          }
        }
      },
      "variables": [
        {
          "defaultValue": "Full-Stack Monitoring",
          "editable": true,
          "input": "Full-Stack Monitoring,Infrastructure Monitoring,Foundation \u0026 Discovery,Runtime Vulnerability Analytics,Runtime Application Protection",
          "key": "Capability",
          "multiple": false,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "data record(Ratecard = 0.01) // default is \"Full-Stack Monitoring\", 0.01 \n| fieldsAdd Ratecard = if($Capability == \"Full-Stack Monitoring\", toDouble($Price_Fullstack_Monitoring))\n| fieldsAdd Ratecard = if($Capability == \"Infrastructure Monitoring\", toDouble($Price_Infrastructure_Monitoring), else:Ratecard)\n| fieldsAdd Ratecard = if($Capability == \"Foundation \u0026 Discovery\", toDouble($Price_Foundation_Discovery), else:Ratecard)\n| fieldsAdd Ratecard = if($Capability == \"Runtime Vulnerability Analytics\", toDouble($Price_Runtime_Vulnerability_Analytics)/1024/1024, else:Ratecard)\n| fieldsAdd Ratecard = if($Capability == \"Runtime Application Protection\", toDouble($Price_Application_Protection)/1024/1024, else:Ratecard)\n| fields Ratecard",
          "key": "Ratecard",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "defaultValue": "0,00881",
          "editable": true,
          "key": "Price_Fullstack_Monitoring",
          "type": "text",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "0,03521",
          "editable": true,
          "key": "Price_Infrastructure_Monitoring",
          "type": "text",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "0,00881",
          "editable": true,
          "key": "Price_Foundation_Discovery",
          "type": "text",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "0,00199",
          "editable": true,
          "key": "Price_Runtime_Vulnerability_Analytics",
          "type": "text",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "0,00199",
          "editable": true,
          "key": "Price_Application_Protection",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 19
    })
  private = true
}
