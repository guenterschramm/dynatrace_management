resource "dynatrace_document" "AWS_EFS" {
  name      = "AWS EFS"
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
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "11": {
          "h": 5,
          "w": 6,
          "x": 0,
          "y": 15
        },
        "12": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "2": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 6
        },
        "3": {
          "h": 6,
          "w": 9,
          "x": 0,
          "y": 3
        },
        "4": {
          "h": 6,
          "w": 9,
          "x": 9,
          "y": 3
        },
        "6": {
          "h": 5,
          "w": 18,
          "x": 6,
          "y": 10
        },
        "7": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 20
        },
        "8": {
          "h": 5,
          "w": 18,
          "x": 6,
          "y": 15
        },
        "9": {
          "h": 5,
          "w": 6,
          "x": 0,
          "y": 10
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### AWS Elastic File System\n\nCheck the top charts to get an informative picture of your file systems. Look for sudden increases or decreases in the usage-related charts to identify potential problems.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"storage\",\"dt.smartscape.aws_efs_filesystem\":\"$SmartscapeId\"}).\n\n---",
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
          "query": "smartscapeNodes \"AWS_EFS_FILESYSTEM\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($SmartscapeId))\n| summarize count = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "File systems ",
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
              "label": "Error Rate",
              "labelMode": "none",
              "prefixIcon": "PercentIcon",
              "recordField": "count",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": []
          }
        },
        "10": {
          "content": "##### Usage",
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
          "query": "timeseries limitIO=sum(cloud.aws.efs.TotalIOBytes.By.FileSystemId),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n                      | fieldsAdd totalSum = arraySum(limitIO)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total IO processed bytes",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "filesystemid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "totalSum",
              "sparklineSettings": {
                "record": "limitIO"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1745850184845,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "totalSum",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "12": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "//smartscapeNodes \"AWS_EFS_MOUNTTARGET\"\n//| filter in(aws.account.id, array($AccountId))\n//| filter in(aws.region, array($Region))\n//| summarize count = count()\n\nsmartscapeNodes \"AWS_EFS_MOUNTTARGET\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| lookup [\n    smartscapeEdges \"*\"\n    | fieldsAdd source_type, target_type\n    | filter target_type == \"AWS_EFS_FILESYSTEM\"\n    | filter in(toString(target_id), array($SmartscapeId))\n  ], sourceField:id, lookupField:source_id, prefix:\"edge.\"\n| filter isNotNull(edge.target_id)\n| summarize count = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Mounted targets",
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
              "label": "Error Rate",
              "labelMode": "none",
              "prefixIcon": "PercentIcon",
              "recordField": "count",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": []
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries con=sum(cloud.aws.efs.ClientConnections.By.FileSystemId),\n            by: {FileSystemId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n                    | fieldsAdd sumCon = arraySum(con)\n| sort sumCon desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "File systems by client connections",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "FileSystemId",
                  "aws.account.id",
                  "aws.region",
                  "dt.smartscape_source.id"
                ],
                "categoryAxisLabel": "FileSystemId,aws.account.id,aws.region,dt.smartscape_source.id",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "sumCon"
                ],
                "valueAxisLabel": "sumCon"
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
            "unitsOverrides": [
              {
                "added": 1745848829719,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sumCon",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "timeseries bytes=sum(cloud.aws.efs.StorageBytes.By.FileSystemId.StorageClass),\n            by: {FileSystemId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd sumBytes = arraySum(bytes)\n| sort sumBytes desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "File systems by storage size",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "FileSystemId",
                  "aws.account.id",
                  "aws.region",
                  "dt.smartscape_source.id"
                ],
                "categoryAxisLabel": "FileSystemId,aws.account.id,aws.region,dt.smartscape_source.id",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "sumBytes"
                ],
                "valueAxisLabel": "sumBytes"
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
            "unitsOverrides": [
              {
                "added": 1745848898362,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sumBytes",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "Ratio between metered IO bytes and total permitted throughput, in percentage. If you are reaching maximum capacity, then you are consuming the entire amount of throughput allocated to your file system. In this situation, you might consider changing the file system's throughput mode to get higher throughput.",
          "query": "timeseries permittedThroughput=avg(cloud.aws.efs.PermittedThroughput.By.FileSystemId),\n           meteredBytes=avg(cloud.aws.efs.MeteredIOBytes.By.FileSystemId),\n           by: {FileSystemId, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                                        in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd percent=(meteredBytes[]*100/permittedThroughput[])\n| fieldsRemove permittedThroughput, meteredBytes\n| sort percent desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Percentage of permitted throughput utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "percent"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Percent"
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
                  "max": 90,
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
                  "min": 90,
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
                  "min": 95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "FileSystemId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745849111231,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "percent",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "The number of burst credits that a file system has. Burst credits allow a file system to burst to throughput levels above a file system’s baseline level for periods of time.",
          "query": "timeseries burstBytes=avg(cloud.aws.efs.BurstCreditBalance.By.FileSystemId),\n            by: {FileSystemId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                                        in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(burstBytes) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Burst credit balance",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "burstBytes"
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
                "added": 1745850251192,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "burstBytes",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "The actual number of bytes for each file system operation processed by Amazon EFS, without any read discounts.",
          "query": "timeseries limitIO=sum(cloud.aws.efs.TotalIOBytes.By.FileSystemId),\n            by: {FileSystemId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n                      | sort arraySum(limitIO) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total IO bytes",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "limitIO"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Bytes"
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
                "FileSystemId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745850184845,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "limitIO",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries permittedThroughput=avg(cloud.aws.efs.PermittedThroughput.By.FileSystemId),\n           meteredBytes=avg(cloud.aws.efs.MeteredIOBytes.By.FileSystemId),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd percent=(meteredBytes[]*100/permittedThroughput[])\n| fieldsAdd AvgPercent = arrayAvg(percent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total average percentage of permitted throughput utilization",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "filesystemid",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "AvgPercent",
              "sparklineSettings": {
                "record": "percent"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1745849111231,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "AvgPercent",
                "suffix": "",
                "unitCategory": "percentage"
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
          "input": "smartscapeNodes \"AWS_EFS_FILESYSTEM\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AWS_EFS*\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
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
          "input": "smartscapeNodes \"AWS_EFS*\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
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
  custom_id = "dynatrace.clouds.aws-efs"
  # private = false
}
