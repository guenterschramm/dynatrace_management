resource "dynatrace_document" "Azure_API_Management_Service" {
  name      = "Azure API Management Service"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "chart-4xx-instance": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 20
        },
        "chart-5xx-instance": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 20
        },
        "chart-backend-5xx": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 20
        },
        "chart-backend-response": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 14
        },
        "chart-capacity": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "chart-capacity-location": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "chart-gateway-response": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 14
        },
        "chart-requests-instance": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 14
        },
        "footer": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "header": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "kpi-4xx": {
          "h": 4,
          "w": 4,
          "x": 12,
          "y": 3
        },
        "kpi-5xx": {
          "h": 4,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "kpi-capacity": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "kpi-count": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "kpi-requests": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "kpi-successful": {
          "h": 4,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "sec-capacity": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "sec-errors": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "sec-traffic": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 13
        }
      },
      "settings": {},
      "tiles": {
        "chart-4xx-instance": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "4xx client errors per APIM instance. High 4xx volumes typically signal authentication failures, rate limit violations, or incorrect API usage patterns.",
          "query": "timeseries val = sum(cloud.azure.microsoft_apimanagement.service.Requests),\n  by: {GatewayResponseCodeCategory, azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| filter matchesValue(GatewayResponseCodeCategory, \"4xx\")\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "4xx Gateway Errors by Instance",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "chart-5xx-instance": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "5xx server errors per APIM instance returned to the gateway client. Identify which instances are generating the most server-side failures.",
          "query": "timeseries val = sum(cloud.azure.microsoft_apimanagement.service.Requests),\n  by: {GatewayResponseCodeCategory, azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| filter matchesValue(GatewayResponseCodeCategory, \"5xx\")\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx Gateway Errors by Instance",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "chart-backend-5xx": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "5xx errors from the backend API as proxied through APIM. Distinguishing from gateway 5xx errors helps determine whether the failure originates in APIM policies or the underlying APIs.",
          "query": "timeseries val = sum(cloud.azure.microsoft_apimanagement.service.Requests),\n  by: {BackendResponseCodeCategory, azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| filter matchesValue(BackendResponseCodeCategory, \"5xx\")\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx Backend Errors by Instance",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "chart-backend-response": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Request volume broken down by backend response code category. Isolates backend API failures from APIM policy failures.",
          "query": "timeseries val = sum(cloud.azure.microsoft_apimanagement.service.Requests),\n  by: {BackendResponseCodeCategory, azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Requests by Backend Response Code",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "BackendResponseCodeCategory",
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "chart-capacity": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Gateway capacity utilization per APIM instance over time. Sustained values above 70% indicate a need to scale out gateway units.",
          "query": "timeseries val = avg(cloud.azure.microsoft_apimanagement.service.Capacity),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Gateway Capacity percentage by Instance",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "chart-capacity-location": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Capacity utilization broken down by gateway deployment location (for multi-region APIM). Helps identify regional capacity hotspots.",
          "query": "timeseries val = avg(cloud.azure.microsoft_apimanagement.service.Capacity),\n  by: {location, azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arrayAvg(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Gateway Capacity percentage by Location",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "location",
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "chart-gateway-response": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Request volume broken down by gateway response code category (2xx, 4xx, 5xx). Reveals the overall health of client requests reaching the gateway.",
          "query": "timeseries val = sum(cloud.azure.microsoft_apimanagement.service.Requests),\n  by: {GatewayResponseCodeCategory, azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Requests by Gateway Response Code",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "GatewayResponseCodeCategory",
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "chart-requests-instance": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total request volume per APIM instance over time. Use to correlate traffic peaks with capacity spikes.",
          "query": "timeseries val = sum(cloud.azure.microsoft_apimanagement.service.Requests),\n  by: {azure.resource.name, azure.subscription, azure.resource.group, azure.location, dt.smartscape_source.id},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Requests by Instance",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "val"
                ],
                "timestamp": "timeframe"
              }
            },
            "dataMapping": {
              "displayedFields": [
                "azure.resource.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "footer": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "header": {
          "content": "### Azure API Management Service\n\nMonitor gateway capacity utilization, total request volumes, and gateway vs backend response code breakdowns for Azure API Management Service. Capacity metric is the primary signal for scaling decisions.\n\nInspect the selected instances in the [Clouds App](\u003c/ui/intent/dynatrace.clouds/view_azure_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"network\",\"dt.smartscape.azure_microsoft_apimanagement_service\":\"$SmartscapeId\"}\u003e).\n\n---",
          "type": "markdown"
        },
        "kpi-4xx": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total 4xx client errors returned by the API gateway. High volumes may indicate invalid API usage, bad URLs, or authentication failures.",
          "query": "timeseries val = sum(cloud.azure.microsoft_apimanagement.service.Requests),\n  by: {GatewayResponseCodeCategory},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| filter matchesValue(GatewayResponseCodeCategory, \"4xx\")\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "4xx Gateway Errors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "Total",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "4xx Errors",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "kpi-5xx": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total 5xx server-side errors returned by the API gateway. Server errors indicate backend failures or APIM policy faults.",
          "query": "timeseries val = sum(cloud.azure.microsoft_apimanagement.service.Requests),\n  by: {GatewayResponseCodeCategory},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| filter matchesValue(GatewayResponseCodeCategory, \"5xx\")\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx Gateway Errors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "Total",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "5xx Errors",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "kpi-capacity": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average gateway capacity utilization percentage. Values above 70% indicate scale-out should be considered; above 90% risks dropped requests.",
          "query": "timeseries val = avg(cloud.azure.microsoft_apimanagement.service.Capacity),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize AvgCap = avg(arrayAvg(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average Gateway Capacity percentage",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "AvgCap",
                  "value": 70
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "AvgCap",
                  "value": 90
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Capacity",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "AvgCap",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "AvgCap",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "kpi-count": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total number of Azure API Management Service instances matching the current filter selection.",
          "query": "smartscapeNodes \"AZURE_MICROSOFT_APIMANAGEMENT_SERVICE\"\n| filter in(toString(id), array($SmartscapeId))\n| summarize count = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Instances",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Instances",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "sparklineSettings": {
                "isVisible": false,
                "record": "count"
              },
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "kpi-requests": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total API gateway requests handled by selected APIM instances during the selected timeframe.",
          "query": "timeseries val = sum(cloud.azure.microsoft_apimanagement.service.Requests),\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Requests",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Requests",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "kpi-successful": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total requests returning 2xx success codes through the API gateway.",
          "query": "timeseries val = sum(cloud.azure.microsoft_apimanagement.service.Requests),\n  by: {GatewayResponseCodeCategory},\n  filter: {\n    in(azure.subscription, array($Subscription)) AND\n    in(azure.location, array($Location)) AND\n    in(azure.resource.group, array($ResourceGroup)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n  }\n| filter matchesValue(GatewayResponseCodeCategory, \"2xx\")\n| summarize Total = sum(arraySum(val))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Successful Requests",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Successful",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "Total",
              "sparklineSettings": {
                "record": "val"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741737600000,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Total",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "sec-capacity": {
          "content": "##### Capacity",
          "type": "markdown"
        },
        "sec-errors": {
          "content": "##### Errors",
          "type": "markdown"
        },
        "sec-traffic": {
          "content": "##### Traffic",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AZURE_MICROSOFT_APIMANAGEMENT_SERVICE\"\n| filter in(azure.subscription, array($Subscription))\n| filter in(azure.location, array($Location))\n| filter in(azure.resource.group, array($ResourceGroup))\n| fieldsKeep id",
          "key": "SmartscapeId",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AZURE_MICROSOFT_APIMANAGEMENT_SERVICE\"\n| fields azure.subscription\n| dedup azure.subscription\n| sort azure.subscription",
          "key": "Subscription",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AZURE_MICROSOFT_APIMANAGEMENT_SERVICE\"\n| fields azure.location\n| dedup azure.location\n| sort azure.location",
          "key": "Location",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AZURE_MICROSOFT_APIMANAGEMENT_SERVICE\"\n| fields azure.resource.group\n| dedup azure.resource.group\n| sort azure.resource.group",
          "key": "ResourceGroup",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "10",
          "editable": true,
          "key": "Limit",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.clouds.azure-apim"
  # private = false
}
