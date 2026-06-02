resource "dynatrace_document" "AWS_Bedrock" {
  name      = "AWS Bedrock"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "1": {
          "h": 5,
          "w": 10,
          "x": 4,
          "y": 7
        },
        "100": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "101": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "104": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "106": {
          "h": 5,
          "w": 10,
          "x": 14,
          "y": 18
        },
        "107": {
          "h": 4,
          "w": 3,
          "x": 0,
          "y": 2
        },
        "108": {
          "h": 4,
          "w": 3,
          "x": 3,
          "y": 2
        },
        "109": {
          "h": 4,
          "w": 3,
          "x": 21,
          "y": 2
        },
        "111": {
          "h": 5,
          "w": 10,
          "x": 4,
          "y": 18
        },
        "112": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 30
        },
        "113": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 30
        },
        "114": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 30
        },
        "115": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "116": {
          "h": 4,
          "w": 15,
          "x": 6,
          "y": 2
        },
        "117": {
          "h": 5,
          "w": 10,
          "x": 14,
          "y": 7
        },
        "118": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 24
        },
        "119": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 35
        },
        "13": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "2": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 7
        },
        "3": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 18
        },
        "5": {
          "h": 5,
          "w": 10,
          "x": 14,
          "y": 24
        },
        "6": {
          "h": 5,
          "w": 10,
          "x": 4,
          "y": 24
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Amazon Bedrock\n\nGet an overview of your Amazon Bedrock usage. Compare the invocations and errors, analyze the latency and check the guardrail interventions to assess the overall utilization of your agents.",
          "type": "markdown"
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries Invocations = sum(cloud.aws.bedrock_agents.InvocationCount.By.AgentAliasArn.ModelId.Operation),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) }\n| sort arraySum(Invocations) desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Invocations",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Invocations"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "Invocations"
              ]
            },
            "legend": {
              "ratio": 22
            },
            "thresholds": []
          }
        },
        "100": {
          "content": "##### Invocations",
          "type": "markdown"
        },
        "101": {
          "content": "##### Errors and Throttles",
          "type": "markdown"
        },
        "104": {
          "content": "##### Guardrail",
          "type": "markdown"
        },
        "106": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries Latency = avg(cloud.aws.bedrock_agents.ModelLatency.By.AgentAliasArn.ModelId.Operation),\nby:{ModelId, aws.account.id, aws.region},\nfilter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) }\n| sort arrayAvg(Latency) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $Limit models per latency ",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Latency"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Milliseconds"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "ModelId"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1765985970580,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p50",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "107": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_BEDROCK_AGENT\"\n| filter {in(aws.account.id, array($AccountId)) AND\n          in(aws.region, array($Region)) }\n| summarize count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Agents ",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total invocations",
              "labelMode": "none",
              "recordField": "count",
              "sparklineSettings": {
                "isVisible": false,
                "record": "inv"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 1
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1765985970580,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalInv",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "108": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_BEDROCK_AGENTALIAS\"\n| filter {in(aws.account.id, array($AccountId)) AND\n          in(aws.region, array($Region)) }\n| summarize count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Agent Alias ",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total invocations",
              "labelMode": "none",
              "recordField": "count",
              "sparklineSettings": {
                "isVisible": false,
                "record": "inv"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 1
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1765985970580,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalInv",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "109": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_BEDROCK_GUARDRAIL\"\n| filter {in(aws.account.id, array($AccountId)) AND\n          in(aws.region, array($Region)) }\n| summarize count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Guardrails",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Total invocations",
              "labelMode": "none",
              "recordField": "count",
              "sparklineSettings": {
                "isVisible": false,
                "record": "inv"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 1
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1765985970580,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalInv",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "111": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The time it took for the server to process the request.",
          "query": "timeseries Latency = avg(cloud.aws.bedrock_agents.TotalTime.By.AgentAliasArn.ModelId.Operation),\nfilter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) }\n| sort arrayAvg(Latency) desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total Time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Latency"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Milliseconds"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1765985970580,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p50",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "112": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Successful agent invocations",
          "query": "timeseries Invocations = sum(cloud.aws.bedrock_guardrails.Invocations.By.GuardrailArn.GuardrailVersion),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) }\n| sort arraySum(Invocations) desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Invocations",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Invocations"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "legend": {
              "ratio": 22
            },
            "thresholds": []
          }
        },
        "113": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Successful agent invocations",
          "query": "timeseries Interventions = sum(cloud.aws.bedrock_guardrails.InvocationsIntervened.By.GuardrailArn.GuardrailVersion),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) }\n| sort arraySum(Interventions) desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Invocations Intervened",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Interventions"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "legend": {
              "ratio": 22
            },
            "thresholds": []
          }
        },
        "114": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Successful agent invocations",
          "query": "timeseries FindingCounts = sum(cloud.aws.bedrock_guardrails.FindingCounts.By.GuardrailArn.GuardrailVersion),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) }\n| sort arraySum(FindingCounts) desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Findings count",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "FindingCounts"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "legend": {
              "ratio": 22
            },
            "thresholds": []
          }
        },
        "115": {
          "content": "##### Latency",
          "type": "markdown"
        },
        "116": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_BEDROCK_AGENTALIAS\"\n| filter {in(aws.account.id, array($AccountId)) AND\n          in(aws.region, array($Region)) }\n| parse aws.object, \"JSON:json\"\n| fields agentId = json[configuration][agentId]\n| filter isNotNull(agentId)\n| summarize  count=count(), by: {agentId}\n| sort count desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Agent Alias per Agent",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "layout": "vertical"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1765985970580,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalInv",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "117": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries Invocations = sum(cloud.aws.bedrock_agents.InvocationCount.By.AgentAliasArn.ModelId.Operation),\n            by: {ModelId, aws.account.id, aws.region},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) }\n| sort arraySum(Invocations) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top $Limit models per invocations",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "ModelId"
              ]
            },
            "thresholds": []
          }
        },
        "118": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The time it took for the server to process the request.",
          "query": "timeseries {ClientErrors = sum(cloud.aws.bedrock_agents.InvocationClientErrors.By.AgentAliasArn.ModelId.Operation),\n            ServerErrors = sum(cloud.aws.bedrock_agents.InvocationServerErrors.By.AgentAliasArn.ModelId.Operation)},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) },\n            union:true\n| fieldsAdd TotalErrors = arraySum(ClientErrors) + arraySum(ServerErrors)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total errors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
            "thresholds": [
              {
                "field": "TotalErrors",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 1
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1766067130906,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "TotalErrors",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "119": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries {InputTokens = sum(cloud.aws.bedrock_agents.InputTokenCount.By.AgentAliasArn.ModelId.Operation),\n            OutputTokens = sum(cloud.aws.bedrock_agents.OutputTokenCount.By.AgentAliasArn.ModelId.Operation)},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) },\n            union:true\n| sort arraySum(InputTokens) + arraySum(OutputTokens) desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Input token vs Output token count",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
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
          "description": "",
          "query": "timeseries inv = sum(cloud.aws.bedrock_agents.InvocationCount.By.AgentAliasArn.ModelId.Operation),\nfilter: in(aws.account.id, array($AccountId)) AND\n        in(aws.region, array($Region))\n| fieldsAdd totalInv = arraySum(inv)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total invocations",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Total invocations",
              "labelMode": "none",
              "recordField": "totalInv",
              "sparklineSettings": {
                "isVisible": false,
                "record": "inv"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1765985970580,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalInv",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The time it took for the server to process the request.",
          "query": "timeseries Time = avg(cloud.aws.bedrock_agents.TotalTime.By.AgentAliasArn.ModelId.Operation),\nfilter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) }\n| fieldsAdd AvgTime = arrayAvg(Time)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average Total Time",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1766065078797,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "AvgTime",
                "suffix": "",
                "unitCategory": "time"
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
          "description": "Agent throttles",
          "query": "timeseries Throttles = sum(cloud.aws.bedrock_agents.InvocationThrottles.By.AgentAliasArn.ModelId.Operation),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) }\n| sort arraySum(Throttles) desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Invocation Throttles",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Throttles"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
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
          "description": "",
          "query": "timeseries {ClientErrors = sum(cloud.aws.bedrock_agents.InvocationClientErrors.By.AgentAliasArn.ModelId.Operation),\n            ServerErrors = sum(cloud.aws.bedrock_agents.InvocationServerErrors.By.AgentAliasArn.ModelId.Operation)},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) },\n            union:true\n| fieldsAdd TotalErrors = arraySum(ClientErrors) + arraySum(ServerErrors)\n| sort TotalErrors desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Client vs Server errors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AWS_BEDROCK*\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
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
          "input": "smartscapeNodes \"AWS_BEDROCK*\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
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
      "version": 26
    })
  custom_id = "dynatrace.clouds.aws-bedrock"
  # private = false
}
