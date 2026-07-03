resource "dynatrace_document" "AWS_Cloud_Platform_Monitoring-AWS_Data_Firehose_Log_Ingestion_Self-Monitoring" {
  name      = "AWS Cloud Platform Monitoring - AWS Data Firehose Log Ingestion Self-Monitoring"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 37
        },
        "10": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "12": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 22
        },
        "13": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "14": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "2": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "3": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 37
        },
        "4": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 32
        },
        "5": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 43
        },
        "6": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 43
        },
        "8": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 11
        },
        "9": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 3
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum(cloud.aws.firehose.IncomingRecords.By.DeliveryStreamName), by:{DeliveryStreamName,aws.account.id,aws.region, dt.smartscape_source.id}\n| filter dt.smartscape_source.id in [\nsmartscapeNodes \"AWS_KINESISFIREHOSE_DELIVERYSTREAM\"\n| parse aws.object, \"JSON:aws.object\"\n| fieldsAdd aws.firehose.destination=aws.object[configuration][destinations]\n| expand aws.firehose.destination\n| fieldsAdd aws.firehose.http_endpoint=aws.firehose.destination[httpEndpointDestinationDescription][endpointConfiguration][url]\n| filter contains(aws.firehose.http_endpoint,\"da.dynatrace.com/api/aws/firehose/v1/logs\") or contains(aws.firehose.http_endpoint,\"da.dynatracelabs.com/api/aws/firehose/v1/logs\")\n| filter ($dynatraceEnvironment == \"*\" or contains(aws.firehose.http_endpoint,$dynatraceEnvironment))\n| fieldsKeep id\n]\n| filter ($awsAccountId ==\"*\" or aws.account.id == $awsAccountId) and ($awsRegion ==\"*\" or aws.region == $awsRegion) and ($deliveryStreamName ==\"*\" or DeliveryStreamName == $deliveryStreamName)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "segments": {
            "tileSegments": [],
            "tileSegmentsEnabled": false
          },
          "title": "IncomingRecords by DeliveryStreamName",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(cloud.aws.firehose.IncomingRecords.By.DeliveryStreamName)"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "# Records"
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
                "DeliveryStreamName",
                "aws.account.id",
                "aws.region"
              ]
            }
          }
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_KINESISFIREHOSE_DELIVERYSTREAM\"\n| parse aws.object, \"JSON:aws.object\"\n| fieldsAdd aws.firehose.destination=aws.object[configuration][destinations], deliveryStreamName=aws.object[configuration][deliveryStreamName]\n| expand aws.firehose.destination\n| fieldsAdd aws.firehose.http_endpoint=aws.firehose.destination[httpEndpointDestinationDescription][endpointConfiguration][url]\n| filter contains(aws.firehose.http_endpoint,\"da.dynatrace.com/api/aws/firehose/v1/logs\") or contains(aws.firehose.http_endpoint,\"da.dynatracelabs.com/api/aws/firehose/v1/logs\")\n| filter ($dynatraceEnvironment==\"*\" or contains(aws.firehose.http_endpoint,$dynatraceEnvironment))\n| fieldsKeep aws.account.id, aws.region,  deliveryStreamName, aws.firehose.http_endpoint\n| filter ($awsAccountId ==\"*\" or aws.account.id == $awsAccountId) and ($awsRegion ==\"*\" or aws.region == $awsRegion) and ($deliveryStreamName ==\"*\" or deliveryStreamName == $deliveryStreamName)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "AWS Data Firehose Streams Forwarding Logs to Dynatrace",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnOrder": [
                "[\"aws.account.id\"]",
                "[\"aws.region\"]",
                "[\"deliveryStreamName\"]",
                "[\"aws.firehose.http_endpoint\"]"
              ],
              "hideColumnsForLargeResults": false
            }
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"AWS_LOGS_LOGGROUP\"\n| filter isNotNull(aws.object)\n| parse aws.object, \"JSON:aws.object\"\n| fieldsAdd subscriptionFilters = if(arraySize(aws.object[supplementary_configuration][subscriptionFilters]) \u003e 0,aws.object[supplementary_configuration][subscriptionFilters],else: array(\"{}\"))\n| expand subscriptionFilters\n| fieldsAdd firehoseArn=subscriptionFilters[destinationArn], logGroupName=if(subscriptionFilters!=\"{}\",subscriptionFilters[logGroupName],else:aws.object[configuration][logGroupName])\n| fieldsAdd hasSubscriptionFilters=if(isNotNull(firehoseArn),\"yes\",else:\"no\")\n| fieldsAdd forwardsLogsToDynatrace=if(\nfirehoseArn in [\nsmartscapeNodes \"AWS_KINESISFIREHOSE_DELIVERYSTREAM\"\n| parse aws.object, \"JSON:aws.object\"\n| fieldsAdd aws.firehose.destination=aws.object[configuration][destinations], deliveryStreamName=aws.object[configuration][deliveryStreamName]\n| expand aws.firehose.destination\n| fieldsAdd aws.firehose.http_endpoint=aws.firehose.destination[httpEndpointDestinationDescription][endpointConfiguration][url]\n| filter contains(aws.firehose.http_endpoint,\"da.dynatrace.com/api/aws/firehose/v1/logs\") or contains(aws.firehose.http_endpoint,\"da.dynatracelabs.com/api/aws/firehose/v1/logs\")\n| filter ($dynatraceEnvironment == \"*\" or contains(aws.firehose.http_endpoint,$dynatraceEnvironment))\n| fieldsKeep aws.arn]\n,\"yes\",else:\"no\")\n| fieldsKeep hasSubscriptionFilters, forwardsLogsToDynatrace, logGroupName, aws.account.id, aws.region, firehoseArn\n| parse firehoseArn , \"LD ':deliverystream/' STRING:deliveryStreamName\"\n| fieldsAdd deliveryStreamName=if(forwardsLogsToDynatrace==\"no\",\"NA\",else:deliveryStreamName)\n| filter ($awsAccountId ==\"*\" or aws.account.id == $awsAccountId) and ($awsRegion ==\"*\" or aws.region == $awsRegion) and ($deliveryStreamName ==\"*\" or deliveryStreamName == $deliveryStreamName)\n| sort forwardsLogsToDynatrace asc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Amazon CloudWatch Log Groups Forwarding to Dynatrace",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnOrder": [
                "[\"aws.account.id\"]",
                "[\"aws.region\"]",
                "[\"logGroupName\"]",
                "[\"hasSubscriptionFilters\"]",
                "[\"forwardsLogsToDynatrace\"]",
                "[\"deliveryStreamName\"]",
                "[\"firehoseArn\"]"
              ],
              "columnWidths": {
                "[\"deliveryStreamName\"]": 398.39,
                "[\"firehoseArn\"]": 384.98,
                "[\"forwardsLogsToDynatrace\"]": 130,
                "[\"logGroupName\"]": 423
              },
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"forwardsLogsToDynatrace\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        },
        "13": {
          "content": "## AWS Data Firehose Delivery Metrics\n\nThe following CloudWatch Metrics represent data flowing in and out your Firehose streams sending data to Dynatrace AWS Cloud Platform Monitoring:\n\n* **DeliveryToHttpEndpoint.DataFreshness:** Age (in seconds) of the oldest record in Amazon Data Firehose. A spike in this metric means there's a log ingestion delay. Unit: Seconds\n* **IncomingRecords:** The number of records ingested successfully into the Firehose stream. Important: When ingesting CloudWatch logs, each Firehose record is a batch of CloudWatch Logs records (for details, check the [CloudWatch logs documentation](https://docs.aws.amazon.com/firehose/latest/dev/Message_extraction.html)). Units: Count \n* **ThrottledRecords:** The number of records that were throttled because data ingestion exceeded one of the Firehose stream limits. Units: Count\n* **DeliveryToHTTPEndpoint.Success:** The sum of all successful data delivery requests to the HTTP endpoint. Units: Count\n* **DeliveryToHttpEndpoint.Records:** The number of records delivered successfully to the HTTP endpoint. Units: Count\n\n**IMPORTANT:** If you're forwarding logs via CloudWatch Logs, note that a single AWS Data Firehose record contains multiple log records inside (more information [here](https://docs.aws.amazon.com/firehose/latest/dev/Message_extraction.html)). OpenPipeline ingestion metrics above represent single log records. ",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { sum(dt.sfm.openpipeline.ingest_sources_in.records), value.A = avg(dt.sfm.openpipeline.ingest_sources_in.records, scalar: true) }, by: { dt.openpipeline.source }, filter: { matchesValue(dt.openpipeline.source, \"da-aws-data-firehose\") }\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "OpenPipeline Ingest Source in Records",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "leftYAxisSettings": {
                "isLabelVisible": true
              }
            }
          }
        },
        "2": {
          "content": "# AWS Cloud Platform Monitoring - AWS Data Firehose Log Ingestion Self-Monitoring\n\n \nThis dashboard helps you monitor the log data flowing from AWS Data Firehose Streams in your monitored AWS Accounts to Dynatrace AWS Cloud Platform Monitoring.",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries sum(cloud.aws.firehose.ThrottledRecords.By.DeliveryStreamName), by:{DeliveryStreamName,aws.account.id,aws.region,dt.smartscape_source.id}\n| filter dt.smartscape_source.id in [\nsmartscapeNodes \"AWS_KINESISFIREHOSE_DELIVERYSTREAM\"\n| parse aws.object, \"JSON:aws.object\"\n| fieldsAdd aws.firehose.destination=aws.object[configuration][destinations]\n| expand aws.firehose.destination\n| fieldsAdd aws.firehose.http_endpoint=aws.firehose.destination[httpEndpointDestinationDescription][endpointConfiguration][url]\n| filter contains(aws.firehose.http_endpoint,\"da.dynatrace.com/api/aws/firehose/v1/logs\") or contains(aws.firehose.http_endpoint,\"da.dynatracelabs.com/api/aws/firehose/v1/logs\")\n| filter ($dynatraceEnvironment == \"*\" or contains(aws.firehose.http_endpoint,$dynatraceEnvironment))\n| fieldsKeep id\n]\n| filter ($awsAccountId ==\"*\" or aws.account.id == $awsAccountId) and ($awsRegion ==\"*\" or aws.region == $awsRegion) and ($deliveryStreamName ==\"*\" or DeliveryStreamName == $deliveryStreamName)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ThorttledRecords by DeliveryStreamName",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(cloud.aws.firehose.ThrottledRecords.By.DeliveryStreamName)"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "# Records"
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
                "DeliveryStreamName",
                "aws.account.id",
                "aws.region"
              ]
            }
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
          "query": "timeseries max(cloud.aws.firehose.DeliveryToHttpEndpoint.DataFreshness.By.DeliveryStreamName), by:{DeliveryStreamName,aws.account.id,aws.region, dt.smartscape_source.id}\n| filter dt.smartscape_source.id in [\nsmartscapeNodes \"AWS_KINESISFIREHOSE_DELIVERYSTREAM\"\n| parse aws.object, \"JSON:aws.object\"\n| fieldsAdd aws.firehose.destination=aws.object[configuration][destinations]\n| expand aws.firehose.destination\n| fieldsAdd aws.firehose.http_endpoint=aws.firehose.destination[httpEndpointDestinationDescription][endpointConfiguration][url]\n| filter contains(aws.firehose.http_endpoint,\"da.dynatrace.com/api/aws/firehose/v1/logs\")or contains(aws.firehose.http_endpoint,\"da.dynatracelabs.com/api/aws/firehose/v1/logs\")\n| filter ($dynatraceEnvironment == \"*\" or contains(aws.firehose.http_endpoint,$dynatraceEnvironment))\n| fieldsKeep id\n]\n| filter ($awsAccountId ==\"*\" or aws.account.id == $awsAccountId) and ($awsRegion ==\"*\" or aws.region == $awsRegion) and ($deliveryStreamName ==\"*\" or DeliveryStreamName == $deliveryStreamName)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DeliveryToHTTPEndpoint.DataFreshness by DeliveryStreamName",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max(cloud.aws.firehose.DeliveryToHttpEndpoint.DataFreshness.By.DeliveryStreamName)"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "DataFreshness"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "DeliveryStreamName",
                "aws.account.id",
                "aws.region"
              ]
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
          "query": "timeseries sum(cloud.aws.firehose.DeliveryToHttpEndpoint.Success.By.DeliveryStreamName), by:{DeliveryStreamName,aws.account.id,aws.region,dt.smartscape_source.id}\n| filter dt.smartscape_source.id in [\n  smartscapeNodes \"AWS_KINESISFIREHOSE_DELIVERYSTREAM\"\n  | parse aws.object, \"JSON:aws.object\"\n  | fieldsAdd aws.firehose.destination=aws.object[configuration][destinations]\n  | expand aws.firehose.destination\n  | fieldsAdd aws.firehose.http_endpoint=aws.firehose.destination[httpEndpointDestinationDescription][endpointConfiguration][url]\n  | filter contains(aws.firehose.http_endpoint,\"da.dynatrace.com/api/aws/firehose/v1/logs\") or contains(aws.firehose.http_endpoint,\"da.dynatracelabs.com/api/aws/firehose/v1/logs\")\n  | filter ($dynatraceEnvironment == \"*\" or contains(aws.firehose.http_endpoint,$dynatraceEnvironment))\n  | fieldsKeep id\n]\n| filter ($awsAccountId ==\"*\" or aws.account.id == $awsAccountId) and ($awsRegion ==\"*\" or aws.region == $awsRegion) and ($deliveryStreamName ==\"*\" or DeliveryStreamName == $deliveryStreamName)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DeliveryToHTTPEndpoint.Success by DeliveryStreamName",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(cloud.aws.firehose.DeliveryToHttpEndpoint.Success.By.DeliveryStreamName)"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "% Success"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "DeliveryStreamName",
                "aws.account.id",
                "aws.region"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1764160532226,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "successAverage",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "timeseries sum(cloud.aws.firehose.DeliveryToHttpEndpoint.Records.By.DeliveryStreamName), by:{DeliveryStreamName,aws.account.id,aws.region, dt.smartscape_source.id}\n| filter dt.smartscape_source.id in [\nsmartscapeNodes \"AWS_KINESISFIREHOSE_DELIVERYSTREAM\"\n| parse aws.object, \"JSON:aws.object\"\n| fieldsAdd aws.firehose.destination=aws.object[configuration][destinations]\n| expand aws.firehose.destination\n| fieldsAdd aws.firehose.http_endpoint=aws.firehose.destination[httpEndpointDestinationDescription][endpointConfiguration][url]\n| filter contains(aws.firehose.http_endpoint,\"da.dynatrace.com/api/aws/firehose/v1/logs\") or contains(aws.firehose.http_endpoint,\"da.dynatracelabs.com/api/aws/firehose/v1/logs\")\n| filter ($dynatraceEnvironment == \"*\" or contains(aws.firehose.http_endpoint,$dynatraceEnvironment))\n| fieldsKeep id\n] \n| filter ($awsAccountId ==\"*\" or aws.account.id == $awsAccountId) and ($awsRegion ==\"*\" or aws.region == $awsRegion) and ($deliveryStreamName ==\"*\" or DeliveryStreamName == $deliveryStreamName)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DeliveryToHTTPEndpoint.Records by DeliveryStreamName",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(cloud.aws.firehose.DeliveryToHttpEndpoint.Records.By.DeliveryStreamName)"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "# Records"
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
                "DeliveryStreamName",
                "aws.account.id",
                "aws.region"
              ]
            }
          }
        },
        "8": {
          "content": "## AWS Data Firehose Streams and Log Groups forwarding logs to Dynatrace\n\nThe tables below show the list of AWS Data Firehose Streams monitored by Dynatrace that forward logs to Dynatrace AWS Cloud Platform Monitoring endpoints and the list of Amazon CloudWatch Log Groups monitored by Dynatrace, categorized by whether or not they're subscribed to the Data Firehose Streams of the first table.\n\nTo subscribe Amazon CloudWatch logs to be forwarded to Dynatrace check our documentation [here](https://docs.dynatrace.com/docs/ingest-from/monitor-public-cloud-platforms/aws-subscribe-log-groups-pp#logs-stack).\n\n**IMPORTANT NOTES:**\n* Tables and metrics below only reflect data for AWS Accounts and regions monitored by Dynatrace\n* The data below is for individual log group subscriptions. If you're using [Account-level subscription filters](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/SubscriptionFilters-AccountLevel.html), log groups will appear here as not subscribed. ",
          "type": "markdown"
        },
        "9": {
          "content": "## OpenPipeline Ingest\n\nThe metrics below show data flowing to your Dynatrace Environment via OpenPipeline. \n\n* **OpenPipeline Ingest Sources In Records:** Total Number of log records ingested from Firehose through OpenPipeline ",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": "*",
          "editable": true,
          "input": "data record(environment=\"*\")\n| append [\nfetch dt.entity.environment\n| fieldsAdd environment=dt.system.environment\n| fieldsKeep environment ]",
          "key": "dynatraceEnvironment",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "*",
          "editable": true,
          "input": "data record(aws.account.id=\"*\")\n| append [\nfetch metric.series\n| filter startsWith(metric.key,\"cloud.aws.firehose\") //and contains(DeliveryStreamName,\"FirehoseLogStreams\")\n| summarize count(), by:aws.account.id\n| fields aws.account.id\n]\n",
          "key": "awsAccountId",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "data record(aws.region=\"*\")\n| append [\nfetch metric.series\n| filter startsWith(metric.key,\"cloud.aws.firehose\") //and contains(DeliveryStreamName,\"FirehoseLogStreams\")\n| summarize count(), by: aws.region\n| fields aws.region\n]",
          "key": "awsRegion",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "data record(DeliveryStreamName=\"*\")\n| append [\nfetch metric.series\n| filter startsWith(metric.key,\"cloud.aws.firehose\") //and contains(DeliveryStreamName,\"FirehoseLogStreams\")\n| summarize count(), by: DeliveryStreamName\n| fields DeliveryStreamName\n| filter DeliveryStreamName in [\nsmartscapeNodes \"AWS_KINESISFIREHOSE_DELIVERYSTREAM\"\n| parse aws.object, \"JSON:aws.object\"\n| fieldsAdd aws.firehose.destination=aws.object[configuration][destinations], deliveryStreamName=aws.object[configuration][deliveryStreamName]\n| expand aws.firehose.destination\n| fieldsAdd aws.firehose.http_endpoint=aws.firehose.destination[httpEndpointDestinationDescription][endpointConfiguration][url]\n| filter contains(aws.firehose.http_endpoint,\"da.dynatrace.com/api/aws/firehose/v1/logs\") or contains(aws.firehose.http_endpoint,\"da.dynatracelabs.com/api/aws/firehose/v1/logs\")\n| filter ($dynatraceEnvironment == \"*\" or contains(aws.firehose.http_endpoint,$dynatraceEnvironment))\n| fieldsKeep aws.resource.name\n]\n]",
          "key": "deliveryStreamName",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.fleet.management.aws-firehose-self-monitoring"
  # private = false
}
