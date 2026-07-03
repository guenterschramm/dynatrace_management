resource "dynatrace_document" "AWS_DynamoDB" {
  name      = "AWS DynamoDB"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "21": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "23": {
          "h": 6,
          "w": 20,
          "x": 4,
          "y": 28
        },
        "25": {
          "h": 3,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "30": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 12
        },
        "31": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 12
        },
        "32": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 22
        },
        "34": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 17
        },
        "35": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 17
        },
        "39": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 11
        },
        "40": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "46": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 6
        },
        "47": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 6
        },
        "48": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "49": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 28
        },
        "50": {
          "h": 3,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "51": {
          "h": 3,
          "w": 4,
          "x": 12,
          "y": 3
        },
        "52": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "53": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "54": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 40
        },
        "55": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 40
        },
        "57": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 34
        },
        "58": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 34
        },
        "59": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 31
        },
        "60": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 22
        },
        "61": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 45
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "### AWS DynamoDB \n\nGet an overview of the status and usage of your tables. Get more insight into consumption comparing the consumed and the provisioned capacity units. Consider tracking increases of throttles and latency to spot potential problems, and also the usage of Global Secondary Indexes.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"databases\",\"dt.smartscape.aws_dynamodb_table\":\"$SmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Total DynamoDB tables across selected accounts and regions.",
          "query": "smartscapeNodes \"AWS_DYNAMODB_TABLE\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($SmartscapeId))\n| summarize count = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tables",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#5EB1A9",
                  "field": "count",
                  "type": "long",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "error",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "sparklineSettings": {
                "record": "dt.security_context"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": []
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Average time (ms) for successful requests per operation. Does not include SDK retry time — correlate with Throttled Requests for full latency picture.",
          "query": "timeseries x=avg(cloud.aws.dynamodb.SuccessfulRequestLatency.By.Operation.TableName),\n           by: {aws.account.id, aws.region, TableName, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Successful request latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Milliseconds"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "TableName"
              ]
            },
            "unitsOverrides": []
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of failed attempts to perform conditional writes.",
          "query": "timeseries x=sum(cloud.aws.dynamodb.ConditionalCheckFailedRequests.By.TableName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arraySum(x)\n| summarize x = sum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Conditional check failed requests",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#5EB1A9",
                  "field": "x",
                  "type": "double",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C82D40",
                  "field": "x",
                  "type": "double",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "error",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "x",
              "sparklineSettings": {
                "record": "x"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1739951799301,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.dynamodb.ConsumedReadCapacityUnits.By.TableName, rate:1s),\n           by: {aws.account.id, aws.region, TableName, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Consumed read capacity units per second",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Units"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "TableName"
              ]
            },
            "legend": {
              "ratio": 23
            }
          }
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.dynamodb.ConsumedWriteCapacityUnits.By.TableName, rate:1s),\n           by: {aws.account.id, aws.region, TableName, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Consumed write capacity units per second",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Units"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "TableName"
              ]
            },
            "legend": {
              "ratio": 23
            }
          }
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries throttles = sum(cloud.aws.dynamodb.ThrottledRequests.By.Operation.TableName),\n           by: {aws.account.id, aws.region, Operation, TableName, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| filter Operation == \"Query\" \n  OR Operation == \"GetItem\" \n  OR Operation == \"Scan\" \n  OR Operation == \"BatchGetItem\"\n| sort arraySum(throttles) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Read throttle events by operation",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "throttles"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Events"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "Operation",
                "TableName"
              ]
            },
            "legend": {
              "ratio": 23
            }
          }
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=max(cloud.aws.dynamodb.ProvisionedReadCapacityUnits.By.TableName),\n           by: {aws.account.id, aws.region, TableName, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayMax(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Provisioned read capacity units",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Units",
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "TableName"
              ]
            },
            "legend": {
              "ratio": 23
            }
          }
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=max(cloud.aws.dynamodb.ProvisionedWriteCapacityUnits.By.TableName),\n           by: {aws.account.id, aws.region, TableName, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayMax(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Provisioned write capacity units",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Units",
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "TableName"
              ]
            },
            "legend": {
              "ratio": 23
            }
          }
        },
        "39": {
          "content": "##### Capacity and throttling\n ",
          "type": "markdown"
        },
        "40": {
          "content": "##### Latency",
          "type": "markdown"
        },
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Consumed read capacity as a percentage of provisioned read capacity per table. Only applicable to provisioned capacity mode tables.",
          "query": "timeseries {consumed=sum(cloud.aws.dynamodb.ConsumedReadCapacityUnits.By.TableName, rate:1s), \n            provisioned=max(cloud.aws.dynamodb.ProvisionedReadCapacityUnits.By.TableName)},\n           by: {aws.account.id, aws.region, TableName, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| filter arrayMax(provisioned) \u003e 0\n| fieldsAdd x = consumed[] / provisioned[] * 100\n| fieldsRemove consumed, provisioned\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Read capacity utilization %",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "%"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ],
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-ideal-default, #2f6863)",
                  "colorMode": "single-color",
                  "max": 80,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eca440)",
                  "colorMode": "single-color",
                  "max": 95,
                  "min": 80,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c4233b)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "TableName"
              ]
            }
          }
        },
        "47": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Consumed write capacity as a percentage of provisioned write capacity per table. Only applicable to provisioned capacity mode tables.",
          "query": "timeseries {consumed=sum(cloud.aws.dynamodb.ConsumedWriteCapacityUnits.By.TableName, rate:1s),\n            provisioned=max(cloud.aws.dynamodb.ProvisionedWriteCapacityUnits.By.TableName)},\n           by: {aws.account.id, aws.region, TableName, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| filter arrayMax(provisioned) \u003e 0\n| fieldsAdd x = consumed[] / provisioned[] * 100\n| fieldsRemove consumed, provisioned\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Write capacity utilization %",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "%"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ],
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-ideal-default, #2f6863)",
                  "colorMode": "single-color",
                  "max": 80,
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eca440)",
                  "colorMode": "single-color",
                  "max": 95,
                  "min": 80,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c4233b)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "TableName"
              ]
            }
          }
        },
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Rejected item-level requests due to transactional conflicts between concurrent requests.",
          "query": "timeseries x=sum(cloud.aws.dynamodb.TransactionConflict.By.TableName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arraySum(x)\n| summarize x = sum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Transaction conflicts",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "x",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "x",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "txn conflicts",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "x",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1739961172598,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "49": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Maximum successful request latency across operations — reveals throttle-induced retry delays.",
          "query": "timeseries x=max(cloud.aws.dynamodb.SuccessfulRequestLatency.By.Operation.TableName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arrayMax(x)\n| summarize x = max(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Max request latency",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "max latency",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "x",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1739961172598,
                "baseUnit": "millisecond",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "HTTP 500 errors — DynamoDB service-side issues.",
          "query": "timeseries x=sum(cloud.aws.dynamodb.SystemErrors.By.Operation.TableName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arraySum(x)\n| summarize x = sum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "System errors (5xx)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "x",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "x",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "system errors",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "x",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1739961172598,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "51": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "HTTP 400 errors — client-side issues (malformed requests, validation failures).",
          "query": "timeseries x=sum(cloud.aws.dynamodb.UserErrors.By.Operation.TableName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arraySum(x)\n| summarize x = sum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "User errors (4xx)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "x",
                  "type": "double",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#C82D40",
                  "field": "x",
                  "type": "double",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "user errors",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "x",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1739961172598,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total throttled requests across all selected tables. Any value \u003e 0 indicates capacity or hot partition issues.",
          "query": "timeseries x=sum(cloud.aws.dynamodb.ThrottledRequests.By.Operation.TableName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arraySum(x)\n| summarize x = sum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Throttled requests",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "x",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "x",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "throttled",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "x",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1739961172598,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "53": {
          "content": "##### Global Secondary Index (GSI) capacity",
          "type": "markdown"
        },
        "54": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Consumed read capacity per GSI. GSIs have independent capacity from the base table.",
          "query": "timeseries {x=sum(cloud.aws.dynamodb.ConsumedReadCapacityUnits.By.GlobalSecondaryIndexName.TableName, rate:1s),\n            provisioned=max(cloud.aws.dynamodb.ProvisionedReadCapacityUnits.By.GlobalSecondaryIndexName.TableName)},\n           by: {aws.account.id, aws.region, GlobalSecondaryIndexName, TableName, dt.smartscape_source.id.TableName},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Consumed read capacity by GSI",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "provisioned",
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Capacity Units"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "GlobalSecondaryIndexName",
                "TableName"
              ]
            },
            "unitsOverrides": []
          }
        },
        "55": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Consumed write capacity per GSI. GSI write throttling causes ProvisionedThroughputExceededException on base table writes.",
          "query": "timeseries {x=sum(cloud.aws.dynamodb.ConsumedWriteCapacityUnits.By.GlobalSecondaryIndexName.TableName, rate:1s),\n            provisioned=max(cloud.aws.dynamodb.ProvisionedWriteCapacityUnits.By.GlobalSecondaryIndexName.TableName)},\n           by: {aws.account.id, aws.region, GlobalSecondaryIndexName, TableName, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Consumed write capacity by GSI",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x",
                  "provisioned"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Capacity Units"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "GlobalSecondaryIndexName",
                "TableName"
              ]
            },
            "unitsOverrides": []
          }
        },
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average latency per DynamoDB operation. Latency varies by operation: GetItem ~5ms, Query ~10-50ms, Scan ~100ms+.",
          "query": "timeseries x=avg(cloud.aws.dynamodb.SuccessfulRequestLatency.By.Operation.TableName),\n           by: {aws.account.id, aws.region, Operation, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Latency by operation (avg)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Milliseconds"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "Operation"
              ]
            },
            "unitsOverrides": []
          }
        },
        "58": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Maximum latency per operation. High max latency often reveals throttle-induced SDK retries with exponential backoff.",
          "query": "timeseries x=max(cloud.aws.dynamodb.SuccessfulRequestLatency.By.Operation.TableName),\n           by: {aws.account.id, aws.region, Operation, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayMax(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Latency by operation (max)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Milliseconds"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "Operation"
              ]
            },
            "unitsOverrides": []
          }
        },
        "59": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Maximum successful request latency across operations — reveals throttle-induced retry delays.",
          "query": "timeseries x=avg(cloud.aws.dynamodb.SuccessfulRequestLatency.By.Operation.TableName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arrayMax(x)\n| summarize x = max(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average request latency",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "max latency",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "x",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1739961172598,
                "baseUnit": "millisecond",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "60": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries throttles = sum(cloud.aws.dynamodb.ThrottledRequests.By.Operation.TableName),\n           by: {aws.account.id, aws.region, Operation, TableName, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| filter Operation == \"PutItem\" \n  OR Operation == \"UpdateItem\" \n  OR Operation == \"DeleteItem\" \n  OR Operation == \"BatchWriteItem\"\n| sort arraySum(throttles) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Write throttle events by operation",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "throttles"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Events"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "Operation",
                "TableName"
              ]
            },
            "legend": {
              "ratio": 23
            }
          }
        },
        "61": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AWS_DYNAMODB_TABLE\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AWS_DYNAMODB_TABLE\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
          "key": "AccountId",
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
          "input": "smartscapeNodes \"AWS_DYNAMODB_TABLE\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
          "key": "Region",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "10",
          "key": "Limit",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.clouds.aws-dynamodb"
  # private = false
}
