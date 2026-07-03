resource "dynatrace_document" "AWS_Lambda" {
  name      = "AWS Lambda"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "18": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "19": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "24": {
          "h": 6,
          "w": 15,
          "x": 0,
          "y": 7
        },
        "3": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "39": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 7
        },
        "48": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "49": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 3
        },
        "50": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "51": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "6": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "68": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "69": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "70": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "71": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "8": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 19
        }
      },
      "settings": {},
      "tiles": {
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The amount of time that function code spends processing an event - does not include cold start time.",
          "query": "timeseries x=avg(cloud.aws.lambda.Duration.By.FunctionName),\n            by: {FunctionName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Duration",
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
                "label": "Seconds"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "FunctionName"
              ]
            },
            "legend": {
              "ratio": 21
            },
            "unitsOverrides": [
              {
                "added": 1736424704279,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "second",
                "identifier": "x",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "19": {
          "content": "### AWS Lambda\n\n This dashboard allows you to monitor and examine performance, health and reliability of your lambda functions.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"functions\",\"dt.smartscape.aws_lambda_function\":\"$SmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Time series of invocations that result in a function error.",
          "query": "timeseries errorCount = sum(cloud.aws.lambda.Errors.By.FunctionName),\n            by: {FunctionName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(errorCount) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "errorCount"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Count"
              },
              "pointsDisplay": "never",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
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
                "FunctionName",
                "dt.smartscape_source.id"
              ]
            },
            "legend": {
              "ratio": 24
            }
          }
        },
        "3": {
          "content": "##### Errors",
          "type": "markdown"
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The invocations count in comparison to the invocation that resulted in an error.",
          "query": "timeseries {errorCount = sum(cloud.aws.lambda.Errors.By.FunctionName),\n            Invocations = sum(cloud.aws.lambda.Invocations.By.FunctionName)},\n            by: {FunctionName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd Invocations = arraySum(Invocations)\n| fieldsAdd ErrorCount = arraySum(errorCount)\n| sort (Invocations+ErrorCount) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Function invocations and error count",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "FunctionName"
                ],
                "categoryAxisLabel": "FunctionName",
                "groupMode": "grouped",
                "valueAxis": [
                  "Invocations",
                  "ErrorCount"
                ],
                "valueAxisLabel": "Invocations,ErrorCount"
              },
              "categoryOverrides": {
                "ErrorCount": {
                  "added": 1738249688643,
                  "color": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  }
                },
                "Invocations": {
                  "added": 1738249683512,
                  "color": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  }
                }
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "Invocations",
                  "value": null
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "ErrorCount",
                  "value": null
                }
              ]
            },
            "legend": {
              "ratio": 17
            },
            "unitsOverrides": []
          }
        },
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage value of invocations that resolved in errors for every Lambda function that fits filtering.",
          "query": "timeseries {\n    errorsCount = sum(cloud.aws.lambda.Errors.By.FunctionName, default: 0),\n    invocationsCount = sum(cloud.aws.lambda.Invocations.By.FunctionName, default: 0)\n},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))\n}\n| fieldsAdd errorsTotal = arraySum(errorsCount)\n| fieldsAdd invocationsTotal = arraySum(invocationsCount)\n| fieldsAdd errorRate = if(invocationsTotal == 0, 0, else: (errorsTotal / invocationsTotal) * 100)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors %",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "errorRate",
                  "value": 5
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "errorRate",
                  "value": 15
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≤",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "errorRate",
                  "value": 5
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Errors",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "errorRate",
              "sparklineSettings": {
                "isVisible": false,
                "record": "errorRate"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1736507560282,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "errorRate",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "49": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage value of execution of Lambda functions to that were limiting to prevent overwhelming the function.",
          "query": "timeseries {\n    throttles = sum(cloud.aws.lambda.Throttles.By.FunctionName)\n},\nfilter: {\n    in(aws.account.id, array($AccountId)) AND\n    in(aws.region, array($Region)) AND\n    in(\n        dt.smartscape_source.id,\n        iCollectArray(toSmartscapeId(array($SmartscapeId)[]))\n    )\n}\n| fieldsAdd throttlesTotal = if(\n    isNull(throttles) OR arraySize(throttles) == 0,\n    0,\n    else: arraySum(throttles)\n)\n| fieldsKeep throttlesTotal",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Throttles",
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
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "throttlesTotal",
                  "type": "double",
                  "value": null
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "throttlesTotal",
                  "type": "double",
                  "value": null
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Throttles",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "throttlesTotal",
              "sparklineSettings": {
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1763629852905,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1763629968212,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "throttlesCount",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Count of invocations that resolved in errors for every Lambda function that fits filtering.",
          "query": "timeseries errors=sum(cloud.aws.lambda.Errors.By.FunctionName),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                     in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd errorsCount = arraySum(errors)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors",
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
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "errorsCount",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total error count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "errorsCount",
              "sparklineSettings": {
                "isVisible": false,
                "record": "errors"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1737042539397,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "errorsCount",
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
            },
            "enabled": false
          },
          "description": "Total number of invocations for every Lambda function that fits filtering.",
          "query": "timeseries invocations=sum(cloud.aws.lambda.Invocations.By.FunctionName),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd invocationsSum = arraySum(invocations)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Invocations",
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
                  "field": "invocationsSum",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total invocations count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "invocationsSum",
              "sparklineSettings": {
                "isVisible": false,
                "record": "invocations"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1737043812560,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "invocationsSum",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "6": {
          "content": "##### Usage and performance",
          "type": "markdown"
        },
        "68": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of asynchronous events that were dropped without being successfully processed.",
          "query": "timeseries x = sum(cloud.aws.lambda.AsyncEventsDropped.By.FunctionName),\n            by: {FunctionName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                     in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Async events dropped",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "69": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of invocation requests that were throttled because the concurrency limit was exceeded.",
          "query": "timeseries x = sum(cloud.aws.lambda.Throttles.By.FunctionName.Resource),\n            by: {FunctionName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Throttles",
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
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eca440)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 1,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "FunctionName"
              ]
            },
            "legend": {
              "ratio": 21
            }
          }
        },
        "70": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The time spent by Lambda Extensions to complete final tasks, after your function's code has finished executing.",
          "query": "timeseries x = avg(cloud.aws.lambda.PostRuntimeExtensionsDuration.By.FunctionName),\n            by: {FunctionName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Post runtime extensions duration",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "71": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of function instances that are actively processing events at given time.",
          "query": "timeseries x = avg(cloud.aws.lambda.ConcurrentExecutions.By.FunctionName),\n            by: {FunctionName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Concurrent executions",
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
                "label": "Count"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "FunctionName"
              ]
            },
            "legend": {
              "ratio": 22
            }
          }
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AWS_LAMBDA_FUNCTION\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AWS_LAMBDA*\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
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
          "input": "smartscapeNodes \"AWS_LAMBDA*\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
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
  custom_id = "dynatrace.clouds.aws-lambda"
  # private = false
}
