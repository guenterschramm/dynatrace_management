resource "dynatrace_document" "AWS_SQS" {
  name      = "AWS SQS"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "14": {
          "h": 2,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "18": {
          "h": 2,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "29": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 11
        },
        "31": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "32": {
          "h": 2,
          "w": 8,
          "x": 0,
          "y": 3
        },
        "33": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 5
        },
        "34": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 11
        },
        "35": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 16
        },
        "36": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 16
        },
        "38": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "39": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 26
        },
        "40": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 26
        },
        "41": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 26
        },
        "42": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 5
        },
        "43": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 10
        },
        "44": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 31
        },
        "5": {
          "h": 2,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "9": {
          "h": 2,
          "w": 4,
          "x": 12,
          "y": 3
        }
      },
      "settings": {},
      "tiles": {
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries counter = sum(cloud.aws.sqs.NumberOfMessagesReceived.By.QueueName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd result = arraySum(counter)\n| summarize result = sum(result)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Messages received",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "error",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "result",
              "sparklineSettings": {
                "record": "counter"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1738938866193,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "result",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries counter = sum(cloud.aws.sqs.NumberOfEmptyReceives.By.QueueName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd result = arraySum(counter)\n| summarize result = sum(result)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Empty receives",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "error",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "result",
              "sparklineSettings": {
                "record": "counter"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1738938894391,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "result",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries counter = sum(cloud.aws.sqs.NumberOfMessagesReceived.By.QueueName),\n            by: {QueueName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| sort counter desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Messages received",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "counter"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Messages"
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
                "QueueName"
              ]
            }
          }
        },
        "31": {
          "content": "### AWS SQS\n\nGet a quick glimpse of the actual status of your SQS queues and their messages. Look for details on the timeseries charts to identify past throttles or delays. Specifically, increases of the age of the oldest message is a clear indicator that a queue is not processing messages in time, either due to problems or too much load.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"queue\",\"dt.smartscape.aws_sqs_queue\":\"$SmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_SQS_QUEUE\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($SmartscapeId))\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queues",
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
                  "field": "count()",
                  "type": "long",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Error Rate",
              "labelMode": "none",
              "prefixIcon": "PercentIcon",
              "recordField": "count()",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": []
          }
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries counter = avg(cloud.aws.sqs.ApproximateAgeOfOldestMessage.By.QueueName),\n            by: {QueueName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd last = arrayLast(counter)\n| sort last desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Last age of oldest message by queue",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "counter"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
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
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "x"
                }
              ],
              "thresholdRules": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": 30,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 30,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 60,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "QueueName",
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ]
            },
            "legend": {
              "ratio": 17
            },
            "unitsOverrides": [
              {
                "added": 1746024246701,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "last",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
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
          "query": "timeseries counter = sum(cloud.aws.sqs.NumberOfMessagesSent.By.QueueName),\n            by: {QueueName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort counter desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Messages sent",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "counter"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Messages"
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
                "QueueName"
              ]
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
          "query": "timeseries counter = sum(cloud.aws.sqs.NumberOfEmptyReceives.By.QueueName),\n            by: {QueueName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort counter desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Empty receives",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "counter"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ],
              "leftYAxisSettings": {
                "label": "Messages"
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
                "queuename"
              ]
            }
          }
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries counter = sum(cloud.aws.sqs.NumberOfMessagesDeleted.By.QueueName),\n            by: {QueueName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort counter desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Messages deleted",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "counter"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ],
              "leftYAxisSettings": {
                "label": "Messages"
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
                "queuename"
              ]
            }
          }
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Timeseries of age of the oldest message, per queue.",
          "query": "timeseries counter = avg(cloud.aws.sqs.ApproximateAgeOfOldestMessage.By.QueueName),\n            by: {QueueName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort counter desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Age of oldest message",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "counter"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ],
              "leftYAxisSettings": {
                "label": "Seconds"
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
                  "color": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": 30,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 30,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 60,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "queuename"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1746024455216,
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "counter",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries counter = sum(cloud.aws.sqs.ApproximateNumberOfMessagesVisible.By.QueueName),\n            by: {QueueName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort counter desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Approximate messages visible",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "counter"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ],
              "leftYAxisSettings": {
                "label": "Messages"
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
                "queuename"
              ]
            }
          }
        },
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries counter = sum(cloud.aws.sqs.ApproximateNumberOfMessagesNotVisible.By.QueueName),\n            by: {QueueName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort counter desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Approximate messages not visible",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "counter"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ],
              "leftYAxisSettings": {
                "label": "Messages"
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
                "queuename"
              ]
            }
          }
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries counter = sum(cloud.aws.sqs.ApproximateNumberOfMessagesDelayed.By.QueueName),\n            by: {QueueName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort counter desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Approximate messages delayed per queue",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "counter"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ],
              "leftYAxisSettings": {
                "label": "Messages"
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
                "queuename"
              ]
            }
          }
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries counter = avg(cloud.aws.sqs.SentMessageSize.By.QueueName),\n            by: {QueueName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd last = arraySum(counter)\n| sort last desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total size of messages by queue",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "QueueName"
                ],
                "categoryAxisLabel": "Queues",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "last"
                ],
                "valueAxisLabel": "Messages"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
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
            "legend": {
              "ratio": 17
            },
            "unitsOverrides": [
              {
                "added": 1746024196949,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "last",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "43": {
          "content": "##### Messages status over time",
          "type": "markdown"
        },
        "44": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries counter = sum(cloud.aws.sqs.NumberOfMessagesDeleted.By.QueueName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd result = arraySum(counter)\n| summarize result = sum(result)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Messages deleted",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "result",
              "sparklineSettings": {
                "record": "counter"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1738938921835,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "result",
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
          "description": "",
          "query": "timeseries counter = sum(cloud.aws.sqs.NumberOfMessagesSent.By.QueueName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd result = arraySum(counter)\n| summarize result = sum(result)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Messages sent",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "error",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "result",
              "sparklineSettings": {
                "record": "counter"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1738938907499,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "result",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AWS_SQS_QUEUE\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AWS_SQS*\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
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
          "input": "smartscapeNodes \"AWS_SQS*\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
          "key": "Region",
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
  custom_id = "dynatrace.clouds.aws-sqs"
  # private = false
}
