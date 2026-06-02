resource "dynatrace_document" "AWS_Overview" {
  name      = "AWS Overview"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 18
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "14": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 18
        },
        "15": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 18
        },
        "16": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 38
        },
        "19": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 32
        },
        "2": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 18
        },
        "20": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 38
        },
        "22": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 32
        },
        "24": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 38
        },
        "26": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 32
        },
        "27": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 10
        },
        "29": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 23
        },
        "30": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 3
        },
        "32": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 32
        },
        "33": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 10
        },
        "34": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "35": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "37": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 3
        },
        "39": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 50
        },
        "40": {
          "h": 7,
          "w": 6,
          "x": 0,
          "y": 51
        },
        "41": {
          "h": 7,
          "w": 6,
          "x": 6,
          "y": 51
        },
        "42": {
          "h": 7,
          "w": 6,
          "x": 12,
          "y": 51
        },
        "43": {
          "h": 7,
          "w": 6,
          "x": 18,
          "y": 51
        },
        "44": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 31
        },
        "45": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 37
        },
        "5": {
          "h": 6,
          "w": 8,
          "x": 8,
          "y": 23
        },
        "52": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 49
        },
        "54": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "58": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 3
        },
        "59": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "6": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 23
        },
        "60": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 44
        },
        "61": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 44
        },
        "62": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 44
        },
        "63": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 44
        },
        "64": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "65": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "66": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "67": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 38
        },
        "68": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 58
        },
        "9": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 17
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_EC2_INSTANCE\"\n| fieldsAdd aws.object\n| parse aws.object, \"JSON:json\"\n| fields instanceType = json[configuration][instanceType]\n| summarize  count=count(), by: {instanceType}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 EC2 instance types",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "awsInstanceType",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count()"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            }
          }
        },
        "10": {
          "content": "### Other compute resources",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_EC2_INSTANCE\"\n| summarize  count=count(), by: {aws.account.id}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 AWS accounts with EC2 instances",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "aws.account.id"
                ],
                "categoryAxisLabel": "aws.account_id",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": "count",
                "valueAxisLabel": "count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            }
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_EC2_INSTANCE\"\n| summarize  count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "EC2 instances",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_EKS_CLUSTER\"\n| summarize  count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "EKS Clusters",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_AUTOSCALING_AUTOSCALINGGROUP\"\n| summarize  count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Auto scaling groups",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "trend": {
                "isVisible": false
              }
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
          "query": "smartscapeNodes \"AWS_EC2_INSTANCE\"\n| summarize  count=count(), by: {aws.availability_zone}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 Availability zones running EC2 instances",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "aws.availability_zone"
                ],
                "categoryAxisLabel": "aws.availability_zone.name",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": "count",
                "valueAxisLabel": "count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            }
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_EKS_CLUSTER\"\n| summarize  count=count(), by: {aws.account.id}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 accounts with EKS clusters",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "aws.account.id"
                ],
                "categoryAxisLabel": "aws.account_id",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
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
          "query": "smartscapeNodes \"AWS_AUTOSCALING_AUTOSCALINGGROUP\"\n| summarize  count=count(), by: {aws.account.id}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 AWS accounts with Autoscaling groups",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "aws.account.id"
                ],
                "categoryAxisLabel": "aws.account_id",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
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
          "query": "timeseries errors5xx = sum(cloud.aws.eks.apiserver_request_total_5XX.By.ClusterName),\n            by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id}\n| fieldsAdd s = arraySum(errors5xx)\n| sort s desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
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
                  "errors5xx"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "ClusterName"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
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
          "query": "timeseries cap = max(cloud.aws.autoscaling.GroupDesiredCapacity.By.AutoScalingGroupName),\n            by: {AutoScalingGroupName, aws.account.id, aws.region, aws.availability_zone, dt.smartscape_source.id}\n| fieldsAdd Capacity = arrayMax(cap)\n| sort Capacity desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Desired Capacity",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "cap"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "GroupDesiredCapacity Average"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "AutoScalingGroupName"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
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
          "query": "fetch logs\n| filter cloud.provider == \"aws\" and in(loglevel, array(\"ERROR\", \"WARNING\"))\n| filter dt.da.source == \"aws-log-ingest\"\n| summarize count(), by: {bin(timestamp,1min), loglevel}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Cloud Watch error logs by service",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "log-level",
              "fieldMapping": {
                "leftAxisValues": [
                  "count()"
                ],
                "timestamp": "bin(timestamp, 1m)"
              },
              "truncationMode": "middle",
              "xAxisLabel": "bin(timestamp, 1m)",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "loglevel"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
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
          "query": "timeseries max = max(cloud.aws.ec2.CPUUtilization.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, aws.availability_zone, dt.smartscape_source.id}\n| fieldsAdd lastMaxCPU = arrayMax(max)\n| sort lastMaxCPU desc\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "EC2 CPU utilization",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "honeycomb": {
              "colorPalette": "red-green",
              "dataMappings": {
                "value": "lastMaxCPU"
              },
              "displayedFields": [
                "InstanceId"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
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
          "query": "fetch dt.davis.problems\n|filter in(\"aws\", cloud.provider)\n| filter event.status == \"ACTIVE\" and not dt.davis.is_duplicate == \"true\"\n| summarize  count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Active problems",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count()",
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "count()",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                    },
                    "comparator": "\u003e",
                    "id": 1,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "=",
                    "id": 2,
                    "label": "",
                    "value": 0
                  }
                ],
                "title": ""
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
          "query": "timeseries inService = max(cloud.aws.autoscaling.GroupInServiceInstances.By.AutoScalingGroupName),\n            by: {AutoScalingGroupName, aws.account.id, aws.region, aws.availability_zone, dt.smartscape_source.id}\n| fieldsAdd m = arrayMax(inService)\n| sort m desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "In Service Instances",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "inService"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "GroupInServiceInstances Average"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "AutoScalingGroupName"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch logs\n| filter cloud.provider == \"aws\"\n| filter dt.da.source == \"aws-log-ingest\"\n| fieldsKeep loglevel, aws.account.id, aws.region, aws.resource.type, aws.service, loglevel, content , timestamp\n| sort timestamp desc\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Latest logs",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "content"
                  ],
                  "id": 1725278091095,
                  "value": "log-content"
                }
              ],
              "sortBy": [
                {
                  "columnId": "[\"content\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        },
        "34": {
          "content": "### Cloud Watch logs",
          "type": "markdown"
        },
        "35": {
          "content": "### Problems",
          "type": "markdown"
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.davis.problems\n|filter in(\"aws\", cloud.provider)\n| filter event.status == \"ACTIVE\" and not dt.davis.is_duplicate == \"true\"\n| summarize  count(), by: {event.name}\n| fieldsRename problem = event.name",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Active problem details",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "number-of-slices"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "39": {
          "content": "### Non compute resources",
          "type": "markdown"
        },
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"AWS_DYNAMODB_TABLE\")\n  OR startsWith(type, \"AWS_RDS_DBINSTANCE\")\n  OR startsWith(type, \"AWS_ELASTICACHE_SERVERLESSCACHE\")\n  OR startsWith(type, \"AWS_ELASTICACHE_CACHECLUSTER\")\n| summarize count= count(), by: {type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Databases",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
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
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"AWS_S3_BUCKET\")\n  OR startsWith(type, \"AWS_EC2_VOLUME\")\n  OR startsWith(type, \"AWS_EFS_FILESYSTEM\")\n| summarize count= count(), by: {type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Storage and File System",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
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
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"AWS_LAMBDA_FUNCTION\")\n  OR startsWith(type, \"AWS_KINESISFIREHOSE_DELIVERYSTREAM\")\n  OR startsWith(type, \"AWS_SNS_TOPIC\")\n  OR startsWith(type, \"AWS_SQS_QUEUE\")\n| summarize count= count(), by: {type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Serverless",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            }
          }
        },
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"AWS_ELASTICLOADBALANCING_LOADBALANCER\")\n  OR startsWith(type, \"AWS_ELASTICLOADBALANCINGV2_LOADBALANCER\")\n  OR startsWith(type, \"AWS_APIGATEWAYV2_API\")\n  OR startsWith(type, \"AWS_APIGATEWAY_RESTAPI\")\n  OR startsWith(type, \"AWS_EC2_NATGATEWAY\")\n  OR startsWith(type, \"AWS_CLOUDFRONT_DISTRIBUTION\")\n  OR startsWith(type, \"AWS_ROUTE53_HEALTHCHECK\")\n  OR startsWith(type, \"AWS_ROUTE53_HOSTEDZONE\")\n| summarize count= count(), by: {type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Networking and Content Delivery",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            }
          }
        },
        "44": {
          "content": "##### Autoscaling groups",
          "type": "markdown"
        },
        "45": {
          "content": "##### EKS clusters",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.aws.ec2.NetworkIn.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, aws.availability_zone, dt.smartscape_source.id}\n| sort arrayMax(max) desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network: EC2 instances by Network in (bytes)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "EC2 network data received rate"
              },
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "InstanceId"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "52": {
          "content": " ",
          "type": "markdown"
        },
        "54": {
          "content": "### AWS overview\nExplore the resource utilization distribution across all your AWS instances.  If you don't see data, [start monitoring your cloud resources](/ui/apps/dynatrace.clouds/home).\n\n-----",
          "type": "markdown"
        },
        "58": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.davis.problems\n|filter in(\"aws\", cloud.provider)\n| filter event.status == \"ACTIVE\" and not dt.davis.is_duplicate == \"true\"\n| summarize  count(), by: {cloud.region[0]}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Problems by region",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "59": {
          "content": "##### ECS clusters",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.aws.ec2.NetworkOut.By.InstanceId),\n            by: {InstanceId, Name, aws.account.id, aws.region, aws.availability_zone, dt.smartscape_source.id}\n| sort arrayMax(max) desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network: EC2 instances by Network out (bytes)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "EC2 network data transmitted rate"
              },
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "InstanceId"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
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
          "query": "timeseries max = max(cloud.aws.ecs.MemoryUtilization.By.ClusterName.ServiceName),\n            by: {ClusterName, ServiceName, aws.account.id, aws.region, dt.smartscape_source.id}\n| fieldsAdd m = arrayMax(max)\n| sort m desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory Utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "ServiceName"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "61": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.aws.ecs.CPUUtilization.By.ClusterName.ServiceName),\n            by: {ClusterName, ServiceName, aws.account.id, aws.region, dt.smartscape_source.id}\n| fieldsAdd m = arrayMax(max)\n| sort m desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU Utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "ClusterName",
                "ServiceName"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "62": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_ECS_CLUSTER\"\n| summarize  count=count(), by: {aws.account.id}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 accounts with ECS clusters",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "aws.account.id"
                ],
                "categoryAxisLabel": "aws.account_id",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            }
          }
        },
        "63": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_ECS_SERVICE\"\n| summarize  count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "ECS Services",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "64": {
          "content": " ",
          "type": "markdown"
        },
        "65": {
          "content": " ",
          "type": "markdown"
        },
        "66": {
          "content": " ",
          "type": "markdown"
        },
        "67": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries errors4xx = sum(cloud.aws.eks.apiserver_request_total_4XX.By.ClusterName),\n            by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id}\n| fieldsAdd s = arraySum(errors4xx)\n| sort s desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
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
                  "errors4xx"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "ClusterName"
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [],
                "title": ""
              }
            ]
          }
        },
        "68": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "9": {
          "content": "### EC2 overview",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 26
    })
  custom_id = "dynatrace.clouds.aws-overview"
  # private = false
}
