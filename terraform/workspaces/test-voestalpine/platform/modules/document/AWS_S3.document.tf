resource "dynatrace_document" "AWS_S3" {
  name      = "AWS S3"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "1": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 22
        },
        "10": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 16
        },
        "12": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 23
        },
        "13": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 23
        },
        "14": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "15": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 23
        },
        "16": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 26
        },
        "17": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 16
        },
        "18": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 16
        },
        "19": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 19
        },
        "21": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 30
        },
        "22": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 9
        },
        "23": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 30
        },
        "24": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 33
        },
        "25": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 12
        },
        "26": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "27": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "28": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 36
        },
        "29": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 30
        },
        "30": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 41
        },
        "4": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "6": {
          "h": 5,
          "w": 10,
          "x": 14,
          "y": 3
        },
        "7": {
          "h": 5,
          "w": 10,
          "x": 4,
          "y": 3
        },
        "8": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 9
        },
        "9": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 9
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "##### Errors\n",
          "type": "markdown"
        },
        "1": {
          "content": "##### Usage",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The elapsed per-request time from the first byte received to the last byte sent to an Amazon S3 bucket.",
          "query": "timeseries latency = avg(cloud.aws.s3.TotalRequestLatency.By.BucketName.FilterId),\n            by: {BucketName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| sort arrayAvg(latency) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "latency"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Milliseconds"
              },
              "pointsDisplay": "never",
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
                "BucketName"
              ]
            },
            "legend": {
              "ratio": 24
            },
            "unitsOverrides": [
              {
                "added": 1746024014538,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "latency",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries downloaded = sum(cloud.aws.s3.BytesDownloaded.By.BucketName.FilterId),\n            by: {BucketName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| sort arraySum(downloaded) desc\n| limit toLong($Limit)",
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
                "BucketName"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1746023973134,
                "baseUnit": "byte",
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
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries uploaded = sum(cloud.aws.s3.BytesUploaded.By.BucketName.FilterId),\n            by: {BucketName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| sort arraySum(uploaded) desc\n| limit toLong($Limit)",
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
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ],
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
            "unitsOverrides": [
              {
                "added": 1746023960915,
                "baseUnit": "byte",
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
        "14": {
          "content": "### AWS S3\n\n \n\nIdentify the buckets with high error rates, considering their total number of requests. Check the occurrence of errors over time and compare traffic and latencies between them.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"storage\",\"dt.smartscape.aws_s3_bucket\":\"$SmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries downloaded = sum(cloud.aws.s3.BytesDownloaded.By.BucketName.FilterId),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| fieldsAdd arraySum(downloaded)",
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
              "label": "arraySum(downloaded)",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "arraySum(downloaded)",
              "sparklineSettings": {
                "record": "UPLOADED"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1746023973134,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "arraySum(downloaded)",
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
          "description": "",
          "query": "timeseries uploaded = sum(cloud.aws.s3.BytesUploaded.By.BucketName.FilterId),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| fieldsAdd arraySum(uploaded)",
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
              "label": "arraySum(downloaded)",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "arraySum(uploaded)",
              "sparklineSettings": {
                "record": "UPLOADED"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1746023973134,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "arraySum(uploaded)",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The elapsed per-request time from the first byte received to the last byte sent to an Amazon S3 bucket.",
          "query": "timeseries latency = avg(cloud.aws.s3.FirstByteLatency.By.BucketName.FilterId),\n            by: {BucketName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| sort arrayAvg(latency) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "First byte latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "latency"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Milliseconds"
              },
              "pointsDisplay": "never",
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
                "BucketName"
              ]
            },
            "legend": {
              "ratio": 24
            },
            "unitsOverrides": [
              {
                "added": 1746024014538,
                "baseUnit": "millisecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "latency",
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
          "description": "The elapsed per-request time from the first byte received to the last byte sent to an Amazon S3 bucket.",
          "query": "timeseries latency = avg(cloud.aws.s3.TotalRequestLatency.By.BucketName.FilterId),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| fieldsAdd arrayAvg(latency)",
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
              "label": "arrayAvg(latency)",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "arrayAvg(latency)",
              "sparklineSettings": {
                "isVisible": false,
                "record": "latency"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1746024014538,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "arrayAvg(latency)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The elapsed per-request time from the first byte received to the last byte sent to an Amazon S3 bucket.",
          "query": "timeseries latency = avg(cloud.aws.s3.FirstByteLatency.By.BucketName.FilterId),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| fieldsAdd arrayAvg(latency)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average first byte latency",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "arrayAvg(latency)",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "arrayAvg(latency)",
              "sparklineSettings": {
                "isVisible": false,
                "record": "latency"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1746024014538,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "arrayAvg(latency)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries allRequests = sum(cloud.aws.s3.AllRequests.By.BucketName.FilterId),\n            by: {BucketName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| sort arraySum(allRequests) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "allRequests"
                ],
                "timestamp": "timeframe"
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
                "BucketName",
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ]
            }
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries errorCount = sum(cloud.aws.s3.4xxErrors.By.BucketName.FilterId),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| fieldsAdd arraySum(errorCount)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total 4xx error count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "!=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "arraySum(errorCount)",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "arraySum(errorCount)",
              "labelMode": "none",
              "recordField": "arraySum(errorCount)",
              "sparklineSettings": {
                "isVisible": false,
                "record": "errorCount"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1749828784769,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "arraySum(errorCount)",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "timeseries getRequests = sum(cloud.aws.s3.GetRequests.By.BucketName.FilterId),\n            by: {BucketName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| sort arraySum(getRequests) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Get requests",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "getRequests"
                ],
                "timestamp": "timeframe"
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
                "BucketName",
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ]
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
          "query": "timeseries getRequests = sum(cloud.aws.s3.GetRequests.By.BucketName.FilterId),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| fieldsAdd arraySum(getRequests)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total count of GET requests for all buckets",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "BucketName",
              "labelMode": "none",
              "recordField": "arraySum(getRequests)",
              "sparklineSettings": {
                "isVisible": false,
                "record": "getRequests"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1774001635313,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "getRequests",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1774001694013,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "arraySum(getRequests)",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries errorCount = sum(cloud.aws.s3.5xxErrors.By.BucketName.FilterId),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| fieldsAdd arraySum(errorCount)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total 5xx error count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "!=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "arraySum(errorCount)",
                  "type": "double",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#5EB1A9",
                  "field": "arraySum(errorCount)",
                  "type": "double",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "arraySum(errorCount)",
              "labelMode": "none",
              "prefixIcon": "CriticalIcon",
              "recordField": "arraySum(errorCount)",
              "sparklineSettings": {
                "record": "errorCount"
              },
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "26": {
          "content": "#### Latencies",
          "type": "markdown"
        },
        "27": {
          "content": "#### Requests",
          "type": "markdown"
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of HEAD requests made for objects in an S3 bucket.",
          "query": "timeseries headRequests = sum(cloud.aws.s3.HeadRequests.By.BucketName.FilterId),\n            by: {BucketName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| sort arraySum(headRequests) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Head requests count",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "headRequests"
                ],
                "timestamp": "timeframe"
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
                "BucketName",
                "aws.account.id",
                "aws.region",
                "dt.smartscape_source.id"
              ]
            }
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries allRequests = sum(cloud.aws.s3.AllRequests.By.BucketName.FilterId),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| fieldsAdd arraySum(allRequests)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "All requests count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "arraySum(allRequests)",
              "labelMode": "none",
              "recordField": "arraySum(allRequests)",
              "sparklineSettings": {
                "isVisible": false,
                "record": "allRequests"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1774001718464,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "arraySum(allRequests)",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "30": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_S3_BUCKET\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($SmartscapeId))\n| summarize  count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "S3 buckets",
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
              "label": "count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "trend": {
                "isVisible": true
              }
            }
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
          "query": "timeseries counter = sum(cloud.aws.s3.AllRequests.By.BucketName.FilterId),\n            by: {BucketName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| fieldsAdd last = arraySum(counter)\n| sort last desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request count by bucket",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "BucketName",
                  "aws.account.id",
                  "aws.region",
                  "dt.smartscape_source.id"
                ],
                "categoryAxisLabel": "BucketName,aws.account.id,aws.region,dt.smartscape_source.id",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "last"
                ],
                "valueAxisLabel": "last"
              },
              "categoryOverrides": {},
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
                "added": 1746023886524,
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
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries {err4xx = sum(cloud.aws.s3.4xxErrors.By.BucketName.FilterId),\n            err5xx = sum(cloud.aws.s3.5xxErrors.By.BucketName.FilterId),\n            requests = sum(cloud.aws.s3.AllRequests.By.BucketName.FilterId)},\n            by: {BucketName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| fieldsAdd errors = (arraySum(err4xx) + arraySum(err5xx)) / arraySum(requests) * 100\n| sort errors desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Error rate by bucket",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "BucketName",
                  "aws.account.id",
                  "aws.region",
                  "dt.smartscape_source.id"
                ],
                "categoryAxisLabel": "BucketName,aws.account.id,aws.region,dt.smartscape_source.id",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "errors"
                ],
                "valueAxisLabel": "errors"
              },
              "categoryOverrides": {},
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
              ],
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eca440)",
                  "colorMode": "single-color",
                  "max": 15,
                  "min": 5,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-critical-default, #c4233b)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 15,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": "var(--dt-colors-charts-status-ideal-default, #2f6863)",
                  "colorMode": "single-color",
                  "max": 5,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "legend": {
              "ratio": 17
            },
            "unitsOverrides": [
              {
                "added": 1746023840648,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "errors",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries errorCount = sum(cloud.aws.s3.4xxErrors.By.BucketName.FilterId),\n            by: {BucketName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| sort arraySum(errorCount) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "4xx errors",
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
                "label": "Count"
              },
              "pointsDisplay": "never",
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
                "BucketName"
              ]
            },
            "legend": {
              "ratio": 24
            }
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
          "query": "timeseries errorCount = sum(cloud.aws.s3.5xxErrors.By.BucketName.FilterId),\n            by: {BucketName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[]))) AND\n                    in(aws.region, array($Region))}\n| sort arraySum(errorCount) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "5xx errors",
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
                "label": "Count"
              },
              "pointsDisplay": "never",
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
                "BucketName"
              ]
            },
            "legend": {
              "ratio": 24
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
          "input": "smartscapeNodes \"AWS_S3_BUCKET\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AWS_S3_BUCKET\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
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
          "input": "smartscapeNodes \"AWS_S3_BUCKET\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
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
  custom_id = "dynatrace.clouds.aws-s3"
  # private = false
}
