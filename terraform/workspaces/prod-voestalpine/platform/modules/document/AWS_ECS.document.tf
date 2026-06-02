resource "dynatrace_document" "AWS_ECS" {
  name      = "AWS ECS"
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
          "x": 0,
          "y": 26
        },
        "10": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 40
        },
        "11": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 40
        },
        "12": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 43
        },
        "13": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "14": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 32
        },
        "15": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "16": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 46
        },
        "17": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 47
        },
        "18": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 47
        },
        "19": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 47
        },
        "2": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 29
        },
        "20": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 50
        },
        "21": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "22": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 19
        },
        "23": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 19
        },
        "24": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 19
        },
        "25": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 19
        },
        "26": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 22
        },
        "27": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 22
        },
        "28": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 22
        },
        "29": {
          "h": 3,
          "w": 6,
          "x": 18,
          "y": 22
        },
        "3": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 33
        },
        "30": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 6
        },
        "31": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 6
        },
        "32": {
          "h": 3,
          "w": 8,
          "x": 8,
          "y": 3
        },
        "33": {
          "h": 3,
          "w": 8,
          "x": 16,
          "y": 3
        },
        "34": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "35": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 53
        },
        "36": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 53
        },
        "37": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 53
        },
        "38": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 56
        },
        "4": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 36
        },
        "40": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 59
        },
        "41": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 11
        },
        "42": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 11
        },
        "43": {
          "h": 3,
          "w": 8,
          "x": 0,
          "y": 3
        },
        "5": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 26
        },
        "6": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 26
        },
        "7": {
          "h": 6,
          "w": 9,
          "x": 6,
          "y": 33
        },
        "8": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 33
        },
        "9": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 40
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### AWS Elastic Container Service\n\nOverview of the utilization of your containers. Percentages reaching 100% indicate potential problems or the need to scale.\n\nInspect the selected instances in the [Clouds App](/ui/intent/dynatrace.clouds/view_aws_service/#{\"dt.timeframe\":{\"to\":\"$dt_timeframe_to\",\"from\":\"$dt_timeframe_from\"},\"explorer.type\":\"container\",\"dt.smartscape.aws_ecs_cluster\":\"$SmartscapeId\"}).\n\n---",
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
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.CpuUtilized.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayAvg(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average CPU units utilized",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1745911351469,
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
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=avg(cloud.aws.ecs_containerinsights.NetworkRxBytes.By.ClusterName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network received",
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
                "label": "Bytes per second"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745911734338,
                "baseUnit": "Bps",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "datarate"
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
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.NetworkRxBytes.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayAvg(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average network received",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741774658645,
                "baseUnit": "Bps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "datarate"
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
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.NetworkTxBytes.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n\n| fieldsAdd y = arrayAvg(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average network transmitted",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741774658645,
                "baseUnit": "Bps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "datarate"
              }
            ]
          }
        },
        "13": {
          "content": "##### CPU",
          "type": "markdown"
        },
        "14": {
          "content": "##### Memory",
          "type": "markdown"
        },
        "15": {
          "content": "##### Network",
          "type": "markdown"
        },
        "16": {
          "content": "##### Storage",
          "type": "markdown"
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=sum(cloud.aws.ecs_containerinsights.StorageWriteBytes.By.ClusterName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Storage write bytes",
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
                "label": "Bytes"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745911946361,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries y=sum(cloud.aws.ecs_containerinsights.StorageReadBytes.By.ClusterName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Storage read bytes",
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
                "label": "Bytes"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745911932915,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries x=sum(cloud.aws.ecs_containerinsights.StorageReadBytes.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayAvg(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average storage read bytes",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741774658645,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
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
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.CpuReserved.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayAvg(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average CPU units reserved",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1745911367195,
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
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.ecs_containerinsights.StorageWriteBytes.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayAvg(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average storage write bytes",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741774658645,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "21": {
          "content": "### Container Insights\nGet a more detailed insight into the aspects of your containers. In each section, look for anomalies and discrepancies between values over time, per cluster, and averages.\n___",
          "type": "markdown"
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The number of services in the clusters in a given period.",
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.ServiceCount.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n\n| fieldsAdd y = arrayLast(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Services",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1740396600149,
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
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.ContainerInstanceCount.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayLast(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Container instances",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1740396600149,
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
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.DeploymentCount.By.ClusterName.ServiceName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayLast(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Deployments",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1740396600149,
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
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.taskSetCount.By.ClusterName.ServiceName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayLast(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tasks sets",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1740396600149,
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
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.TaskCount.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayLast(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Tasks",
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
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1740396600149,
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
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.PendingTaskCount.By.ClusterName.ServiceName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayLast(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Pending tasks",
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
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1740396600149,
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
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.DesiredTaskCount.By.ClusterName.ServiceName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayLast(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Desired tasks",
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
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1740396600149,
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
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=avg(cloud.aws.ecs_containerinsights.RunningTaskCount.By.ClusterName.ServiceName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayLast(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Running tasks",
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
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1740396600149,
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
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries x=sum(cloud.aws.ecs_containerinsights.MemoryUtilized.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayAvg(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average memory utilized",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741774658645,
                "baseUnit": "megabyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "",
          "query": "timeseries y=avg(cloud.aws.ecs.MemoryUtilization.By.ClusterName.ServiceName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory utilization by cluster",
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
                "label": "Percentage"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745911029386,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
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
          "query": "timeseries y=avg(cloud.aws.ecs.CPUUtilization.By.ClusterName.ServiceName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utilization by cluster",
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
                "label": "Percentage"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745910975313,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "timeseries x=avg(cloud.aws.ecs.CPUUtilization.By.ClusterName.ServiceName),\nfilter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd y = arrayAvg(x)\n| summarize y = avg(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average CPU utilization",
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
                  "field": "y",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "y",
                  "value": 90
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "y",
                  "value": 95
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "error",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "y",
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
                "added": 1741779139284,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "The total percentage of memory being used by containers in the resource in a given period.",
          "query": "timeseries x=avg(cloud.aws.ecs.MemoryUtilization.By.ClusterName.ServiceName),\nfilter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd y = arrayAvg(x)\n| summarize y = avg(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average memory utilization",
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
                  "field": "y",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "y",
                  "value": 90
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "y",
                  "value": 95
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "error",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "y",
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
                "added": 1741779295171,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "34": {
          "content": " ",
          "type": "markdown"
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=sum(cloud.aws.ecs_containerinsights.EphemeralStorageReserved.By.ClusterName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ephemeral storage bytes reserved",
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
                "label": "Bytes"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745912120541,
                "baseUnit": "gigabyte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "",
          "query": "timeseries y=sum(cloud.aws.ecs_containerinsights.EphemeralStorageUtilized.By.ClusterName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ephemeral storage bytes utilized",
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
                "label": "Bytes"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745912103285,
                "baseUnit": "gigabyte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
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
          "query": "timeseries x=sum(cloud.aws.ecs_containerinsights.EphemeralStorageUtilized.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n\n| fieldsAdd y = arrayAvg(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average ephemeral storage bytes utilized",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741774658645,
                "baseUnit": "gigabyte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
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
          "query": "timeseries x=sum(cloud.aws.ecs_containerinsights.EphemeralStorageReserved.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n\n| fieldsAdd y = arrayAvg(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average ephemeral storage bytes reserved",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741774658645,
                "baseUnit": "gigabyte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries x=sum(cloud.aws.ecs_containerinsights.MemoryReserved.By.ClusterName),\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))} ,\n           nonempty:true\n\n| fieldsAdd y = arrayAvg(x)\n| summarize y = sum(y)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average memory reserved",
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
                "isVisible": false,
                "record": "x"
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1741774658645,
                "baseUnit": "megabyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "40": {
          "content": "### Additional information\n\nLearn more about Clouds Observability:\n* [Explore the Clouds App in Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.clouds/)\n\n* [Explore our documentation](https://docs.dynatrace.com/docs/observe/infrastructure-observability/cloud-platform-monitoring/clouds-app)",
          "type": "markdown"
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=avg(cloud.aws.ecs.CPUUtilization.By.ClusterName.ServiceName),\n           by: {ClusterName, ServiceName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utilization by cluster and service",
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
                "label": "Percentage"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745910975313,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=avg(cloud.aws.ecs.MemoryUtilization.By.ClusterName.ServiceName),\n           by: {ClusterName, ServiceName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))},\n           nonempty:true\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory utilization by cluster and service",
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
                "label": "Percentage"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745911029386,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_ECS_CLUSTER\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| filter in(toString(id), array($SmartscapeId))\n| summarize count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Clusters",
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
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "count()",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
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
          "query": "timeseries y=avg(cloud.aws.ecs_containerinsights.CpuUtilized.By.ClusterName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU units utilized",
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
                "isLabelVisible": true,
                "label": "Units"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745911383638,
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
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=avg(cloud.aws.ecs_containerinsights.CpuReserved.By.ClusterName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU units reserved",
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
                "isLabelVisible": true,
                "label": "Units"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745911395891,
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
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries y=sum(cloud.aws.ecs_containerinsights.MemoryUtilized.By.ClusterName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory utilized",
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
                "label": "Bytes"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745911519473,
                "baseUnit": "megabyte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
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
          "description": "",
          "query": "timeseries y=sum(cloud.aws.ecs_containerinsights.MemoryReserved.By.ClusterName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory reserved",
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
                "label": "Bytes"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745911534105,
                "baseUnit": "megabyte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
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
          "query": "timeseries y=avg(cloud.aws.ecs_containerinsights.NetworkTxBytes.By.ClusterName),\n           by: {ClusterName, aws.account.id, aws.region, dt.smartscape_source.id},\n           filter:{in(aws.account.id, array($AccountId)) AND\n                   in(aws.region, array($Region)) AND\n                   in(dt.smartscape_source.id, iCollectArray(toSmartscapeId(array($SmartscapeId)[])))}\n\n| fieldsAdd x = arrayLast(y)\n| sort x desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network transmitted",
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
                "label": "Bytes per second"
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
                "ClusterName"
              ]
            },
            "legend": {
              "ratio": 27
            },
            "unitsOverrides": [
              {
                "added": 1745911808056,
                "baseUnit": "Bps",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "y",
                "suffix": "",
                "unitCategory": "datarate"
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
          "input": "smartscapeNodes \"AWS_ECS_CLUSTER\"\n| filter in(aws.account.id, array($AccountId))\n| filter in(aws.region, array($Region))\n| fieldsKeep id",
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
          "input": "smartscapeNodes \"AWS_ECS*\"\n| fields aws.account.id\n| dedup aws.account.id\n| sort aws.account.id",
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
          "input": "smartscapeNodes \"AWS_ECS*\"\n| fields aws.region\n| dedup aws.region\n| sort aws.region",
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
  custom_id = "dynatrace.clouds.aws-ecs"
  # private = false
}
