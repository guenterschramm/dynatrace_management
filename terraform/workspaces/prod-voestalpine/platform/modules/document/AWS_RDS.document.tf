resource "dynatrace_document" "AWS_RDS" {
  name      = "AWS RDS"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "12": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 33
        },
        "21": {
          "h": 6,
          "w": 10,
          "x": 14,
          "y": 14
        },
        "24": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "25": {
          "h": 6,
          "w": 10,
          "x": 10,
          "y": 21
        },
        "27": {
          "h": 6,
          "w": 10,
          "x": 0,
          "y": 21
        },
        "28": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "29": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 33
        },
        "33": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "40": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "49": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 20
        },
        "50": {
          "h": 5,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "51": {
          "h": 5,
          "w": 10,
          "x": 4,
          "y": 3
        },
        "52": {
          "h": 5,
          "w": 10,
          "x": 14,
          "y": 3
        },
        "54": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "55": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "56": {
          "h": 6,
          "w": 10,
          "x": 4,
          "y": 14
        },
        "57": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 21
        },
        "58": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 24
        },
        "59": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 14
        },
        "60": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 17
        },
        "62": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "65": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 46
        },
        "66": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 41
        },
        "67": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 41
        },
        "68": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 38
        },
        "69": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 51
        }
      },
      "settings": {},
      "tiles": {
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = avg(cloud.aws.rds.SwapUsage.By.DBInstanceIdentifier),\n            by: {DBInstanceIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Swap usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
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
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "DBInstanceIdentifier"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745587474893,
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
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = avg(cloud.aws.rds.NetworkTransmitThroughput.By.DBInstanceIdentifier),\n            by: {DBInstanceIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network transmit throughput",
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
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "DBInstanceIdentifier"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745586543383,
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
        "24": {
          "content": "##### Network",
          "type": "markdown"
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = avg(cloud.aws.rds.WriteLatency.By.DBInstanceIdentifier),\n            by: {DBInstanceIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Write latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
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
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "DBInstanceIdentifier"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745587297078,
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
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = avg(cloud.aws.rds.ReadLatency.By.DBInstanceIdentifier),\n            by: {DBInstanceIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Read latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
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
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "DBInstanceIdentifier"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745587321382,
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
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = avg(cloud.aws.rds.FreeStorageSpace.By.DBInstanceIdentifier),\n            by: {DBInstanceIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Free storage space",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
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
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "DBInstanceIdentifier"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745587366136,
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
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The amount of available random access memory.",
          "query": "timeseries x = avg(cloud.aws.rds.FreeableMemory.By.DBInstanceIdentifier),\n            by: {DBInstanceIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Freeable memory",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
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
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "DBInstanceIdentifier"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745587451193,
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
        "33": {
          "content": "### AWS Relational Database Service\n\nTake a deep look into the aspects of your RDS instances. Look for increases in CPU and memory utilization based on the connections to each instance. Visualize network throughput and latencies for a more thorough understanding. \n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"databases\",\"dt.smartscape.aws_rds_dbinstance\":\"$InstanceSmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "40": {
          "content": "##### Storage",
          "type": "markdown"
        },
        "49": {
          "content": "##### Latency",
          "type": "markdown"
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_RDS_DBINSTANCE\"\n| fieldsAdd name\n| fieldsAdd aws.object\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($InstanceSmartscapeId))\n| parse aws.object, \"JSON:json\"\n| fieldsAdd engine = json[configuration][engine]\n| fields name, engine\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Database instances",
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
              "label": "count()",
              "labelMode": "none",
              "recordField": "count()",
              "trend": {
                "isRelative": false,
                "isVisible": true
              }
            }
          }
        },
        "51": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_RDS_DBINSTANCE\"\n| fieldsAdd aws.resource.name\n| fieldsAdd aws.object\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($InstanceSmartscapeId))\n| parse aws.object, \"JSON:json\"\n| fieldsAdd class = json[configuration][dbInstanceClass]\n| fields class\n| summarize count = count(), by: {class}\n| sort count desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Database instances by class",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "class"
                ],
                "categoryAxisLabel": "Class",
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "Number of instances"
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
            }
          }
        },
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_RDS_DBINSTANCE\"\n| fieldsAdd name\n| fieldsAdd aws.object\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($InstanceSmartscapeId))\n| parse aws.object, \"JSON:json\"\n| fieldsAdd engine = json[configuration][engine]\n| fields name, engine\n| summarize  count=count(), by: {engine}\n| sort count desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Database instances by engine",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "engine"
                ],
                "categoryAxisLabel": "Engine",
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "Number of instances"
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
            }
          }
        },
        "54": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries cpuUtilization = avg(cloud.aws.rds.CPUUtilization.By.DBInstanceIdentifier),\n            by:{DBInstanceIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| sort arrayAvg(cpuUtilization) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "cpuUtilization"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "DBInstanceIdentifier"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745587053910,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpuUtilization",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "55": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = max(cloud.aws.rds.DatabaseConnections.By.DBInstanceIdentifier),\n            by: {DBInstanceIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| sort arrayMax(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Database connections",
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
                "label": "Number of connections"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "DBInstanceIdentifier"
              ]
            }
          }
        },
        "56": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = avg(cloud.aws.rds.NetworkReceiveThroughput.By.DBInstanceIdentifier),\n            by: {DBInstanceIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network receive throughput",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
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
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "DBInstanceIdentifier"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745586580479,
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
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = avg(cloud.aws.rds.ReadLatency.By.DBInstanceIdentifier),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| fieldsAdd avgLat = arrayAvg(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average read latency",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "dbinstanceidentifier",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "avgLat",
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
                "added": 1745587321382,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avgLat",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "58": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = avg(cloud.aws.rds.WriteLatency.By.DBInstanceIdentifier),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| fieldsAdd avgLat = arrayAvg(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average write latency",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "dbinstanceidentifier",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "avgLat",
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
                "added": 1745587321382,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avgLat",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "59": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries x = avg(cloud.aws.rds.NetworkReceiveThroughput.By.DBInstanceIdentifier),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| fieldsAdd AvgThr = arrayAvg(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average network receive throughput",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "AvgThr",
              "labelMode": "none",
              "recordField": "AvgThr",
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
                "added": 1745586580479,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "AvgThr",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries x = avg(cloud.aws.rds.NetworkTransmitThroughput.By.DBInstanceIdentifier),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($InstanceSmartscapeId)[])))}\n| fieldsAdd AvgThr = arrayAvg(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average network transmit throughput",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "AvgThr",
              "labelMode": "none",
              "recordField": "AvgThr",
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
                "added": 1745586580479,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "AvgThr",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "62": {
          "content": "### AWS Aurora\nCluster-level metrics. Track the used volume and detect peaks in read and write IO operations to identify anomalies in the cluster or specific DB instances.\n\n---",
          "type": "markdown"
        },
        "65": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = avg(cloud.aws.rds.VolumeBytesUsed.By.DBClusterIdentifier),\n            by: {DBClusterIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($AuroraClusterSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Volume bytes used",
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
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "DBClusterIdentifier"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745587366136,
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
        "66": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of billed read I/O operations from a cluster volume within a 5-minute interval.",
          "query": "timeseries x = avg(cloud.aws.rds.VolumeReadIOPs.By.DBClusterIdentifier),\n            by: {DBClusterIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($AuroraClusterSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Read IO operations",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "unitsOverrides": [
              {
                "added": 1745587451193,
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
        "67": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of write disk I/O operations to the cluster volume, reported at 5-minute intervals.",
          "query": "timeseries x = avg(cloud.aws.rds.VolumeWriteIOPs.By.DBClusterIdentifier),\n            by: {DBClusterIdentifier, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($AuroraClusterSmartscapeId)[])))}\n| sort arrayAvg(x) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Write IO operations",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "unitsOverrides": [
              {
                "added": 1745587451193,
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
        "68": {
          "content": " ",
          "type": "markdown"
        },
        "69": {
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
          "input": "smartscapeNodes \"AWS_RDS_*\"\n| filter type == \"AWS_RDS_DBINSTANCE\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
          "key": "InstanceSmartscapeId",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "smartscapeNodes \"AWS_RDS_*\"\n| filter type == \"AWS_RDS_DBCLUSTER\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
          "key": "AuroraClusterSmartscapeId",
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
          "input": "smartscapeNodes \"AWS_RDS_DBINSTANCE\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
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
          "input": "smartscapeNodes \"AWS_RDS*\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
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
  custom_id = "dynatrace.clouds.aws-rds"
  # private = false
}
