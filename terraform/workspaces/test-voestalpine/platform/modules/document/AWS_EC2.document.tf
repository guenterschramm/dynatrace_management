resource "dynatrace_document" "AWS_EC2" {
  name      = "AWS EC2"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "100": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 29
        },
        "101": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 29
        },
        "102": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 29
        },
        "105": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 46
        },
        "106": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 48
        },
        "107": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 48
        },
        "108": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 53
        },
        "109": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 53
        },
        "110": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 58
        },
        "111": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 58
        },
        "112": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "116": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 9
        },
        "117": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "118": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "119": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 45
        },
        "120": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 26
        },
        "121": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 63
        },
        "27": {
          "h": 5,
          "w": 7,
          "x": 10,
          "y": 3
        },
        "29": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "30": {
          "h": 5,
          "w": 7,
          "x": 3,
          "y": 3
        },
        "31": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 3
        },
        "4": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 9
        },
        "52": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 20
        },
        "53": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 23
        },
        "57": {
          "h": 6,
          "w": 10,
          "x": 4,
          "y": 20
        },
        "58": {
          "h": 6,
          "w": 10,
          "x": 14,
          "y": 20
        },
        "66": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 35
        },
        "68": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 35
        },
        "69": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 40
        },
        "70": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 40
        },
        "78": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "87": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "99": {
          "h": 5,
          "w": 7,
          "x": 17,
          "y": 3
        }
      },
      "settings": {},
      "tiles": {
        "100": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The total number of seconds in a specified period of time when no read or write operations were submitted.\nHigh idle time indicates underutilized resources like EBS volume attached to an EC2 instance that is not actively used.",
          "query": "timeseries x = avg(cloud.aws.ebs.VolumeIdleTime.By.VolumeId),\n            by: {VolumeId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId))\n                    AND in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($VolumeId)[])))}\n| fieldsAdd VolumeIdleTime = arrayLast(x)\n| sort VolumeIdleTime desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Volumes idle time",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "VolumeId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745392607147,
                "baseUnit": "second",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "second",
                "identifier": "y",
                "suffix": "",
                "unitCategory": "angle"
              }
            ]
          }
        },
        "101": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of read and write operation requests waiting to be completed in a specified period of time.",
          "query": "timeseries x = avg(cloud.aws.ebs.VolumeQueueLength.By.VolumeId),\n            by: {VolumeId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId))\n                    AND in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($VolumeId)[]))) OR\n                      matchesValue($VolumeId, \"ALL\")}\n| fieldsAdd Length = arrayLast(x)\n| sort Length desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Volumes queue length",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "x"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
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
                "VolumeId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745392607147,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "102": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of I/O credits (for gp2) or throughput credits (for st1 and sc1) remaining in the burst bucket.",
          "query": "timeseries x = avg(cloud.aws.ebs.BurstBalance.By.VolumeId),\n            by: {VolumeId, Name, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId))\n                    AND in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($VolumeId)[]))) OR\n                      matchesValue($VolumeId, \"ALL\")}\n| fieldsAdd y = arrayAvg(x)\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Burst balance percentage",
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
                  "color": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)",
                  "colorMode": "single-color",
                  "label": "Burst balance is being used",
                  "max": 99,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "VolumeId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745392607147,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "percent",
                "identifier": "y",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "105": {
          "content": "### AWS Auto Scaling groups\nMonitor the Auto Scaling groups that contain your fleet of EC2 instances. \n\n---",
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
          "query": "timeseries {max = max(cloud.aws.autoscaling.GroupMaxSize.By.AutoScalingGroupName),\n            min = max(cloud.aws.autoscaling.GroupMinSize.By.AutoScalingGroupName)},\n            by: {AutoScalingGroupName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region))\n                    AND in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($AutoscalingGroup)[])))}\n| fieldsAdd MaxSize = arrayLast(max), MinSize = arrayLast(min)\n| sort MaxSize desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Auto Scaling groups by group max size",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "AutoScalingGroupName"
                ],
                "categoryAxisLabel": "AutoScalingGroupName,aws.account.id,aws.region,dt.smartscape_source.id",
                "valueAxisLabel": "MaxSize,MinSize"
              },
              "truncationMode": "middle"
            }
          }
        },
        "107": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of instances that the Auto Scaling groups attempt to maintain.",
          "query": "timeseries cap = max(cloud.aws.autoscaling.GroupDesiredCapacity.By.AutoScalingGroupName),\n            by: {AutoScalingGroupName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region))\n                    AND in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($AutoscalingGroup)[])))}\n| fieldsAdd Capacity = arrayMax(cap)\n| sort Capacity desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Auto Scaling groups by desired capacity",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "AutoScalingGroupName"
                ],
                "categoryAxisLabel": "AutoScalingGroupName,aws.account.id,aws.region,dt.smartscape_source.id",
                "valueAxisLabel": "Capacity"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            }
          }
        },
        "108": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of instances that are running as part of the Auto Scaling group.",
          "query": "timeseries instances = avg(cloud.aws.autoscaling.GroupInServiceInstances.By.AutoScalingGroupName),\n            by: {AutoScalingGroupName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region))\n                    AND in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($AutoscalingGroup)[])))}\n| sort arrayAvg(instances) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "In-service instances",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "instances"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Number of instances"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "AutoScalingGroupName"
              ]
            }
          }
        },
        "109": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of instances that are pending. A pending instance is not yet in service.",
          "query": "timeseries instances = avg(cloud.aws.autoscaling.GroupPendingInstances.By.AutoScalingGroupName),\n            by: {AutoScalingGroupName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region))\n                    AND in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($AutoscalingGroup)[])))}\n| fieldsAdd currentValue = arrayLast(instances)\n| fieldsadd current_status = if(currentValue==0, \"\", else: \"PENDING\")\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pending instances",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "instances"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Number of instances"
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
                  "min": 0,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "AutoScalingGroupName"
              ]
            }
          }
        },
        "110": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of instances that are in a Standby state. Instances in this state are still running but are not actively in service.",
          "query": "timeseries instances = avg(cloud.aws.autoscaling.GroupStandbyInstances.By.AutoScalingGroupName),\n            by: {AutoScalingGroupName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region))\n                    AND in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($AutoscalingGroup)[])))}\n| sort arrayAvg(instances) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Standby instances",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "instances"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Number of instances"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "AutoScalingGroupName"
              ]
            }
          }
        },
        "111": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of instances that are in the process of terminating. This metric does not include instances that are in service, pending, or returning to a warm pool after Auto Scaling group scale in.",
          "query": "timeseries instances = avg(cloud.aws.autoscaling.GroupTerminatingInstances.By.AutoScalingGroupName),\n            by: {AutoScalingGroupName, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region))\n                    AND in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($AutoscalingGroup)[])))}\n| sort arrayAvg(instances) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Terminating instances",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "instances"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Number of instances"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "AutoScalingGroupName"
              ]
            }
          }
        },
        "112": {
          "content": "##### Network",
          "type": "markdown"
        },
        "116": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries checkFailedCount=max(cloud.aws.ec2.StatusCheckFailed.By.InstanceId),\n            by: {InstanceId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(checkFailedCount) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Status Check failures",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "checkFailedCount"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "InstanceId"
              ]
            }
          }
        },
        "117": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries CPUCreditsBalance=avg(cloud.aws.ec2.CPUCreditBalance.By.InstanceId),\n            by: {InstanceId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(CPUCreditsBalance) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU Credits Balance",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "InstanceId"
              ]
            }
          }
        },
        "118": {
          "content": "##### Usage",
          "type": "markdown"
        },
        "119": {
          "content": " ",
          "type": "markdown"
        },
        "120": {
          "content": " ",
          "type": "markdown"
        },
        "121": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_EC2_INSTANCE\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($SmartscapeId))\n| fieldsAdd aws.object\n| parse aws.object, \"JSON:json\"\n| fields instanceType = json[configuration][instanceType]\n| filter isNotNull(instanceType)\n| summarize  count=count(), by: {instanceType}\n| sort count desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "EC2 instances per type",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "instanceType"
                ],
                "categoryAxisLabel": "Instance Type",
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
        "29": {
          "content": "### AWS EC2\n\nInstantly view the status of your EC2 environment at a glance. Dive into detailed insights for specific instances to monitor and predict anomalies, review state, health, and performance metrics for your EC2 Instances, EBS volumes, and Auto Scaling Groups.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"vm\",\"dt.smartscape.aws_ec2_instance\":\"$SmartscapeId\"}).\n\n---",
          "type": "markdown"
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_EC2_INSTANCE\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($SmartscapeId))\n| summarize count=count(), by: {aws.region}\n| sort count desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "EC2 instances per region",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "aws.region"
                ],
                "categoryAxisLabel": "Region",
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
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "smartscapeNodes \"AWS_EC2_INSTANCE\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($SmartscapeId))\n| summarize count=countDistinct(id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active EC2 instances",
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
                  "field": "count",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Active EC2 instances (ver.)",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1737039581091,
                "baseUnit": "none",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
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
          "description": "",
          "query": "timeseries avg = avg(cloud.aws.ec2.CPUUtilization.By.InstanceId),\n            by: {InstanceId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arrayAvg(avg) desc\n| limit toLong($Limit)",
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
                  "avg"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Percentage"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "InstanceId"
              ]
            },
            "legend": {
              "ratio": 40
            },
            "unitsOverrides": [
              {
                "added": 1745584461256,
                "baseUnit": "percent",
                "cascade": null,
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
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The total number of bytes received by the instance on all network interfaces.",
          "query": "timeseries  NetworkInput = sum(cloud.aws.ec2.NetworkIn.By.InstanceId),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd groupSum = arraySum(NetworkInput)\n| summarize x = sum(groupSum)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total network input",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "error",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "x",
              "sparklineSettings": {
                "record": "NetworkInput"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1737044561114,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "x",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "53": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The total number of bytes sent out by the instance on all network interfaces.",
          "query": "timeseries  NetworkOutput = sum(cloud.aws.ec2.NetworkOut.By.InstanceId),\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsAdd groupSum = arraySum(NetworkOutput)\n| summarize x = sum(groupSum)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total network output",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "error",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "x",
              "sparklineSettings": {
                "record": "NetworkOut"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1737044658043,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 2,
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
          "query": "timeseries in = sum(cloud.aws.ec2.NetworkIn.By.InstanceId),\n            by: {InstanceId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(in) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network input",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "in"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
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
                "InstanceId"
              ]
            },
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": [
              {
                "added": 1745584720251,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "max",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries out = sum(cloud.aws.ec2.NetworkOut.By.InstanceId),\n            by: {InstanceId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| sort arraySum(out) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network output",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "out"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Bytes"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "InstanceId"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745584739299,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "max",
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
          "description": "",
          "query": "timeseries x = sum(cloud.aws.ebs.VolumeReadBytes.By.VolumeId),\n        by: {VolumeId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId))\n                    AND in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($VolumeId)[]))) OR\n                      matchesValue($VolumeId, \"ALL\")}\n| fieldsAdd y = arraySum(x)\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Read bytes",
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
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Bytes"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "VolumeId"
              ]
            },
            "legend": {
              "ratio": 21
            },
            "unitsOverrides": [
              {
                "added": 1745585029433,
                "baseUnit": "byte",
                "cascade": null,
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
        "68": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = sum(cloud.aws.ebs.VolumeWriteBytes.By.VolumeId),\n        by: {VolumeId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId))\n                    AND in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($VolumeId)[]))) OR\n                      matchesValue($VolumeId, \"ALL\")}\n| fieldsAdd y = arraySum(x)\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Write bytes",
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
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Bytes"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "VolumeId"
              ]
            },
            "legend": {
              "ratio": 36
            },
            "unitsOverrides": [
              {
                "added": 1745585099971,
                "baseUnit": "byte",
                "cascade": null,
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
        "69": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x = sum(cloud.aws.ebs.VolumeReadOps.By.VolumeId),\n        by: {VolumeId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId))\n                    AND in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($VolumeId)[]))) OR\n                      matchesValue($VolumeId, \"ALL\")}\n| fieldsAdd y = arraySum(x)\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Read operations",
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
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Number of operations"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "VolumeId"
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
          "description": "",
          "query": "timeseries x = sum(cloud.aws.ebs.VolumeWriteOps.By.VolumeId),\n        by: {VolumeId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId))\n                    AND in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($VolumeId)[]))) OR\n                      matchesValue($VolumeId, \"ALL\")}\n| fieldsAdd y = arraySum(x)\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Write operations",
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
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Number of operations"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "VolumeId"
              ]
            },
            "legend": {
              "ratio": 15
            }
          }
        },
        "78": {
          "content": "### AWS EBS\nMonitor your block-storage service designed for EC2.\n\n---",
          "type": "markdown"
        },
        "87": {
          "content": "##### Disk activity",
          "type": "markdown"
        },
        "99": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The most recent percentage of physical CPU time that Amazon EC2 uses to run the EC2 instance, which includes time spent to run both the user code and the Amazon EC2 code.",
          "query": "timeseries max = max(cloud.aws.ec2.CPUUtilization.By.InstanceId), \n            by: {InstanceId, aws.account.id, aws.region, dt.smartscape_source.id},\n            filter:{in(aws.account.id, array($AccountId)) AND\n                    in(aws.region, array($Region)) AND\n                    in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n| fieldsadd lastMaxCPU=toLong(arrayLast(max))\n| fields InstanceId, lastMaxCPU\n| sort lastMaxCPU desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utilization for instances with highest usage",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.smartscape.aws_ec2_instance",
                "valueAxis": [
                  "lastMaxCPU"
                ],
                "valueAxisLabel": "lastMaxCPU"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            },
            "unitsOverrides": [
              {
                "added": 1745392639266,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "percent",
                "identifier": "lastMaxCPU",
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
          "input": "smartscapeNodes \"AWS_EC2_INSTANCE\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AWS_EC2_INSTANCE\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
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
          "input": "smartscapeNodes \"AWS_EC2_INSTANCE\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
          "key": "Region",
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
          "input": "smartscapeEdges \"*\"\n| fieldsAdd source = toString(source_id), target = toString(target_id)\n| filter startsWith(source, \"AWS_EC2_VOLUME-\")\n| filter in(toString(target), array($SmartscapeId))\n| fieldsKeep source",
          "key": "VolumeId",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "editable": true,
          "input": "smartscapeEdges \"*\"\n| fieldsAdd source = toString(source_id), target = toString(target_id)\n| filter startsWith(source, \"AWS_AUTOSCALING_\") OR startsWith(target, \"AWS_AUTOSCALING_\")\n| filter in(toString(target), array($SmartscapeId))\n| fieldsKeep source ",
          "key": "AutoscalingGroup",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": false
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
  custom_id = "dynatrace.clouds.aws-ec2"
  # private = false
}
