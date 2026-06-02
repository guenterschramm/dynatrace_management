resource "dynatrace_document" "AWS_EventBridge" {
  name      = "AWS EventBridge"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "1": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "10": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 14
        },
        "11": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 14
        },
        "12": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "13": {
          "h": 6,
          "w": 16,
          "x": 8,
          "y": 3
        },
        "14": {
          "h": 3,
          "w": 8,
          "x": 0,
          "y": 6
        },
        "15": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "4": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "5": {
          "h": 3,
          "w": 8,
          "x": 0,
          "y": 3
        },
        "6": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "9": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 14
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### AWS EventBridge\n\nMonitor the performance, health, and reliability of your EventBridge with this dashboard. Keep an eye on invocations, events, and rules to ensure smooth operations. Look for details on throttled rules and latency to identify potential bottlenecks or delays.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"queue\",\"dt.smartscape.aws_events_eventbus\":\"$SmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "1": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2025-05-15T11:31:06.409Z",
                      "startTime": "2025-05-15T11:01:06.409Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries max = avg(cloud.aws.ec2.CPUUtilization.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{matchesValue(aws.account.id, \"908047316593\") AND\n                    matchesValue(aws.region, \"us-east-1\",\"us-east-2\",\"us-west-1\",\"us-west-2\") AND\n                    matchesValue(dt.smartscape_source.id, \"all\") OR\n                      matchesValue(\"all\", \"ALL\")}",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1044402726",
                "1079957002",
                "831849841",
                "1947935840",
                "-621189353",
                "-1408281792",
                "-1551481493",
                "2145921024",
                "1962387537",
                "-1078488342",
                "361812326",
                "-1256293089",
                "-1342281836",
                "-1419714849",
                "480521989",
                "957562061",
                "-1371955628",
                "-1564924322",
                "-1443363097",
                "1795585292",
                "-1592466717",
                "297184300",
                "-112328561",
                "1697953543",
                "1259657994",
                "96278487",
                "-1650099376"
              ]
            },
            "enabled": false
          },
          "description": "The time to process events, measured from when an event is ingested by EventBridge to the first invocation of a target.",
          "query": "timeseries x = avg(cloud.aws.events.IngestionToInvocationStartLatency.By.EventBusName.RuleName),\n           by: {dt.smartscape.aws_events_eventbus, EventBusName},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingestion to invocation start latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Percentage"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "EventBusName"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745584461256,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "10": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2025-05-15T11:31:06.409Z",
                      "startTime": "2025-05-15T11:01:06.409Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries max = avg(cloud.aws.ec2.CPUUtilization.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{matchesValue(aws.account.id, \"908047316593\") AND\n                    matchesValue(aws.region, \"us-east-1\",\"us-east-2\",\"us-west-1\",\"us-west-2\") AND\n                    matchesValue(dt.smartscape_source.id, \"all\") OR\n                      matchesValue(\"all\", \"ALL\")}",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1044402726",
                "1079957002",
                "831849841",
                "1947935840",
                "-621189353",
                "-1408281792",
                "-1551481493",
                "2145921024",
                "1962387537",
                "-1078488342",
                "361812326",
                "-1256293089",
                "-1342281836",
                "-1419714849",
                "480521989",
                "957562061",
                "-1371955628",
                "-1564924322",
                "-1443363097",
                "1795585292",
                "-1592466717",
                "297184300",
                "-112328561",
                "1697953543",
                "1259657994",
                "96278487",
                "-1650099376"
              ]
            },
            "enabled": false
          },
          "description": "The number of rules that have run and matched with any event.",
          "query": "timeseries x = sum(cloud.aws.events.TriggeredRules.By.EventBusName.RuleName),\n           by: {dt.smartscape.aws_events_eventbus, EventBusName, RuleName},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd y = arraySum(x)\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Triggered rules",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "EventBusName",
                  "RuleName"
                ]
              },
              "circleChartSettings": {
                "showTotalValue": true
              },
              "legend": {
                "hidden": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1745584461256,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "11": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2025-05-15T11:31:06.409Z",
                      "startTime": "2025-05-15T11:01:06.409Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries max = avg(cloud.aws.ec2.CPUUtilization.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{matchesValue(aws.account.id, \"908047316593\") AND\n                    matchesValue(aws.region, \"us-east-1\",\"us-east-2\",\"us-west-1\",\"us-west-2\") AND\n                    matchesValue(dt.smartscape_source.id, \"all\") OR\n                      matchesValue(\"all\", \"ALL\")}",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1044402726",
                "1079957002",
                "831849841",
                "1947935840",
                "-621189353",
                "-1408281792",
                "-1551481493",
                "2145921024",
                "1962387537",
                "-1078488342",
                "361812326",
                "-1256293089",
                "-1342281836",
                "-1419714849",
                "480521989",
                "957562061",
                "-1371955628",
                "-1564924322",
                "-1443363097",
                "1795585292",
                "-1592466717",
                "297184300",
                "-112328561",
                "1697953543",
                "1259657994",
                "96278487",
                "-1650099376"
              ]
            },
            "enabled": false
          },
          "description": "The number of times rule execution was throttled.",
          "query": "timeseries x = sum(cloud.aws.events.ThrottledRules.By.EventBusName.RuleName),\n           by: {dt.smartscape.aws_events_eventbus, EventBusName, RuleName},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd y = arraySum(x)\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Throttled rules",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "y"
                ]
              },
              "circleChartSettings": {
                "showTotalValue": true
              },
              "legend": {
                "hidden": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1745584461256,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "12": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2025-05-15T11:31:06.409Z",
                      "startTime": "2025-05-15T11:01:06.409Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries max = avg(cloud.aws.ec2.CPUUtilization.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{matchesValue(aws.account.id, \"908047316593\") AND\n                    matchesValue(aws.region, \"us-east-1\",\"us-east-2\",\"us-west-1\",\"us-west-2\") AND\n                    matchesValue(dt.smartscape_source.id, \"all\") OR\n                      matchesValue(\"all\", \"ALL\")}",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1044402726",
                "1079957002",
                "831849841",
                "1947935840",
                "-621189353",
                "-1408281792",
                "-1551481493",
                "2145921024",
                "1962387537",
                "-1078488342",
                "361812326",
                "-1256293089",
                "-1342281836",
                "-1419714849",
                "480521989",
                "957562061",
                "-1371955628",
                "-1564924322",
                "-1443363097",
                "1795585292",
                "-1592466717",
                "297184300",
                "-112328561",
                "1697953543",
                "1259657994",
                "96278487",
                "-1650099376"
              ]
            },
            "enabled": false
          },
          "description": "\t\nThe time taken from event ingestion to completion of the first invocation attempt.",
          "query": "timeseries x = avg(cloud.aws.events.IngestionToInvocationCompleteLatency.By.EventBusName.RuleName),\n           by: {dt.smartscape.aws_events_eventbus, EventBusName},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingestion to invocation complete latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Percentage"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "EventBusName"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745584461256,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Number of times each target EventBus was successfully invoked.",
          "query": "timeseries {x = sum(cloud.aws.events.InvocationAttempts.By.EventBusName.RuleName),\n            y = sum(cloud.aws.events.SuccessfulInvocationAttempts.By.EventBusName.RuleName, default: 0)},\n            by: {dt.smartscape.aws_events_eventbus, EventBusName},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd failed = arraySum(x) - arraySum(y)\n| fieldsAdd successful = arraySum(y)\n\n| sort successful desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "invocation attempts",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "EventBusName"
                ]
              }
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "vulnerability-status-inverted",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            }
          }
        },
        "14": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2025-05-15T11:31:06.409Z",
                      "startTime": "2025-05-15T11:01:06.409Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries max = avg(cloud.aws.ec2.CPUUtilization.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{matchesValue(aws.account.id, \"908047316593\") AND\n                    matchesValue(aws.region, \"us-east-1\",\"us-east-2\",\"us-west-1\",\"us-west-2\") AND\n                    matchesValue(dt.smartscape_source.id, \"all\") OR\n                      matchesValue(\"all\", \"ALL\")}",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1044402726",
                "1079957002",
                "831849841",
                "1947935840",
                "-621189353",
                "-1408281792",
                "-1551481493",
                "2145921024",
                "1962387537",
                "-1078488342",
                "361812326",
                "-1256293089",
                "-1342281836",
                "-1419714849",
                "480521989",
                "957562061",
                "-1371955628",
                "-1564924322",
                "-1443363097",
                "1795585292",
                "-1592466717",
                "297184300",
                "-112328561",
                "1697953543",
                "1259657994",
                "96278487",
                "-1650099376"
              ]
            },
            "enabled": false
          },
          "description": "A percentage of times target was successfully invoked.",
          "query": "timeseries {x = sum(cloud.aws.events.InvocationAttempts.By.EventBusName.RuleName),\n            y = sum(cloud.aws.events.SuccessfulInvocationAttempts.By.EventBusName.RuleName)},\n            nonempty:true,\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n\n| fieldsAdd healthy = arraySum(y) / arraySum(x) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Successful invocation attempts",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≤",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "healthy",
                  "value": 100
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≤",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "healthy",
                  "value": 50
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≤",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "healthy",
                  "value": 20
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1745584461256,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "healthy",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "15": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2025-05-15T11:31:06.409Z",
                      "startTime": "2025-05-15T11:01:06.409Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries max = avg(cloud.aws.ec2.CPUUtilization.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{matchesValue(aws.account.id, \"908047316593\") AND\n                    matchesValue(aws.region, \"us-east-1\",\"us-east-2\",\"us-west-1\",\"us-west-2\") AND\n                    matchesValue(dt.smartscape_source.id, \"all\") OR\n                      matchesValue(\"all\", \"ALL\")}",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1044402726",
                "1079957002",
                "831849841",
                "1947935840",
                "-621189353",
                "-1408281792",
                "-1551481493",
                "2145921024",
                "1962387537",
                "-1078488342",
                "361812326",
                "-1256293089",
                "-1342281836",
                "-1419714849",
                "480521989",
                "957562061",
                "-1371955628",
                "-1564924322",
                "-1443363097",
                "1795585292",
                "-1592466717",
                "297184300",
                "-112328561",
                "1697953543",
                "1259657994",
                "96278487",
                "-1650099376"
              ]
            },
            "enabled": false
          },
          "description": "Number of times EventBridge attempted invoking a target.",
          "query": "timeseries x = sum(cloud.aws.events.InvocationAttempts.By.EventBusName.RuleName),\n           by: {dt.smartscape.aws_events_eventbus, EventBusName, RuleName},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Invocation attempts",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "dataMapping": {
              "displayedFields": [
                "EventBusName",
                "RuleName"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745584461256,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "max",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "5": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2025-05-15T11:31:06.409Z",
                      "startTime": "2025-05-15T11:01:06.409Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries max = avg(cloud.aws.ec2.CPUUtilization.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{matchesValue(aws.account.id, \"908047316593\") AND\n                    matchesValue(aws.region, \"us-east-1\",\"us-east-2\",\"us-west-1\",\"us-west-2\") AND\n                    matchesValue(dt.smartscape_source.id, \"all\") OR\n                      matchesValue(\"all\", \"ALL\")}",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1044402726",
                "1079957002",
                "831849841",
                "1947935840",
                "-621189353",
                "-1408281792",
                "-1551481493",
                "2145921024",
                "1962387537",
                "-1078488342",
                "361812326",
                "-1256293089",
                "-1342281836",
                "-1419714849",
                "480521989",
                "957562061",
                "-1371955628",
                "-1564924322",
                "-1443363097",
                "1795585292",
                "-1592466717",
                "297184300",
                "-112328561",
                "1697953543",
                "1259657994",
                "96278487",
                "-1650099376"
              ]
            },
            "enabled": false
          },
          "description": "Number of all active event buses in the environment.",
          "query": "smartscapeNodes \"AWS_EVENTS_EVENTBUS\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($SmartscapeId))\n| summarize count=countDistinct(id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active EventBridge instances",
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
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1745584461256,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "healthy",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "6": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2025-05-15T11:31:06.409Z",
                      "startTime": "2025-05-15T11:01:06.409Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries max = avg(cloud.aws.ec2.CPUUtilization.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{matchesValue(aws.account.id, \"908047316593\") AND\n                    matchesValue(aws.region, \"us-east-1\",\"us-east-2\",\"us-west-1\",\"us-west-2\") AND\n                    matchesValue(dt.smartscape_source.id, \"all\") OR\n                      matchesValue(\"all\", \"ALL\")}",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1044402726",
                "1079957002",
                "831849841",
                "1947935840",
                "-621189353",
                "-1408281792",
                "-1551481493",
                "2145921024",
                "1962387537",
                "-1078488342",
                "361812326",
                "-1256293089",
                "-1342281836",
                "-1419714849",
                "480521989",
                "957562061",
                "-1371955628",
                "-1564924322",
                "-1443363097",
                "1795585292",
                "-1592466717",
                "297184300",
                "-112328561",
                "1697953543",
                "1259657994",
                "96278487",
                "-1650099376"
              ]
            },
            "enabled": false
          },
          "description": "The time taken from event ingestion to successful target delivery, using the invocation end time as cutoff.",
          "query": "timeseries x = avg(cloud.aws.events.IngestionToInvocationSuccessLatency.By.EventBusName.RuleName),\n           by: {dt.smartscape.aws_events_eventbus, EventBusName},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingestion to invocation success latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Percentage"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "EventBusName"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745584461256,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "9": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2025-05-15T11:31:06.409Z",
                      "startTime": "2025-05-15T11:01:06.409Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries max = avg(cloud.aws.ec2.CPUUtilization.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{matchesValue(aws.account.id, \"908047316593\") AND\n                    matchesValue(aws.region, \"us-east-1\",\"us-east-2\",\"us-west-1\",\"us-west-2\") AND\n                    matchesValue(dt.smartscape_source.id, \"all\") OR\n                      matchesValue(\"all\", \"ALL\")}",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1044402726",
                "1079957002",
                "831849841",
                "1947935840",
                "-621189353",
                "-1408281792",
                "-1551481493",
                "2145921024",
                "1962387537",
                "-1078488342",
                "361812326",
                "-1256293089",
                "-1342281836",
                "-1419714849",
                "480521989",
                "957562061",
                "-1371955628",
                "-1564924322",
                "-1443363097",
                "1795585292",
                "-1592466717",
                "297184300",
                "-112328561",
                "1697953543",
                "1259657994",
                "96278487",
                "-1650099376"
              ]
            },
            "enabled": false
          },
          "description": "The number of events that matched with any rule.",
          "query": "timeseries x = sum(cloud.aws.events.MatchedEvents.By.EventBusName.RuleName),\n           by: {dt.smartscape.aws_events_eventbus, EventBusName, RuleName},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd y = arraySum(x)\n| sort arraySum(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Matched events",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "RuleName",
                  "EventBusName"
                ]
              },
              "circleChartSettings": {
                "showTotalValue": true
              },
              "legend": {
                "hidden": true
              }
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
                    "Default": "var(--dt-colors-charts-apdex-good-default, #1c520a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "successful"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "failed"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745584461256,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
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
          "input": "smartscapeNodes \"AWS_EVENTS_EVENTBUS\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AWS_EVENTS_EVENTBUS\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
          "key": "AccountId",
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
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AWS_EVENTS_EVENTBUS\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
          "key": "Region",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.clouds.aws-eventbridge"
  # private = false
}
