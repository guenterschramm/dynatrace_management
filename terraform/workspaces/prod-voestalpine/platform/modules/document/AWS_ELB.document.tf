resource "dynatrace_document" "AWS_ELB" {
  name      = "AWS ELB"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "10": {
          "h": 2,
          "w": 3,
          "x": 6,
          "y": 5
        },
        "11": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 28
        },
        "12": {
          "h": 6,
          "w": 18,
          "x": 6,
          "y": 25
        },
        "13": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 19
        },
        "14": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 19
        },
        "16": {
          "h": 6,
          "w": 18,
          "x": 6,
          "y": 13
        },
        "17": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 3
        },
        "18": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 13
        },
        "19": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 16
        },
        "21": {
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 11
        },
        "22": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 11
        },
        "23": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 11
        },
        "24": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 11
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "34": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 52
        },
        "35": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 66
        },
        "36": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 5
        },
        "37": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 70
        },
        "38": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 70
        },
        "39": {
          "h": 6,
          "w": 16,
          "x": 8,
          "y": 67
        },
        "4": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 31
        },
        "40": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 61
        },
        "42": {
          "h": 6,
          "w": 16,
          "x": 0,
          "y": 73
        },
        "43": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 73
        },
        "44": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 67
        },
        "46": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 67
        },
        "47": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 61
        },
        "49": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "5": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 34
        },
        "50": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 55
        },
        "51": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 58
        },
        "52": {
          "h": 6,
          "w": 18,
          "x": 6,
          "y": 55
        },
        "54": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 38
        },
        "57": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 41
        },
        "58": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 41
        },
        "59": {
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 41
        },
        "6": {
          "h": 2,
          "w": 3,
          "x": 9,
          "y": 5
        },
        "60": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 41
        },
        "62": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 3
        },
        "63": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 45
        },
        "64": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 48
        },
        "65": {
          "h": 6,
          "w": 18,
          "x": 6,
          "y": 45
        },
        "66": {
          "h": 2,
          "w": 8,
          "x": 16,
          "y": 43
        },
        "67": {
          "h": 2,
          "w": 8,
          "x": 8,
          "y": 43
        },
        "68": {
          "h": 2,
          "w": 8,
          "x": 0,
          "y": 43
        },
        "69": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "70": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 3
        },
        "71": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "72": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 37
        },
        "73": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 51
        },
        "74": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 79
        },
        "8": {
          "h": 6,
          "w": 18,
          "x": 6,
          "y": 31
        },
        "9": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 25
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### AWS Application Load Balancer\n\nApplication LB operates at the request level (layer 7), routing traffic to targets (EC2 instances, containers, IP addresses, and Lambda functions) based on the content of the request. Gain more understanding of the status of your ALBs by checking the health of your hosts/targets, response times and number of errors.\n\n---",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of errors hat originate from the load balancer in a given period.",
          "query": "timeseries {a1 = sum(cloud.aws.applicationelb.HTTPCode_ELB_3XX_Count.By.AvailabilityZone.LoadBalancer),\n           a2 = sum(cloud.aws.applicationelb.HTTPCode_ELB_4XX_Count.By.AvailabilityZone.LoadBalancer),\n           a3 = sum(cloud.aws.applicationelb.HTTPCode_ELB_5XX_Count.By.AvailabilityZone.LoadBalancer)},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   (in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) OR \n                     in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[])))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true,\n           union: true\n| fieldsAdd count = arraySum(a1)\n| fieldsAdd errors = arraySum(a2) + arraySum(a3)\n| fieldsAdd errorPercentage = errors / (count+errors) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ALB error rate",
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
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.applicationelb.HTTPCode_ELB_5XX_Count.By.AvailabilityZone.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ELB 5xx responses",
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
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries a1 = sum(cloud.aws.applicationelb.HTTPCode_ELB_3XX_Count.By.AvailabilityZone.LoadBalancer),\n           a2 = sum(cloud.aws.applicationelb.HTTPCode_ELB_4XX_Count.By.AvailabilityZone.LoadBalancer),\n           a3 = sum(cloud.aws.applicationelb.HTTPCode_ELB_5XX_Count.By.AvailabilityZone.LoadBalancer),\n           by: {LoadBalancer, aws.account.id, aws.region, AvailabilityZone, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           union: true\n\n| fieldsAdd Success = arraySum(a1)\n| fieldsAdd Error = arraySum(a2) + arraySum(a3)\n| sort Error desc, Success desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ELB error and successful requests by load balancer",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "LoadBalancer"
                ],
                "categoryAxisLabel": "Load Balancers",
                "groupMode": "grouped",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Success",
                  "Error"
                ],
                "valueAxisLabel": "Success,Error"
              },
              "categoryOverrides": {
                "Error": {
                  "added": 527908.2000000002,
                  "color": "#AE132D"
                },
                "Success": {
                  "added": 485820.2000000002,
                  "color": "#1C520A"
                }
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#1C520A",
                  "field": "Success",
                  "value": null
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#AE132D",
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
                "added": 1740140938443,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Success",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1740986451970,
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
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The time elapsed, in seconds, after the request leaves the load balancer until the target starts to send the response headers through time in a given period.",
          "query": "timeseries y=avg(cloud.aws.applicationelb.TargetResponseTime.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           by: {LoadBalancer, aws.account.id, aws.region, AvailabilityZone, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))}\n\n| fieldsAdd x = arrayAvg(y)\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Target response time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "y"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Response time"
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
                "LoadBalancer"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1739893047156,
                "baseUnit": "second",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "time"
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
          "description": "The number of requests processed over IPv4 and IPv6 through time in a given period. This metric is only incremented for requests where the load balancer node was able to choose a target. Requests that are rejected before a target is chosen are not reflected in this metric.",
          "query": "timeseries y=sum(cloud.aws.applicationelb.RequestCount.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           by: {LoadBalancer, aws.account.id, aws.region, AvailabilityZone, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))}\n\n| fieldsAdd x = arraySum(y)\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Requests",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "y"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "Requests"
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
                "LoadBalancer"
              ]
            },
            "unitsOverrides": []
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
          "query": "timeseries a1 = max(cloud.aws.applicationelb.HealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           a2 = max(cloud.aws.applicationelb.UnHealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           by: {LoadBalancer, aws.account.id, aws.region, AvailabilityZone, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           union: true\n\n| fieldsAdd Healthy = arrayLast(a1)\n| fieldsAdd Unhealthy = arrayLast(a2)\n| sort (Healthy+Unhealthy) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Healthy and unhealthy hosts by load balancer",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "LoadBalancer"
                ],
                "categoryAxisLabel": "Load Balancers",
                "groupMode": "grouped",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Healthy",
                  "Unhealthy"
                ],
                "valueAxisLabel": "Healthy,Unhealthy"
              },
              "categoryOverrides": {
                "Healthy": {
                  "added": 485820.2000000002,
                  "color": "#1C520A"
                },
                "Unhealthy": {
                  "added": 527908.2000000002,
                  "color": "#AE132D"
                }
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#1C520A",
                  "field": "Healthy",
                  "value": null
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#AE132D",
                  "field": "Unhealthy",
                  "value": null
                }
              ]
            },
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": [
              {
                "added": 1740140938443,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Healthy",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1740986472975,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Unhealthy",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "description": "Percentage of targets that are considered unhealthy in a given period.",
          "query": "timeseries {a1 = max(cloud.aws.applicationelb.HealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           a2 = max(cloud.aws.applicationelb.UnHealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup)},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   (in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) OR \n                     in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[])))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true,\n           union: true\n| fieldsAdd Healthy = arrayLast(a1)\n| fieldsAdd Unhealthy = arrayLast(a2)\n| fieldsAdd HealthyPercentage = Unhealthy / (Healthy+Unhealthy) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ALB unhealthy rate",
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
                  "field": "HealthyPercentage",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "HealthyPercentage",
                  "value": 5
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "HealthyPercentage",
                  "value": 15
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "resutl",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "HealthyPercentage",
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
                "identifier": "HealthyPercentage",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "",
          "query": "timeseries x=max(cloud.aws.applicationelb.HealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arrayLast(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Healthy hosts",
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
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=max(cloud.aws.applicationelb.UnHealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arrayLast(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Unhealthy hosts",
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
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
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
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=sum(cloud.aws.applicationelb.ActiveConnectionCount.By.AvailabilityZone.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n| fieldsAdd x = arrayLast(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active connections",
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
                "isVisible": false,
                "record": "y"
              },
              "trend": {
                "isVisible": false
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
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=sum(cloud.aws.applicationelb.NewConnectionCount.By.AvailabilityZone.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arrayLast(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "New connections",
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
                "isVisible": false,
                "record": "y"
              },
              "trend": {
                "isVisible": false
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
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=sum(cloud.aws.applicationelb.ProcessedBytes.By.AvailabilityZone.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total processed bytes",
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
                "isVisible": false,
                "record": "y"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1739893047156,
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
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=sum(cloud.aws.applicationelb.ConsumedLCUs.By.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arrayLast(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Consumed capacity units",
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
                "isVisible": false,
                "record": "y"
              },
              "trend": {
                "isVisible": false
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
        "33": {
          "content": "##### Errors",
          "type": "markdown"
        },
        "34": {
          "content": "### AWS Classic Load Balancer\n\nClassic Load Balancer provides basic load balancing across multiple Amazon EC2 instances and operates at both the request level and connection level. Gain more understanding of the status of your ALBs by checking the health of your hosts/targets, latencies and number of errors.\n\n---\n",
          "type": "markdown"
        },
        "35": {
          "content": "##### Errors",
          "type": "markdown"
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of HTTP response codes generated by registered instances in a given period.",
          "query": "timeseries {a1 = sum(cloud.aws.elb.HTTPCode_Backend_2XX.By.AvailabilityZone.LoadBalancerName),\n           a2 = sum(cloud.aws.elb.HTTPCode_Backend_3XX.By.AvailabilityZone.LoadBalancerName),\n           a3 = sum(cloud.aws.elb.HTTPCode_Backend_4XX.By.AvailabilityZone.LoadBalancerName),\n           a4 = sum(cloud.aws.elb.HTTPCode_Backend_5XX.By.AvailabilityZone.LoadBalancerName)},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   (in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) OR \n                     in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[])))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true,\n           union: true\n| fieldsAdd count = arraySum(a1) + arraySum(a2)\n| fieldsAdd errors = arraySum(a3) + arraySum(a4)\n| fieldsAdd errorPercentage = errors / (count+errors) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CLB backend error rate",
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
                "record": "q"
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
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.elb.HTTPCode_Backend_4XX.By.AvailabilityZone.LoadBalancerName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Backend 4xx responses",
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
                  "customColor": "#ECA440",
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
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.elb.HTTPCode_Backend_5XX.By.AvailabilityZone.LoadBalancerName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Backend 5xx responses",
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
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
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
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries a1 = sum(cloud.aws.elb.HTTPCode_Backend_2XX.By.AvailabilityZone.LoadBalancerName),\n           a2 = sum(cloud.aws.elb.HTTPCode_Backend_3XX.By.AvailabilityZone.LoadBalancerName),\n           a3 = sum(cloud.aws.elb.HTTPCode_Backend_4XX.By.AvailabilityZone.LoadBalancerName),\n           a4 = sum(cloud.aws.elb.HTTPCode_Backend_5XX.By.AvailabilityZone.LoadBalancerName),\n           by: {aws.account.id, aws.region, LoadBalancerName, AvailabilityZone, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           union: true\n\n| fieldsAdd Success = arraySum(a1) + arraySum(a2)\n| fieldsAdd Error = arraySum(a3) + arraySum(a4)\n| sort Error desc, Success desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Backend error and successful requests by load balancer",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "LoadBalancerName"
                ],
                "categoryAxisLabel": "Load Balancers",
                "groupMode": "grouped",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Success",
                  "Error"
                ],
                "valueAxisLabel": "Success,Error"
              },
              "categoryOverrides": {
                "Error": {
                  "added": 527908.2000000002,
                  "color": "#AE132D"
                },
                "Success": {
                  "added": 485820.2000000002,
                  "color": "#1C520A"
                }
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#1C520A",
                  "field": "Success",
                  "value": null
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#AE132D",
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
                "added": 1740140938443,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Success",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1740986431266,
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
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.applicationelb.HTTPCode_Target_4XX_Count.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Target 4xx responses",
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
                  "customColor": "#ECA440",
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
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of requests completed or connections made during the specified interval through time in a given period.",
          "query": "timeseries y=sum(cloud.aws.elb.RequestCount.By.AvailabilityZone.LoadBalancerName),\n           by: {aws.account.id, aws.region, LoadBalancerName, AvailabilityZone, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[]))) AND\n                   in(aws.region, array($Region))}\n\n| fieldsAdd x = arraySum(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Requests",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "y"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "AvailabilityZone",
                "dt.smartscape_source.id",
                "x"
              ],
              "leftYAxisSettings": {
                "label": "Requests"
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
            "unitsOverrides": []
          }
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of connections that were not successfully established between the load balancer and the registered instances through time in a given period.",
          "query": "timeseries y=sum(cloud.aws.elb.BackendConnectionErrors.By.AvailabilityZone.LoadBalancerName),\n           by: {aws.account.id, aws.region, LoadBalancerName, AvailabilityZone, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[]))) AND\n                   in(aws.region, array($Region))}\n\n| fieldsAdd x = arraySum(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Backend connection errors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "y"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "AvailabilityZone",
                "dt.smartscape_source.id",
                "x"
              ],
              "leftYAxisSettings": {
                "label": "Requests"
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
            "legend": {
              "ratio": 22
            },
            "unitsOverrides": []
          }
        },
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=sum(cloud.aws.elb.BackendConnectionErrors.By.AvailabilityZone.LoadBalancerName),\n           by: {aws.account.id, aws.region, LoadBalancerName, AvailabilityZone, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[]))) AND\n                   in(aws.region, array($Region))}\n\n| fieldsAdd y = arraySum(y)\n| sort y desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Backend connection errors by load balancer",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "LoadBalancerName"
                ],
                "categoryAxisLabel": "Load balancers",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "y"
                ],
                "valueAxisLabel": "y"
              },
              "categoryOverrides": {
                "bmrozinski-classic-elb": {
                  "added": 2022817.2999999998,
                  "color": "#AE132D"
                }
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
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#AE132D",
                  "field": "DT.name",
                  "type": "string",
                  "value": "bmrozinski-classic-elb"
                }
              ]
            },
            "legend": {
              "ratio": 22
            },
            "unitsOverrides": [
              {
                "added": 1745925345279,
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
        "44": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.elb.HTTPCode_ELB_4XX.By.AvailabilityZone.LoadBalancerName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ELB 4xx responses",
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
                  "customColor": "#ECA440",
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
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.elb.HTTPCode_ELB_5XX.By.AvailabilityZone.LoadBalancerName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ELB 5xx responses",
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
                  "customColor": "#ECA440",
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
        "47": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The total time elapsed, in seconds, from the time the load balancer sent the request to a registered instance until the instance started to send the response headers through time in a given period.",
          "query": "timeseries y=Avg(cloud.aws.elb.Latency.By.AvailabilityZone.LoadBalancerName),\n           by: {aws.account.id, aws.region, LoadBalancerName, AvailabilityZone, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[]))) AND\n                   in(aws.region, array($Region))}\n| fieldsAdd x = arrayAvg(y)\n| sort x desc\n| limit toLong($Limit)",
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
                  "y"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "aws.account.id",
                "aws.region",
                "LoadBalancerName",
                "dt.smartscape_source.id",
                "x"
              ],
              "leftYAxisSettings": {
                "label": "Latency"
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
                "added": 1740996871535,
                "baseUnit": "second",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "49": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of unhealthy instances registered with your load balancer in a given period.",
          "query": "timeseries {a1 = max(cloud.aws.elb.HealthyHostCount.By.AvailabilityZone.LoadBalancerName),\n           a2 = max(cloud.aws.elb.UnHealthyHostCount.By.AvailabilityZone.LoadBalancerName)},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   (in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) OR \n                     in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[])))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true,\n           union: true\n| fieldsAdd Healthy = arrayLast(a1)\n| fieldsAdd Unhealthy = arrayLast(a2)\n| fieldsAdd HealthyPercentage = Unhealthy / (Healthy+Unhealthy) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CLB unhealthy rate",
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
                  "field": "HealthyPercentage",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "HealthyPercentage",
                  "value": 5
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "HealthyPercentage",
                  "value": 15
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "resutl",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "HealthyPercentage",
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
                "identifier": "HealthyPercentage",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "",
          "query": "timeseries x=sum(cloud.aws.applicationelb.HTTPCode_Target_5XX_Count.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Target 5xx responses",
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
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=max(cloud.aws.elb.HealthyHostCount.By.AvailabilityZone.LoadBalancerName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arrayLast(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Healthy hosts",
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
        "51": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=max(cloud.aws.elb.UnHealthyHostCount.By.AvailabilityZone.LoadBalancerName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arrayLast(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Unhealthy hosts",
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
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
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
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Distribution of healthy and unhealthy instances registered with your load balancer in a given period.",
          "query": "timeseries a1 = max(cloud.aws.elb.HealthyHostCount.By.AvailabilityZone.LoadBalancerName),\n           a2 = max(cloud.aws.elb.UnHealthyHostCount.By.AvailabilityZone.LoadBalancerName),\n           by: {aws.account.id, aws.region, LoadBalancerName, AvailabilityZone, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           union: true\n\n| fieldsAdd Healthy = arrayLast(a1)\n| fieldsAdd Unhealthy = arrayLast(a2)\n| sort (Healthy+Unhealthy) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Healthy and unhealthy hosts by load balancer",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "LoadBalancerName"
                ],
                "categoryAxisLabel": "Load Balancers",
                "groupMode": "grouped",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Healthy",
                  "Unhealthy"
                ],
                "valueAxisLabel": "Healthy,Unhealthy"
              },
              "categoryOverrides": {
                "Healthy": {
                  "added": 485820.2000000002,
                  "color": "#1C520A"
                },
                "Unhealthy": {
                  "added": 527908.2000000002,
                  "color": "#AE132D"
                }
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#1C520A",
                  "field": "Healthy",
                  "value": null
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#AE132D",
                  "field": "Unhealthy",
                  "value": null
                }
              ]
            },
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": [
              {
                "added": 1740140938443,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Healthy",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1740986472975,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Unhealthy",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "54": {
          "content": "### AWS Network Load Balancer\n\nNetwork Load Balancer operates at the connection level (Layer 4), routing connections to targets (Amazon EC2 instances, microservices, and containers) within Amazon VPC, based on IP protocol data. Gain more understanding of the status of your NLBs by checking the health of your hosts/targets and TCP resets from different sources.\n\n---",
          "type": "markdown"
        },
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The total number of bytes processed by the load balancer, including TCP/IP headers in a given period. This count includes traffic to and from targets, minus health check traffic.",
          "query": "timeseries y=sum(cloud.aws.networkelb.ProcessedBytes.By.AvailabilityZone.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total processed bytes",
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
                "isVisible": false,
                "record": "y"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1739893047156,
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
        "58": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of load balancer capacity units (LCU) used by your load balancer in a given period.",
          "query": "timeseries y=sum(cloud.aws.networkelb.ConsumedLCUs.By.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arrayLast(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Consumed capacity units",
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
                "isVisible": false,
                "record": "y"
              },
              "trend": {
                "isVisible": false
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
        "59": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The total number of concurrent flows (or connections) from clients to targets in a given period.",
          "query": "timeseries y=sum(cloud.aws.networkelb.ActiveFlowCount.By.AvailabilityZone.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arrayLast(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active flows",
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
                "isVisible": false,
                "record": "y"
              },
              "trend": {
                "isVisible": false
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
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of errors generated by the targets in a given period.",
          "query": "timeseries {a1 = sum(cloud.aws.applicationelb.HTTPCode_Target_2XX_Count.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           a2 = sum(cloud.aws.applicationelb.HTTPCode_Target_3XX_Count.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           a3 = sum(cloud.aws.applicationelb.HTTPCode_Target_4XX_Count.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           a4 = sum(cloud.aws.applicationelb.HTTPCode_Target_5XX_Count.By.AvailabilityZone.LoadBalancer.TargetGroup)},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   (in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) OR \n                     in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[])))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true,\n           union: true\n| fieldsAdd count = arraySum(a1) + arraySum(a2)\n| fieldsAdd errors = arraySum(a3) + arraySum(a4)\n| fieldsAdd errorPercentage = errors / (count+errors) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ALB target error rate",
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
                "record": "q"
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
        "60": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The total number of new flows (or connections) established from clients to targets in a given period.",
          "query": "timeseries y=sum(cloud.aws.networkelb.NewFlowCount.By.AvailabilityZone.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arrayLast(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "New flows",
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
                "isVisible": false,
                "record": "y"
              },
              "trend": {
                "isVisible": false
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
        "62": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of targets that are considered unhealthy in a given period.",
          "query": "timeseries {a1 = max(cloud.aws.networkelb.HealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           a2 = max(cloud.aws.networkelb.UnHealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup)},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   (in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) OR \n                     in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbClassicInstanceId)[])))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true,\n           union: true\n| fieldsAdd Healthy = arrayLast(a1)\n| fieldsAdd Unhealthy = arrayLast(a2)\n| fieldsAdd HealthyPercentage = Unhealthy / (Healthy+Unhealthy) * 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "NLB unhealthy rate",
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
                  "field": "HealthyPercentage",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "HealthyPercentage",
                  "value": 5
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "HealthyPercentage",
                  "value": 15
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "resutl",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "HealthyPercentage",
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
                "identifier": "HealthyPercentage",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "63": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=max(cloud.aws.networkelb.HealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arrayLast(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Healthy hosts",
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
        "64": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=max(cloud.aws.networkelb.UnHealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arrayLast(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Unhealthy hosts",
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
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
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
        "65": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries a1 = max(cloud.aws.networkelb.HealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           a2 = max(cloud.aws.networkelb.UnHealthyHostCount.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           by: {LoadBalancer, aws.account.id, aws.region, AvailabilityZone},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           union: true\n\n| fieldsAdd Healthy = arrayLast(a1)\n| fieldsAdd Unhealthy = arrayLast(a2)\n| sort (Healthy+Unhealthy) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Healthy and unhealthy hosts by load balancer",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "LoadBalancer"
                ],
                "categoryAxisLabel": "Load Balancers",
                "groupMode": "grouped",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Healthy",
                  "Unhealthy"
                ],
                "valueAxisLabel": "Healthy,Unhealthy"
              },
              "categoryOverrides": {
                "Healthy": {
                  "added": 485820.2000000002,
                  "color": "#1C520A"
                },
                "Unhealthy": {
                  "added": 527908.2000000002,
                  "color": "#AE132D"
                }
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#1C520A",
                  "field": "Healthy",
                  "value": null
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#AE132D",
                  "field": "Unhealthy",
                  "value": null
                }
              ]
            },
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": [
              {
                "added": 1740140938443,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Healthy",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1740986472975,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Unhealthy",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "description": "The total number of reset (RST) packets sent from a target to a client in a given period. These resets are generated by the target and forwarded by the load balancer.",
          "query": "timeseries y=sum(cloud.aws.networkelb.TCP_Target_Reset_Count.By.AvailabilityZone.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total TCP target resets",
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
                "isVisible": false,
                "record": "y"
              },
              "trend": {
                "isVisible": false
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
        "67": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The total number of reset (RST) packets generated by the load balancer in a given period.",
          "query": "timeseries y=sum(cloud.aws.networkelb.TCP_ELB_Reset_Count.By.AvailabilityZone.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total TCP ELB resets",
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
                "isVisible": false,
                "record": "y"
              },
              "trend": {
                "isVisible": false
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
        "68": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The total number of reset (RST) packets sent from a client to a target in a given period. These resets are generated by the client and forwarded by the load balancer.",
          "query": "timeseries y=sum(cloud.aws.networkelb.TCP_Client_Reset_Count.By.AvailabilityZone.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total TCP client resets",
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
                "isVisible": false,
                "record": "y"
              },
              "trend": {
                "isVisible": false
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
        "69": {
          "content": "### AWS Elastic Load Balancing\n\nOverview of the health and error rate of your load balancers, depending on their types (Application, Network, Classic).\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"network\",\"dt.smartscape.aws_elasticloadbalancingv2_loadbalancer\":\"$ElbInstanceId\"}).\n\n---",
          "type": "markdown"
        },
        "70": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"*\"\n| filter in(type, {\"AWS_ELASTICLOADBALANCING_LOADBALANCER\", \"AWS_ELASTICLOADBALANCINGV2_LOADBALANCER\"})\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($ElbInstanceId)) OR in(toString(id), array($ElbClassicInstanceId))\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Elastic load balancers",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count()",
              "trend": {
                "isVisible": true
              }
            }
          }
        },
        "71": {
          "content": " ",
          "type": "markdown"
        },
        "72": {
          "content": " ",
          "type": "markdown"
        },
        "73": {
          "content": " ",
          "type": "markdown"
        },
        "74": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
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
          "query": "timeseries a1 = sum(cloud.aws.applicationelb.HTTPCode_Target_2XX_Count.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           a2 = sum(cloud.aws.applicationelb.HTTPCode_Target_3XX_Count.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           a3 = sum(cloud.aws.applicationelb.HTTPCode_Target_4XX_Count.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           a4 = sum(cloud.aws.applicationelb.HTTPCode_Target_5XX_Count.By.AvailabilityZone.LoadBalancer.TargetGroup),\n           by: {LoadBalancer, aws.account.id, aws.region, AvailabilityZone, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           union: true\n\n\n\n| fieldsAdd Success = arraySum(a1) + arraySum(a2)\n| fieldsAdd Error = arraySum(a3)  + arraySum(a4)\n| sort Error desc, Success desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Target error and successful requests by load balancer",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "LoadBalancer"
                ],
                "categoryAxisLabel": "Load Balancers",
                "groupMode": "grouped",
                "isValueLabelVisible": false,
                "valueAxis": [
                  "Success",
                  "Error"
                ],
                "valueAxisLabel": "Success,Error"
              },
              "categoryOverrides": {
                "Error": {
                  "added": 527908.2000000002,
                  "color": "#AE132D"
                },
                "Success": {
                  "added": 485820.2000000002,
                  "color": "#1C520A"
                }
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#1C520A",
                  "field": "Success",
                  "value": null
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": "#AE132D",
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
                "added": 1740140938443,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Success",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1740986431266,
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
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.applicationelb.HTTPCode_ELB_4XX_Count.By.AvailabilityZone.LoadBalancer),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($ElbInstanceId)[]))) AND\n                   in(aws.region, array($Region))},\n           nonempty:true\n\n| fieldsAdd x = arraySum(x)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ELB 4xx responses",
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
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"AWS_ELASTICLOADBALANCINGV2_LOADBALANCER\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
          "key": "ElbInstanceId",
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
          "input": "smartscapeNodes \"AWS_ELASTICLOADBALANCING_LOADBALANCER\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
          "key": "ElbClassicInstanceId",
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
          "input": "smartscapeNodes \"*\"\n| filter in(type, {\"AWS_ELASTICLOADBALANCING_LOADBALANCER\", \"AWS_ELASTICLOADBALANCINGV2_LOADBALANCER\"})\n| sort aws.account.id asc\n| summarize collectDistinct(aws.account.id)",
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
          "input": "smartscapeNodes \"*\"\n| filter in(type, {\"AWS_ELASTICLOADBALANCING_LOADBALANCER\", \"AWS_ELASTICLOADBALANCINGV2_LOADBALANCER\"})\n| sort aws.region asc\n| summarize collectDistinct(aws.region)",
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
  custom_id = "dynatrace.clouds.aws-elb"
  # private = false
}
