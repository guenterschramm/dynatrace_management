resource "dynatrace_document" "AWS_Edge_Networking" {
  name      = "AWS Edge Networking"
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
        "11": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 7
        },
        "12": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "18": {
          "h": 6,
          "w": 6,
          "x": 12,
          "y": 3
        },
        "2": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 5
        },
        "24": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "26": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "27": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 10
        },
        "28": {
          "h": 5,
          "w": 20,
          "x": 4,
          "y": 18
        },
        "3": {
          "h": 5,
          "w": 20,
          "x": 4,
          "y": 32
        },
        "32": {
          "h": 6,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "34": {
          "h": 5,
          "w": 20,
          "x": 4,
          "y": 13
        },
        "35": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 23
        },
        "36": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 23
        },
        "37": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 13
        },
        "38": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 18
        },
        "39": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 32
        },
        "4": {
          "h": 6,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "40": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 37
        },
        "41": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 42
        },
        "6": {
          "h": 5,
          "w": 20,
          "x": 4,
          "y": 37
        },
        "8": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### AWS Edge Networking\n\nOverview of your CloudFront and Route 53 services. Check the health of your resources to quickly identify anomalies. A high percentage of CloudFront distributions error rate or Route 53 healthchecks indicate potential problems.\n\n**Note:** CloudFront and Route 53 are global services.\n\n---",
          "type": "markdown"
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_ROUTE53_HOSTEDZONE\"\n| filter in(aws.account.id, array($AccountId))\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Route 53 hosted zones",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "HealthChecks",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count()",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "12": {
          "content": "### Route 53 Health Checks\n\nCompare the responding times across your Route 53 healthchecks. Look for high peaks above average levels to identify potential problems.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"network\",\"dt.smartscape.aws_route53_healthcheck\":\"$Route53SmartscapeId\"}).\n\n---\n",
          "type": "markdown"
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = sum(cloud.aws.route53.DNSQueries.By.HostedZoneId),\n            by: {HostedZoneId, aws.account.id, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId))}\n| fieldsAdd z = arraySum(x)\n| sort z desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DNS queries per hosted zone",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "HostedZoneId,aws.account.id,dt.smartscape_source.id",
                "valueAxisLabel": "z"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            },
            "legend": {
              "ratio": 27
            }
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
          "query": "smartscapeNodes \"AWS_ROUTE53_HEALTHCHECK\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(toString(id), array($Route53SmartscapeId))\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Route 53 health checks",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "HealthChecks",
              "labelMode": "none",
              "prefixIcon": "CheckmarkIcon",
              "recordField": "count()",
              "trend": {
                "isVisible": true
              }
            }
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
          "query": "smartscapeNodes \"AWS_CLOUDFRONT_DISTRIBUTION\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(toString(id), array($CloudfrontSmartscapeId))\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CloudFront distributions",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "HealthChecks",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count()",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": []
          }
        },
        "26": {
          "content": " ",
          "type": "markdown"
        },
        "27": {
          "content": "## CloudFront distributions\n\nCompare the traffic between downloaded and uploaded bytes and the error rates across your CloudFront distributions. Look for sudden increases in throughput or errors to identify potential problems.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"network\",\"dt.smartscape.aws_cloudfront_distribution\":\"$CloudfrontSmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The total number of bytes that viewers uploaded to CloudFront, using OPTIONS, POST and PUT requests.",
          "query": "timeseries uploaded = sum(cloud.aws.cloudfront.BytesUploaded.By.DistributionId.Region),\n            by: {DistributionId, aws.account.id, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CloudfrontSmartscapeId)[])))}\n| sort arraySum(uploaded) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes uploaded",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "uploaded"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Bytes"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1745581446302,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "uploaded",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "The average time, in milliseconds, that it took Route 53 health checkers to establish a TCP connection with the endpoint.",
          "query": "timeseries connTime = avg(cloud.aws.route53.ConnectionTime.By.HealthCheckId.Region),\n            by: {HealthCheckId, aws.account.id, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($Route53SmartscapeId)[])))}\n| sort arrayAvg(connTime) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Connection time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "connTime"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Milliseconds"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "HealthCheckId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745582482437,
                "baseUnit": "millisecond",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "connTime",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
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
          "query": "timeseries x = avg(cloud.aws.cloudfront.TotalErrorRate.By.DistributionId.Region),\n            by: {DistributionId, aws.account.id, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CloudfrontSmartscapeId)[])))}\n| summarize avg(arrayLast(x))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CloudFront distributions error rate",
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
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "avg(arrayLast(x))",
                  "value": 20
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≤",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "avg(arrayLast(x))",
                  "value": 20
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≤",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "avg(arrayLast(x))",
                  "value": 10
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Error Rate",
              "labelMode": "none",
              "prefixIcon": "PercentIcon",
              "recordField": "avg(arrayLast(x))",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1738243390540,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(arrayLast(x))",
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
          "description": "The total number of bytes downloaded by viewers for GET and HEAD requests.",
          "query": "timeseries downloaded = sum(cloud.aws.cloudfront.BytesDownloaded.By.DistributionId.Region),\n            by: {DistributionId, aws.account.id, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CloudfrontSmartscapeId)[])))}\n| sort arraySum(downloaded) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes downloaded",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "downloaded"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Bytes"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1745580912676,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "downloaded",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The percentage of all viewer requests for which the response's HTTP status code is 4xx.",
          "query": "timeseries err4XX = avg(cloud.aws.cloudfront.4xxErrorRate.By.DistributionId.Region),\n            by: {DistributionId, aws.account.id, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CloudfrontSmartscapeId)[])))}\n| sort err4XX desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "4xx error rate",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "err4XX"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Percent"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "red",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745581600958,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "err4XX",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The percentage of all viewer requests for which the response's HTTP status code is 5xx.",
          "query": "timeseries err5XX = avg(cloud.aws.cloudfront.5xxErrorRate.By.DistributionId.Region),\n            by: {DistributionId, aws.account.id, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CloudfrontSmartscapeId)[])))}\n| sort err5XX desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx error rate",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "err5XX"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Percent"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "red",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745582343672,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "err5XX",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "timeseries downloaded = sum(cloud.aws.cloudfront.BytesDownloaded.By.DistributionId.Region),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CloudfrontSmartscapeId)[])))}\n| fieldsAdd SumDownloaded = arraySum(downloaded)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total bytes downloaded",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "healthcheckid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "SumDownloaded",
              "sparklineSettings": {
                "record": "UPLOADED"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1745580912676,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "SumDownloaded",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries uploaded = sum(cloud.aws.cloudfront.BytesUploaded.By.DistributionId.Region),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($CloudfrontSmartscapeId)[])))}\n| fieldsAdd SumUploaded = arraySum(uploaded)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total bytes uploaded",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "healthcheckid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "SumUploaded",
              "sparklineSettings": {
                "record": "UPLOADED"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1745580912676,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "SumUploaded",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries connTime = avg(cloud.aws.route53.ConnectionTime.By.HealthCheckId.Region),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($Route53SmartscapeId)[])))}\n| fieldsAdd TotalAvg =  arrayAvg(connTime)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average connection time",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "healthcheckid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "TotalAvg",
              "sparklineSettings": {
                "record": "avg(cloud.aws.route53.connectionTimeByAccountIdHealthCheckIdRegion)"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1745582482437,
                "baseUnit": "millisecond",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "TotalAvg",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = avg(cloud.aws.route53.HealthCheckStatus.By.HealthCheckId),\n            by: {HealthCheckId, aws.account.id, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($Route53SmartscapeId)[])))}\n| fieldsAdd health = if(arrayLast(x) == 1, \"HEALTHY\", else: \"UNHEALTHY\")\n| summarize count(), by:{health}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Health checks status split",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "health"
                ],
                "categoryAxisLabel": "health",
                "valueAxis": [
                  "count()"
                ],
                "valueAxisLabel": "count()"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "legend": {
                "position": "right"
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
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-01-default, #006650)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "HEALTHY"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "UNHEALTHY"
                }
              ]
            },
            "legend": {
              "ratio": 36
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
          "query": "timeseries connTime = avg(cloud.aws.route53.TimeToFirstByte.By.HealthCheckId.Region),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($Route53SmartscapeId)[])))}\n| fieldsAdd TotalAvg =  arrayAvg(connTime)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average time to first byte",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "healthcheckid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "TotalAvg",
              "sparklineSettings": {
                "record": "avg(cloud.aws.route53.connectionTimeByAccountIdHealthCheckIdRegion)"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1745582482437,
                "baseUnit": "millisecond",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "TotalAvg",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "41": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The average time, in milliseconds, that it took Route 53 health checkers to receive the first byte of the response to an HTTP or HTTPS request.",
          "query": "timeseries timeToFirst = avg(cloud.aws.route53.TimeToFirstByte.By.HealthCheckId.Region),\n            by: {HealthCheckId, aws.account.id, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($Route53SmartscapeId)[])))}\n| sort arrayAvg(timeToFirst) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Time to first byte",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "timeToFirst"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Milliseconds"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "HealthCheckId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745582622698,
                "baseUnit": "millisecond",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "timeToFirst",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "8": {
          "content": " ",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"*\"\n| filter startsWith(type, \"AWS_CLOUDFRONT\")\n| filter in(aws.account.id, array($AccountId))\n| fieldsKeep id",
          "key": "CloudfrontSmartscapeId",
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
          "input": "smartscapeNodes \"*\"\n| filter startsWith(type, \"AWS_ROUTE53_HEALTH\")\n| filter in(aws.account.id, array($AccountId))\n| fieldsKeep id",
          "key": "Route53SmartscapeId",
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
          "input": "smartscapeNodes \"*\"\n| filter startsWith(type, \"AWS_ROUTE53\") OR startsWith(type, \"AWS_CLOUDFRONT\")\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
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
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.clouds.aws-edge"
  # private = false
}
