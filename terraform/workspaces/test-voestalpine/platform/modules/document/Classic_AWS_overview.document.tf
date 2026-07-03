resource "dynatrace_document" "Classic_AWS_overview" {
  name      = "Classic AWS overview"
  type      = "dashboard"
  content   = jsonencode({
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
        "36": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 3
        },
        "37": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 3
        },
        "38": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 38
        },
        "39": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 44
        },
        "40": {
          "h": 7,
          "w": 6,
          "x": 0,
          "y": 45
        },
        "41": {
          "h": 7,
          "w": 6,
          "x": 6,
          "y": 45
        },
        "42": {
          "h": 7,
          "w": 6,
          "x": 12,
          "y": 45
        },
        "43": {
          "h": 7,
          "w": 6,
          "x": 18,
          "y": 45
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
          "y": 43
        },
        "53": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "54": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "56": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "57": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "58": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 52
        },
        "6": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 23
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
          "description": "Shows the most commonly used EC2 instance types (e.g., t2.micro, t3.nano).",
          "query": "fetch dt.entity.ec2_instance\n| summarize by: {awsInstanceType}, count()\n| sort `count()` desc\n| limit 10",
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
                "categoryAxis": "awsInstanceType",
                "categoryAxisLabel": "awsInstanceType",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": "count()",
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": []
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
          "description": "Shows the top 10 AWS accounts by the number of EC2 instances they are running. Each bar represents an account, with the length indicating the total instances.",
          "query": "fetch dt.entity.ec2_instance\n\n| fieldsAdd aws_credentials = accessible_by[dt.entity.aws_credentials][0], instance.id = awsInstanceId, aws_availability_zone = belongs_to[dt.entity.aws_availability_zone] \n\n| lookup [ fetch dt.entity.aws_credentials | fieldsadd name = entity.name, id, awsAccountId ], sourceField:aws_credentials, lookupField:id, prefix:\"aws.credentials.\" \n\n| fieldsRename aws.account_id = aws.credentials.awsAccountId\n\n| lookup [ fetch dt.entity.aws_availability_zone | fieldsadd name = entity.name, id ], sourceField:aws_availability_zone, lookupField:id, prefix:\"aws.availability_zone.\" \n\n| summarize count = count(), by: {aws.account_id}\n\n| sort count desc\n\n| limit 10",
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
                "categoryAxis": "aws.account_id",
                "categoryAxisLabel": "aws.account_id",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": "count",
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays the total count of active EC2 instances in the monitored environment.",
          "query": "fetch dt.entity.ec2_instance\n| summarize  count=count()",
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
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": []
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Shows the count of Elastic Kubernetes Service (EKS) clusters currently active in the AWS environment.",
          "query": "fetch dt.entity.custom_device\n| filter entity.type == \"cloud:aws:eks:cluster\"\n| summarize  count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Elastic Kubernetes Services",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": []
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays the total number of auto-scaling groups available in the AWS environment.",
          "query": "fetch dt.entity.custom_device\n| filter entity.type == \"cloud:aws:autoscaling\"\n| summarize  count()",
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
              "recordField": "count()",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
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
          "description": "Highlights the top 10 AWS availability zones where EC2 instances are deployed.",
          "query": "fetch dt.entity.ec2_instance\n\n| fieldsAdd aws_credentials = accessible_by[dt.entity.aws_credentials][0], instance.id = awsInstanceId, aws_availability_zone = belongs_to[dt.entity.aws_availability_zone] \n\n| lookup [ fetch dt.entity.aws_credentials | fieldsadd name = entity.name, id, awsAccountId ], sourceField:aws_credentials, lookupField:id, prefix:\"aws.credentials.\" \n\n| fieldsRename aws.account_id = aws.credentials.awsAccountId\n\n| lookup [ fetch dt.entity.aws_availability_zone | fieldsadd name = entity.name, id ], sourceField:aws_availability_zone, lookupField:id, prefix:\"aws.availability_zone.\" \n\n| summarize count = count(), by: {aws.availability_zone.name}\n\n| sort count desc\n\n| limit 10",
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
                "categoryAxis": "aws.availability_zone.name",
                "categoryAxisLabel": "aws.availability_zone.name",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": "count",
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Highlights the top 10 AWS accounts with the most EKS clusters, providing insights into Kubernetes resource distribution.",
          "query": "fetch dt.entity.custom_device\n| filter entity.type == \"cloud:aws:eks:cluster\"\n| fieldsAdd  aws_credentials=accessible_by[dt.entity.aws_credentials][0],  instance.id =entity.name\n| lookup [fetch dt.entity.aws_credentials | fieldsadd name = entity.name, id, awsAccountId ], sourceField:aws_credentials, lookupField:id, prefix:\"aws.credentials.\" | fieldsRename aws.account_id =  aws.credentials.awsAccountId\n| summarize  count=count(), by: {aws.account_id}\n| sort count desc\n| limit 10",
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
                "categoryAxis": "aws.account_id",
                "categoryAxisLabel": "aws.account_id",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays the top 10 AWS accounts with the highest number of auto-scaling groups, sorted by count.",
          "query": "fetch dt.entity.custom_device\n| filter entity.type == \"cloud:aws:autoscaling\"\n| fieldsAdd  aws_credentials=accessible_by[dt.entity.aws_credentials][0],  instance.id=entity.name\n| lookup [fetch dt.entity.aws_credentials | fieldsadd name = entity.name, id, awsAccountId ], sourceField:aws_credentials, lookupField:id, prefix:\"aws.credentials.\" | fieldsRename aws.account_id =  aws.credentials.awsAccountId\n| summarize  count=count(), by: {aws.account_id}\n| sort count desc\n| limit 10",
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
                "categoryAxis": "aws.account_id",
                "categoryAxisLabel": "aws.account_id",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Tracks the CPU limit for nodes in the environment, showing the maximum values over time for each node.",
          "query": "timeseries max = max(cloud.aws.containerinsights.node_cpu_limit), by: {dt.entity.custom_device} \n\n| lookup [ fetch dt.entity.custom_device | fieldsAdd name = entity.name, aws_credentials = accessible_by[dt.entity.aws_credentials][0], instance.id = entity.name ], sourceField:`dt.entity.custom_device`, lookupField:id, prefix:\"aws.\"\n\n| lookup [ fetch dt.entity.aws_credentials | fieldsadd name = entity.name, id, awsAccountId ], sourceField:aws.aws_credentials, lookupField:id, prefix:\"aws.credentials.\" \n\n| fieldsRename aws.account_id = aws.credentials.awsAccountId\n\n| fieldsKeep timeframe, max, interval, aws.name, aws.instance.id\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, aws.instance.id\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Node CPU limit",
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
              "hiddenLegendFields": [
                "aws.ec2"
              ],
              "leftYAxisSettings": {
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
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
          "description": "Monitors the desired capacity of auto-scaling groups, showing trends in the number of instances required to meet scaling policies.",
          "query": "timeseries max = max(cloud.aws.autoscaling.group_desired_capacity_average), by: {dt.entity.custom_device} \n\n| lookup [ fetch dt.entity.custom_device | fieldsAdd name = entity.name, aws_credentials = accessible_by[dt.entity.aws_credentials][0], instance.id = entity.name ], sourceField:`dt.entity.custom_device`, lookupField:id, prefix:\"aws.\"\n\n| lookup [ fetch dt.entity.aws_credentials | fieldsadd name = entity.name, id, awsAccountId ], sourceField:aws.aws_credentials, lookupField:id, prefix:\"aws.credentials.\" \n| fieldsRename aws.account_id = aws.credentials.awsAccountId\n\n| fieldsKeep timeframe, max, interval, aws.name, aws.instance.id\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, aws.instance.id\n\n| limit 10",
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
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "aws.ec2",
                "interval"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "GroupDesiredCapacity Average",
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
          "description": "Shows the count of CloudWatch error logs grouped by severity over time. ",
          "query": "fetch logs\n| filter cloud.provider == \"aws\"\n| summarize count(), by: {bin(timestamp,1min), loglevel}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Cloud Watch error logs by log level",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "log-level",
              "fieldMapping": {
                "leftAxisValues": [
                  "count()"
                ],
                "timestamp": "bin(timestamp, 1m)"
              },
              "leftYAxisSettings": {
                "min": 0
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
          "description": "Represents the CPU utilization of EC2 instances. Each hexagon corresponds to an instance, with colors ranging from green (low utilization) to red (high utilization). ",
          "query": "timeseries max = max(dt.cloud.aws.ec2.cpu.usage), by: {dt.entity.ec2_instance}\n\n| lookup [ fetch dt.entity.ec2_instance | fieldsAdd name = entity.name, aws_credentials = accessible_by[dt.entity.aws_credentials][0], instance.id = awsInstanceId, aws_availability_zone = belongs_to[dt.entity.aws_availability_zone] ], sourceField:`dt.entity.ec2_instance`, lookupField:id, prefix:\"aws.ec2.\"\n\n| lookup [ fetch dt.entity.aws_credentials | fieldsadd name = entity.name, id, awsAccountId ], sourceField:aws.ec2.aws_credentials, lookupField:id, prefix:\"aws.credentials.\" \n| fieldsRename aws.account_id = aws.credentials.awsAccountId\n\n| lookup [ fetch dt.entity.aws_availability_zone | fieldsadd name = entity.name, id ], sourceField:aws.ec2.aws_availability_zone, lookupField:id, prefix:\"aws.availability_zone.\" \n\n| fieldsKeep timeframe, max, interval, aws.ec2.name, aws.ec2.instance.id\n\n| fieldsadd lastMaxCPU = toLong(arrayLast(max))\n\n| sort lastMaxCPU desc\n\n| fieldsAdd aws.ec2.instance = concat(aws.ec2.instance.id, \" (\", aws.ec2.name, \")\")\n\n| fieldsKeep timeframe, lastMaxCPU, max, aws.ec2.instance.id, aws.ec2.instance\n\n| limit 100",
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
              "customColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "comparator": "=",
                  "id": 0,
                  "value": ""
                }
              ],
              "dataMappings": {
                "value": "lastMaxCPU"
              },
              "displayedFields": [
                "aws.ec2.instance"
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
          "description": "Displays the total number of active problems detected by Davis, Dynatrace's AI engine. This chart provides a quick snapshot of the current health of your monitored environment. A value of \"0\" indicates no active issues requiring attention.",
          "query": "fetch dt.davis.problems\n  | filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n  | filter event.status == \"ACTIVE\"\n  | filter in(cloud.provider,\"aws\") \n  | sort `event.status` asc, `event.start` desc\n  | summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Active Problems",
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
          "description": "Tracks the average number of in-service instances within auto-scaling groups, providing insights into resource availability and usage.",
          "query": "timeseries max = max(cloud.aws.autoscaling.group_in_service_instances_average), by: {dt.entity.custom_device} \n\n| lookup [ fetch dt.entity.custom_device | fieldsAdd name = entity.name, aws_credentials = accessible_by[dt.entity.aws_credentials][0], instance.id = entity.name ], sourceField:`dt.entity.custom_device`, lookupField:id, prefix:\"aws.\"\n\n| lookup [ fetch dt.entity.aws_credentials | fieldsadd name = entity.name, id, awsAccountId ], sourceField:aws.aws_credentials, lookupField:id, prefix:\"aws.credentials.\" \n| fieldsRename aws.account_id = aws.credentials.awsAccountId\n\n| fieldsKeep timeframe, max, interval, aws.name, aws.instance.id\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, aws.instance.id\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "In Service Instances",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
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
          "description": "Displays the most recent CloudWatch logs, including timestamps, log content severity levels, service, account id and region. ",
          "query": "fetch logs\n| filter cloud.provider == \"aws\"\n| fieldsKeep loglevel, aws.account.id, aws.region, aws.resource.type, aws.service, loglevel, content , timestamp\n| sort timestamp desc\n| limit 100",
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
              ]
            },
            "thresholds": []
          }
        },
        "34": {
          "content": "### Cloud Watch logs",
          "type": "markdown"
        },
        "35": {
          "content": "### Davis problems",
          "type": "markdown"
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Breaks down active problems by geographic region, helping identify areas with recurring or localized issues.",
          "query": "fetch dt.davis.problems\n  | filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n  | filter event.status == \"ACTIVE\"\n  | filter in(cloud.provider,\"aws\")\n  | sort `event.status` asc, `event.start` desc\n  | summarize count(), by: {cloud.region[0]}",
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
              "categoricalBarChartSettings": {
                "categoryAxis": "cloud.region[0]",
                "categoryAxisLabel": "cloud.region[0]",
                "valueAxis": [
                  "count()"
                ],
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
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
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Provides information about currently active problems types.",
          "query": "fetch dt.davis.problems\n  | filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n  | filter event.status == \"ACTIVE\"\n  | filter in(cloud.provider,\"aws\")   \n  | sort `event.status` asc, `event.start` desc\n  | summarize count(), by:{problem=event.name}",
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
              "categoricalBarChartSettings": {
                "categoryAxis": "problem",
                "categoryAxisLabel": "problem",
                "valueAxis": [
                  "count()"
                ],
                "valueAxisLabel": "count()"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "number-of-slices"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "legend": {
              "ratio": 62
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
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Tracks the maximum memory limits for nodes in the environment.",
          "query": "timeseries max = max(cloud.aws.containerinsights.node_memory_limit), by: {dt.entity.custom_device} \n\n| lookup [ fetch dt.entity.custom_device | fieldsAdd name = entity.name, aws_credentials = accessible_by[dt.entity.aws_credentials][0], instance.id = entity.name ], sourceField:`dt.entity.custom_device`, lookupField:id, prefix:\"aws.\"\n\n| lookup [ fetch dt.entity.aws_credentials | fieldsadd name = entity.name, id, awsAccountId ], sourceField:aws.aws_credentials, lookupField:id, prefix:\"aws.credentials.\" \n\n| fieldsRename aws.account_id = aws.credentials.awsAccountId\n\n| fieldsKeep timeframe, max, interval, aws.name, aws.instance.id\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, aws.instance.id\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory limit",
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
              "hiddenLegendFields": [
                "aws.ec2"
              ],
              "leftYAxisSettings": {
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
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
          "description": "Visualizes the distribution of various database services in the environment, such as Amazon RDS, DynamoDB, Aurora, and others.",
          "query": "fetch dt.entity.relational_database_service | fieldsAdd  aws.resource.type = \"Amazon RDS\"\n| append [fetch dt.entity.dynamo_db_table | fieldsAdd  aws.resource.type = \"Amazon DynamoDB\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:aurora\" | fieldsAdd  aws.resource.type = \"Amazon Aurora\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:cassandra\" | fieldsAdd  aws.resource.type = \"Amazon Keyspaces\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:documentdb\" | fieldsAdd  aws.resource.type = \"Amazon DocumentDB\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:dynamodb\" | fieldsAdd  aws.resource.type = \"Amazon DynamoDB\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:elasticache\" | fieldsAdd  aws.resource.type = \"Amazon ElastiCache\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:rds\" | fieldsAdd  aws.resource.type = \"Amazon RDS\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:neptune\" | fieldsAdd  aws.resource.type = \"Amazon Neptune\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:neptune\" | fieldsAdd  aws.resource.type = \"Amazon Redshift\"]\n\n| summarize count= count(), by: {aws.resource.type}",
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
              "categoricalBarChartSettings": {
                "categoryAxis": "aws.resource.type",
                "categoryAxisLabel": "aws.resource.type",
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Represents the usage of storage services such as Amazon S3, EBS, EFS, and FSx. ",
          "query": "fetch dt.entity.s3bucket | fieldsAdd  aws.resource.type = \"Amazon S3\"\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:ebs\" | fieldsAdd  aws.resource.type = \"Amazon EBS\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:efs\" | fieldsAdd  aws.resource.type = \"Amazon EFS\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:efs\" | fieldsAdd  aws.resource.type = \"Amazon EFS\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:fsx\" | fieldsAdd  aws.resource.type = \"Amazon FSx\"]\n\n| summarize count= count(), by: {aws.resource.type}",
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
              "categoricalBarChartSettings": {
                "categoryAxis": "aws.resource.type",
                "categoryAxisLabel": "aws.resource.type",
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Displays the count of serverless resources such as AWS Lambda, EventBridge, Step Functions, and API Gateway.",
          "query": "fetch dt.entity.aws_lambda_function | fieldsAdd  aws.resource.type = \"Amazon Lambda\"\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:lambda\" | fieldsAdd  aws.resource.type = \"Amazon Lambda\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:events\" | fieldsAdd  aws.resource.type = \"Amazon EventBridge\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:states\" | fieldsAdd  aws.resource.type = \"AWS Step Functions\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:sqs\" | fieldsAdd  aws.resource.type = \"AWS SQS\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:sns\" | fieldsAdd  aws.resource.type = \"AWS SNS\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:api_gateway\" | fieldsAdd  aws.resource.type = \"Amazon API Gateway\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:app_runner\" | fieldsAdd  aws.resource.type = \"AWS App Runner\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:appsync\" | fieldsAdd  aws.resource.type = \"AWS AppSync\"]\n\n| summarize count= count(), by: {aws.resource.type}",
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
              "categoricalBarChartSettings": {
                "categoryAxis": "aws.resource.type",
                "categoryAxisLabel": "aws.resource.type",
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Highlights the usage of networking and content delivery resources like Elastic Load Balancers, Amazon CloudFront, and Route 53.",
          "query": "fetch dt.entity.aws_application_load_balancer | fieldsAdd  aws.resource.type = \"Amazon Application Load Balancer\"\n| append [fetch dt.entity.elastic_load_balancer | fieldsAdd  aws.resource.type = \"Amazon Elastic Load Balancer\"]\n| append [fetch dt.entity.aws_network_load_balancer | fieldsAdd  aws.resource.type = \"Amazon Network Load Balancer\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:elb\" | fieldsAdd  aws.resource.type = \"Classic Load Balancer\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:transitgateway\" | fieldsAdd  aws.resource.type = \"AWS Transit Gateway\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:applicationelb\" | fieldsAdd  aws.resource.type = \"Amazon Application Load Balancer\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:cloud_front\" | fieldsAdd  aws.resource.type = \"Amazon CloudFront\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:nat_gateway\" | fieldsAdd  aws.resource.type = \"VPC NAT Gateways\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:networkelb\" | fieldsAdd  aws.resource.type = \"Network Load Balancer\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:route53\" | fieldsAdd  aws.resource.type = \"Amazon Route 53\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:waf\" | fieldsAdd  aws.resource.type = \"Amazon WAF Classic\"]\n| append [ fetch dt.entity.custom_device | filter entity.type == \"cloud:aws:wafv2\" | fieldsAdd  aws.resource.type = \"Amazon WAF\"]\n\n \n| summarize count= count(), by: {aws.resource.type}",
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
              "categoricalBarChartSettings": {
                "categoryAxis": "aws.resource.type",
                "categoryAxisLabel": "aws.resource.type",
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
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
          "description": "Shows the incoming network data (in bytes) for individual EC2 instances over time.",
          "query": "timeseries max = max(dt.cloud.aws.ec2.net.rx), by: {dt.entity.ec2_instance}\n\n| lookup [ fetch dt.entity.ec2_instance | fieldsAdd name = entity.name, aws_credentials = accessible_by[dt.entity.aws_credentials][0], instance.id = awsInstanceId, aws_availability_zone = belongs_to[dt.entity.aws_availability_zone] ], sourceField:`dt.entity.ec2_instance`, lookupField:id, prefix:\"aws.ec2.\"\n\n| lookup [ fetch dt.entity.aws_credentials | fieldsadd name = entity.name, id, awsAccountId ], sourceField:aws.ec2.aws_credentials, lookupField:id, prefix:\"aws.credentials.\" \n| fieldsRename aws.account_id = aws.credentials.awsAccountId\n\n| lookup [ fetch dt.entity.aws_availability_zone | fieldsadd name = entity.name, id ], sourceField:aws.ec2.aws_availability_zone, lookupField:id, prefix:\"aws.availability_zone.\"\n\n| fieldsKeep timeframe, max, interval, aws.ec2.name, aws.ec2.instance.id\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, aws.ec2.instance.id\n\n| limit 10",
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
                "label": "EC2 network data received rate",
                "min": 0
              },
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "aws.ec2.instance.id"
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
        "53": {
          "content": " ",
          "type": "markdown"
        },
        "54": {
          "content": "### Classic AWS overview\nExplore the resource utilization distribution across all your AWS instances.  If you don't see data, [start monitoring your cloud resources](/ui/apps/dynatrace.clouds/overview/service/all) or [explore this dashboard in our Playground](https://wkf10640.apps.dynatrace.com/ui/document/dynatrace.kubernetes.kubernetes-persistent-volumes)\n\n-----",
          "type": "markdown"
        },
        "56": {
          "content": " ",
          "type": "markdown"
        },
        "57": {
          "content": " ",
          "type": "markdown"
        },
        "58": {
          "content": "### Additional information\n* To learn more about AWS monitoring visit dedicated [Docs](https://docs.dynatrace.com/docs/observe/infrastructure-monitoring/cloud-platform-monitoring/aws-monitoring)\n* For more information about Davis® problems, visit Dynatrace [Docs](https://docs.dynatrace.com/docs/discover-dynatrace/platform/davis-ai)\n* Information about setting up data ingestion from AWS can be found in [Ingest data from Amazon Web Services](https://docs.dynatrace.com/docs/ingest-from/amazon-web-services)\n",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Shows the outgoing network data (in bytes) for individual EC2 instances over time.",
          "query": "timeseries max = max(dt.cloud.aws.ec2.net.tx), by: {dt.entity.ec2_instance}\n\n| lookup [ fetch dt.entity.ec2_instance | fieldsAdd name = entity.name, aws_credentials = accessible_by[dt.entity.aws_credentials][0], instance.id = awsInstanceId, aws_availability_zone = belongs_to[dt.entity.aws_availability_zone] ], sourceField:`dt.entity.ec2_instance`, lookupField:id, prefix:\"aws.ec2.\"\n\n| lookup [ fetch dt.entity.aws_credentials | fieldsadd name = entity.name, id, awsAccountId ], sourceField:aws.ec2.aws_credentials, lookupField:id, prefix:\"aws.credentials.\" \n| fieldsRename aws.account_id = aws.credentials.awsAccountId\n\n| lookup [ fetch dt.entity.aws_availability_zone | fieldsadd name = entity.name, id ], sourceField:aws.ec2.aws_availability_zone, lookupField:id, prefix:\"aws.availability_zone.\"\n\n| fieldsKeep timeframe, max, interval, aws.ec2.name, aws.ec2.instance.id\n\n| fieldsadd m = arrayMax(max)\n\n| sort m desc\n\n| fieldsKeep timeframe, max, interval, aws.ec2.instance.id\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network: EC2 instances by Network out(bytes)",
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
                "label": "EC2 network data transmitted rate",
                "min": 0
              },
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "aws.ec2.instance.id"
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
        "9": {
          "content": "### EC2 overview",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 26
    })
  custom_id = "dynatrace.clouds.AWS-overview-classic"
  # private = false
}
