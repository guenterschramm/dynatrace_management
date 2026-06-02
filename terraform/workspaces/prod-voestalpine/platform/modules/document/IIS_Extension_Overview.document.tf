resource "dynatrace_document" "IIS_Extension_Overview" {
  name      = "IIS Extension Overview"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": true,
      "layouts": {
        "1": {
          "h": 4,
          "w": 36,
          "x": 4,
          "y": 0
        },
        "10": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 10
        },
        "11": {
          "h": 4,
          "w": 13,
          "x": 0,
          "y": 11
        },
        "12": {
          "h": 4,
          "w": 13,
          "x": 13,
          "y": 11
        },
        "13": {
          "h": 4,
          "w": 13,
          "x": 26,
          "y": 11
        },
        "14": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 15
        },
        "2": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 0
        },
        "3": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 4
        },
        "4": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 5
        },
        "5": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 5
        },
        "6": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 5
        },
        "7": {
          "h": 3,
          "w": 22,
          "x": 18,
          "y": 5
        },
        "8": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 8
        },
        "9": {
          "h": 1,
          "w": 40,
          "x": 0,
          "y": 9
        }
      },
      "settings": {
        "gridLayout": {
          "columnsCount": 40,
          "mode": "responsive"
        }
      },
      "tiles": {
        "1": {
          "content": "## Overview of the IIS Extension\n\nStart here to navigate to the extension configuration and entity pages to view charts displaying data collected.\n\n-----\n#### [⚙️ Configure Extension](/ui/apps/dynatrace.extensions.manager/configurations/com.dynatrace.extension.wmi.iis/configs)  [📖 Documentation](https://docs.dynatrace.com/docs/shortlink/microsoft-iis-extension)",
          "type": "markdown"
        },
        "10": {
          "content": "### Environment",
          "type": "markdown"
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  metric1=avg(`iis.total.bytes.received.count`),\n  metric2=avg(`iis.total.bytes.sent.count`)\n},\nby: {`dt.entity.wmi:iis_service_instance`}\n| fieldsAdd entity_name = entityName(`dt.entity.wmi:iis_service_instance`)\n| fieldsAdd entity_id = `dt.entity.wmi:iis_service_instance`\n| fieldsAdd entity_url = concat(\"/ui/apps/dynatrace.infraops/technology/application/com.dynatrace.extension.wmi.iis/wmi:iis_service_instance?detailsId=\", entity_id)\n| fieldsAdd entity = concat(\"[\", entity_name, \"]\", \"(\", entity_url, \")\")\n| fieldsAdd `Total Bytes Received` = arrayLast(metric1)\n| fieldsAdd `Total Bytes Sent` = arrayLast(metric2)\n| sort entity_name asc\n| fields  entity, `Total Bytes Received`, `Total Bytes Sent`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Summary - last value",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "thresholdRules": []
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "entity"
                  ],
                  "id": 913702.4000000004,
                  "value": "markdown"
                }
              ]
            }
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries average = avg(`iis.total.bytes.received.count`), by: {`dt.entity.wmi:iis_service_instance`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.wmi:iis_service_instance`)\n| fieldsAdd name = coalesce(name, \"environment\")\n| fieldsRemove `dt.entity.wmi:iis_service_instance`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Bytes Received",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "average"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Total Bytes Sent"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "thresholdRules": []
            },
            "dataMapping": {
              "displayedFields": [
                "name"
              ]
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
          "query": "timeseries average = avg(`iis.total.bytes.sent.count`), by: {`dt.entity.wmi:iis_service_instance`}\n| sort arrayAvg(average) desc\n| fieldsAdd name=entityName(`dt.entity.wmi:iis_service_instance`)\n| fieldsAdd name = coalesce(name, \"environment\")\n| fieldsRemove `dt.entity.wmi:iis_service_instance`\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Bytes Sent",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "average"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Total Bytes Sent"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "thresholdRules": []
            },
            "dataMapping": {
              "displayedFields": [
                "name"
              ]
            }
          }
        },
        "14": {
          "content": "\n",
          "type": "markdown"
        },
        "2": {
          "content": "![](https://dt-cdn.net/images/iis-300-67d16e680c.png)",
          "type": "markdown"
        },
        "3": {
          "content": "### Currently Monitoring\n",
          "title": "",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.wmi:iis_service_instance`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "IIS Service",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.wmi:iis_service_app_pool`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "IIS App Pool",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch `dt.entity.wmi:iis_service_site`\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "IIS Site",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false,
                "record": "host_info",
                "showTicks": true,
                "variant": "area"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 0,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "",
                "id": "host_info.single_value",
                "identifier": "host_info.single_value",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "7": {
          "content": "#### 🔗 Navigate to entities:\n* [IIS Service](/ui/apps/dynatrace.infraops/technology/application/com.dynatrace.extension.wmi.iis/wmi:iis_service_instance)\n* [IIS App Pool](/ui/apps/dynatrace.infraops/technology/application/com.dynatrace.extension.wmi.iis/wmi:iis_service_app_pool)\n* [IIS Site](/ui/apps/dynatrace.infraops/technology/application/com.dynatrace.extension.wmi.iis/wmi:iis_service_site)",
          "type": "markdown"
        },
        "8": {
          "content": "\n",
          "type": "markdown"
        },
        "9": {
          "content": "## Metric Summary 📈\n",
          "type": "markdown"
        }
      },
      "version": 21
    })
  custom_id = "com-dynatrace-extension-wmi-iis-iis-extension-overview--471754249"
  # private = false
}
