resource "dynatrace_document" "AWS_API" {
  name      = "AWS API"
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
        "10": {
          "h": 3,
          "w": 3,
          "x": 0,
          "y": 11
        },
        "14": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 14
        },
        "18": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 14
        },
        "23": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 2
        },
        "24": {
          "h": 6,
          "w": 18,
          "x": 6,
          "y": 8
        },
        "26": {
          "h": 2,
          "w": 3,
          "x": 0,
          "y": 31
        },
        "27": {
          "h": 2,
          "w": 3,
          "x": 3,
          "y": 31
        },
        "31": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "33": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 2
        },
        "34": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "37": {
          "h": 6,
          "w": 18,
          "x": 6,
          "y": 27
        },
        "39": {
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 27
        },
        "40": {
          "h": 2,
          "w": 3,
          "x": 3,
          "y": 29
        },
        "41": {
          "h": 2,
          "w": 3,
          "x": 0,
          "y": 29
        },
        "44": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 33
        },
        "46": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 33
        },
        "49": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "51": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "52": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 38
        },
        "53": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 5
        },
        "8": {
          "h": 3,
          "w": 3,
          "x": 3,
          "y": 11
        },
        "9": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 8
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "## AWS API Gateway\nQuickly check high error rates for HTTP and REST API Gateways. Further on, check more details on error numbers and latencies on the APIs to spot anomalies.\n\n---",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.apigateway.4xx.By.ApiId.Stage),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewaySmartscapeId)[])))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)\n| summarize x = sum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "4xx errors",
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
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "x",
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
                "added": 1739893047156,
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
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The time between when API Gateway relays a request to the backend and when it receives a response from the backend.",
          "query": "timeseries x=avg(cloud.aws.apigateway.IntegrationLatency.By.ApiId.Stage),\n           by: {ApiId, Stage, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewaySmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Integration latency",
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
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "ApiId",
                "Stage"
              ]
            },
            "legend": {
              "ratio": 15
            },
            "unitsOverrides": [
              {
                "added": 1745833808334,
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
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The time between when API Gateway receives a request from a client and when it returns a response to the client. The latency includes the integration latency and other API Gateway overhead.",
          "query": "timeseries x=avg(cloud.aws.apigateway.Latency.By.ApiId.Stage),\n           by: {ApiId, Stage, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewaySmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Latency",
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
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "ApiId",
                "Stage"
              ]
            },
            "legend": {
              "ratio": 15
            },
            "unitsOverrides": [
              {
                "added": 1745833874692,
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
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries error1=sum(cloud.aws.apigateway.4xx.By.ApiId.Stage),\n           error2=sum(cloud.aws.apigateway.5xx.By.ApiId.Stage),\n           count=sum(cloud.aws.apigateway.Count.By.ApiId.Stage),\n           by: {aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewaySmartscapeId)[])))},\n           nonempty:true,\n           union: true\n| fieldsAdd errors = arraySum(error1) + arraySum(error2)\n| fieldsAdd count = arraySum(count)\n| fieldsAdd errorPercentage = errors / count * 100\n| summarize errorPercentage = avg(errorPercentage)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP APIs error rate",
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
                  "field": "errorPercentage",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "errorPercentage",
                  "value": 5
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "errorPercentage",
                  "value": 15
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "resutl",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "errorPercentage",
              "sparklineSettings": {
                "record": "errors"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1740140938443,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "errorPercentage",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries {error1=sum(cloud.aws.apigateway.4xx.By.ApiId.Stage),\n           error2=sum(cloud.aws.apigateway.5xx.By.ApiId.Stage),\n           Count=sum(cloud.aws.apigateway.Count.By.ApiId.Stage)},\n           by: {ApiId, Stage},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewaySmartscapeId)[])))},\n           union:true\n| fieldsAdd Error = arraySum(error1) + arraySum(error2)\n| fieldsAdd Success = arraySum(Count) - Error\n| sort Error desc, Success desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors by API/stage",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "ApiId",
                  "Stage"
                ],
                "categoryAxisLabel": "ApiId,Stage",
                "groupMode": "grouped",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Error",
                  "Success"
                ],
                "valueAxisLabel": "Error,Success"
              },
              "categoryOverrides": {
                "Error": {
                  "added": 1740141584014,
                  "color": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #ae132d)"
                  }
                },
                "Success": {
                  "added": 1740141449156,
                  "color": {
                    "Default": "var(--dt-colors-charts-status-success-default, #1c520a)"
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
                    "Default": "var(--dt-colors-charts-status-success-default, #1c520a)"
                  },
                  "field": "Success",
                  "value": null
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #ae132d)"
                  },
                  "field": "Error",
                  "value": null
                }
              ]
            },
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": [
              {
                "added": 1745837775317,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Error",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.apigateway.CacheHitCount.By.ApiName.Stage),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewayRestSmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arraySum(x)\n| summarize x = sum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cache hits",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
                "added": 1739893047156,
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
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.apigateway.CacheMissCount.By.ApiName.Stage),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewayRestSmartscapeId)[])))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)\n| summarize x = sum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cache misses",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
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
                "added": 1739893047156,
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
        "31": {
          "content": "### HTTP APIs\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"network\",\"dt.smartscape.aws_apigatewayv2_api\":\"$ApiGatewaySmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries error1=sum(cloud.aws.apigateway.4XXError.By.ApiName.Stage),\n           error2=sum(cloud.aws.apigateway.5XXError.By.ApiName.Stage),\n           count=sum(cloud.aws.apigateway.Count.By.ApiName.Stage),\n           by: {aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewayRestSmartscapeId)[])))},\n           nonempty:true,\n           union: true\n| fieldsAdd errors = arraySum(error1) + arraySum(error2)\n| fieldsAdd count = arraySum(count)\n| fieldsAdd errorPercentage = errors / count * 100\n| summarize errorPercentage = avg(errorPercentage)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "REST APIs error rate",
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
                  "field": "errorPercentage",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "errorPercentage",
                  "value": 5
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "errorPercentage",
                  "value": 15
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "resutl",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "errorPercentage",
              "sparklineSettings": {
                "record": "errors"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1740140938443,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "errorPercentage",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "timeseries x=avg(cloud.aws.apigateway.DataProcessed.By.ApiId.Stage),\n           by: {ApiId, Stage, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewaySmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Data processed",
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
                "label": "Bytes"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "ApiId",
                "Stage"
              ]
            },
            "legend": {
              "ratio": 15
            },
            "unitsOverrides": [
              {
                "added": 1745834033111,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries error1=sum(cloud.aws.apigateway.4XXError.By.ApiName.Stage),\n           error2=sum(cloud.aws.apigateway.5XXError.By.ApiName.Stage),\n           Count=sum(cloud.aws.apigateway.Count.By.ApiName.Stage),\n           by: {ApiName, Stage, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewayRestSmartscapeId)[])))},\n           union:true\n\n| fieldsAdd Error = arraySum(error1) + arraySum(error2)\n| fieldsAdd Success = arraySum(Count) - Error\n| sort Error desc, Success desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors by API/stage",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "ApiName",
                  "Stage"
                ],
                "categoryAxisLabel": "ApiName,Stage,aws.account.id,aws.region,dt.smartscape_source.id",
                "groupMode": "grouped",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Error",
                  "Success"
                ],
                "valueAxisLabel": "Error,Success"
              },
              "categoryOverrides": {
                "Error": {
                  "added": 1740141584014,
                  "color": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #ae132d)"
                  }
                },
                "Success": {
                  "added": 1740141449156,
                  "color": {
                    "Default": "var(--dt-colors-charts-status-success-default, #1c520a)"
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
                    "Default": "var(--dt-colors-charts-status-success-default, #1c520a)"
                  },
                  "field": "Success",
                  "value": null
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #ae132d)"
                  },
                  "field": "Error",
                  "value": null
                }
              ]
            },
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": []
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
          "query": "timeseries x=sum(cloud.aws.apigateway.Count.By.ApiName.Stage),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewayRestSmartscapeId)[])))},\n           nonempty:true\n\n| fieldsAdd y = arraySum(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "API requests",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "error",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "y",
              "sparklineSettings": {
                "record": "x"
              },
              "trend": {
                "isVisible": false,
                "trendField": "y"
              }
            },
            "unitsOverrides": [
              {
                "added": 1740130054839,
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
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.apigateway.5XXError.By.ApiName.Stage),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewayRestSmartscapeId)[])))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)\n| summarize x = sum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx errors",
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
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "x",
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
                "added": 1739893047156,
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
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.apigateway.4XXError.By.ApiName.Stage),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewayRestSmartscapeId)[])))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)\n| summarize x = sum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "4xx errors",
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
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "x",
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
                "added": 1739893047156,
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
        "44": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The time between when API Gateway relays a request to the backend and when it receives a response from the backend.",
          "query": "timeseries x=avg(cloud.aws.apigateway.IntegrationLatency.By.ApiName.Stage),\n           by: {ApiName, Stage, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewayRestSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Integration latency",
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
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "ApiName",
                "Stage"
              ]
            },
            "legend": {
              "ratio": 15
            },
            "unitsOverrides": [
              {
                "added": 1750153509203,
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
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The time between when API Gateway receives a request from a client and when it returns a response to the client. The latency includes the integration latency and other API Gateway overhead.",
          "query": "timeseries x=avg(cloud.aws.apigateway.Latency.By.ApiName.Stage),\n           by: {ApiName, Stage, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewayRestSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Latency",
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
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "ApiName",
                "Stage"
              ]
            },
            "legend": {
              "ratio": 15
            },
            "unitsOverrides": [
              {
                "added": 1750153535478,
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
        "49": {
          "content": "### REST APIs\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"network\",\"dt.smartscape.aws_apigateway_restapi\":\"$ApiGatewayRestSmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "51": {
          "content": "",
          "type": "markdown"
        },
        "52": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "53": {
          "content": "",
          "type": "markdown"
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.apigateway.5xx.By.ApiId.Stage),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewaySmartscapeId)[])))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)\n| summarize x = sum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx errors",
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
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "x",
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
                "added": 1739893047156,
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
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.apigateway.Count.By.ApiId.Stage),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ApiGatewaySmartscapeId)[])))},\n           nonempty:true\n\n| fieldsAdd y = arraySum(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "API requests",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "error",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "y",
              "sparklineSettings": {
                "record": "x"
              },
              "trend": {
                "isVisible": false,
                "trendField": "y"
              }
            },
            "unitsOverrides": [
              {
                "added": 1740130054839,
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
          "input": "smartscapeNodes \"AWS_APIGATEWAYV2_API\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
          "key": "ApiGatewaySmartscapeId",
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
          "input": "smartscapeNodes \"AWS_APIGATEWAY_RESTAPI\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
          "key": "ApiGatewayRestSmartscapeId",
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
          "input": "smartscapeNodes \"AWS_APIGATEWAY*\"\n| sort aws.account.id asc\n| summarize collectDistinct(aws.account.id)",
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
          "input": "smartscapeNodes \"AWS_APIGATEWAY*\"\n| sort aws.region asc\n| summarize collectDistinct(aws.region)",
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
  custom_id = "dynatrace.clouds.aws-api-gateway"
  # private = false
}
