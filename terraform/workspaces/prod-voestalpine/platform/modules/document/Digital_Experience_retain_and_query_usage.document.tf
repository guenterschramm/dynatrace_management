resource "dynatrace_document" "Digital_Experience_retain_and_query_usage" {
  name      = "Digital Experience retain and query usage"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 22
        },
        "10": {
          "h": 6,
          "w": 6,
          "x": 12,
          "y": 10
        },
        "11": {
          "h": 6,
          "w": 6,
          "x": 6,
          "y": 40
        },
        "12": {
          "h": 6,
          "w": 6,
          "x": 18,
          "y": 40
        },
        "13": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 4
        },
        "14": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "16": {
          "h": 6,
          "w": 5,
          "x": 0,
          "y": 16
        },
        "17": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 28
        },
        "18": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 28
        },
        "19": {
          "h": 6,
          "w": 5,
          "x": 5,
          "y": 16
        },
        "20": {
          "h": 6,
          "w": 6,
          "x": 6,
          "y": 10
        },
        "21": {
          "h": 6,
          "w": 6,
          "x": 12,
          "y": 40
        },
        "22": {
          "h": 6,
          "w": 6,
          "x": 18,
          "y": 10
        },
        "23": {
          "h": 6,
          "w": 6,
          "x": 0,
          "y": 10
        },
        "24": {
          "h": 6,
          "w": 7,
          "x": 10,
          "y": 16
        },
        "25": {
          "h": 6,
          "w": 7,
          "x": 17,
          "y": 16
        },
        "26": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 46
        },
        "4": {
          "h": 6,
          "w": 6,
          "x": 0,
          "y": 40
        },
        "7": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "8": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 22
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
          "query": "fetch dt.system.query_executions\n// Digital Experience buckets\n| filter in(bucket,$dem_buckets) \n// Exclude zero rated apps (for which all queries included)\n| filterOut in(client.application_context,$apps_included)\n| filter status == \"SUCCEEDED\"\n| makeTimeseries \n  `Total query volume`=sum(scanned_bytes),\n  time:timestamp, by: client.application_context, interval:1d\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Daily query volume by app",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1767615001832,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "10": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 2,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()-15m\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| fieldsAdd query_volume=arrayMovingAvg(query_volume, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter in(bucket,$dem_buckets)\n// Exclude zero rated apps (for which all queries included)\n| filterOut in(client.application_context,$apps_included)\n| filter status == \"SUCCEEDED\"\n| makeTimeseries daily_volume = sum(scanned_bytes), interval: 1d\n| fieldsAdd daily_avg = arrayAvg(daily_volume)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average daily query volume",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "timestamp",
              "labelMode": "none",
              "prefixIcon": "DataTableIcon",
              "recordField": "daily_avg",
              "sparklineSettings": {
                "isVisible": false,
                "variant": "bar"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1748272854058,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "daily_avg",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "fetch dt.system.buckets, from:-30m\n| filter in(name,$dem_buckets)\n| summarize retained_data=sum(estimated_uncompressed_bytes), by: name",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Retained DEM data volume by bucket",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "name"
                ],
                "categoryAxisLabel": "name"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 5
              },
              "truncationMode": "start"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "categorical-inverted",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": [
              {
                "added": 1763106757509,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "retained_data",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "fetch user.events, from:-5m\n| summarize data_volume=sum(dt.retain.size), by:characteristics.classifier",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Retained user events by event type (last 5 min)",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "characteristics.classifier",
                  "event.type"
                ],
                "categoryAxisLabel": "characteristics.classifier,event.type"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 1,
                "hideLabels": true
              },
              "truncationMode": "start"
            },
            "legend": {
              "ratio": 39
            },
            "unitsOverrides": [
              {
                "added": 1763112706391,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "data_volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "13": {
          "content": "---\n# Query usage details\n\nBelow statistics exclude queries that originate from the following Digital Experience Dynatrace applications:\n- Synthetic\n- Experience Vitals\n- Users \u0026 Sessions\n- Error Inspector\n\nStatistics only show query volume originating from other sources like Notebooks, Workflows, custom apps, Service Level Objectives, Dynatrace API, etc. - this usage will be billed as soon as Early Access phase for DEM query ends.\n\nSee documentation: https://dt-url.net/2n03982",
          "type": "markdown"
        },
        "14": {
          "content": "---\n# Retention usage details\n\n\nBelow statistics include retention data from all Digital Experience related buckets. Retention data is not split into volume for \"Included Retention\" and \"Extended Retention\".\n\nThe \"Average Daily Retained Data Volume\" helps estimate potential future costs for Extended Retention.\n\nTo calculate daily usage for extended retention: Daily Usage = (\"Average Daily Retained Data Volume\" × \"# of Retention Days\") - (\"Average Daily Retained Data Volume\" × 35)\n\n**Important Note:**\nThe average is calculated by dividing the bucket's retained volume by its retention time. However, if the bucket is partially filled (e.g., only 60 days of data in a 90-day retention period), the calculated average will be lower than the actual value.\n\nAs soon as preview for DEM Extended Retention ends, this usage will be billed.\n\nSee documentation: https://dt-url.net/hl239ij",
          "type": "markdown"
        },
        "16": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 2,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()-15m\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| fieldsAdd query_volume=arrayMovingAvg(query_volume, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter in(bucket,$dem_buckets)\n// Exclude zero rated apps (for which all queries included)\n| filterOut in(client.application_context,$apps_included)\n| filter status == \"SUCCEEDED\"\n| summarize volume = sum(scanned_bytes), by: bucket",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Query volume % by bucket",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 2,
                "showTotalValue": true,
                "valueType": "relative"
              }
            },
            "legend": {
              "ratio": 18
            },
            "unitsOverrides": [
              {
                "added": 1748272854058,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "volume",
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
          "query": "fetch dt.system.query_executions\n// Digital Experience buckets\n| filter in(bucket,$dem_buckets)\n| filter in(client.application_context,\"dynatrace.notebooks\", \"dynatrace.dashboards\")\n| filter status == \"SUCCEEDED\"\n| filter contains(client.source, \"ui/dashboard\") or contains(client.source, \"ui/notebook\")\n| fieldsAdd source = if(contains(client.source, \"ui/dashboard\"), parse(client.source, \" LD'ui/' LD:dashboardId \"), else:if(contains(client.source, \"ui/notebook\"), parse(client.source, \" LD'/ui/' LD:notebookId\")))\n| makeTimeseries \n  `Total query volume`=sum(scanned_bytes),\n  time:timestamp, by: source, interval:1d",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Daily query volume by dashboard \u0026 notebook",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1767615051525,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "18": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 1,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n//| makeTimeseries query_count=count(), query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| makeTimeseries query_count=count(), interval:1h\n| fieldsAdd query_count=arrayMovingAvg(query_count, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n// Digital Experience buckets\n| filter in(bucket,$dem_buckets) \n// Exclude zero rated apps (for which all queries included)\n| filterOut in(client.application_context,$apps_included)\n| filter status == \"SUCCEEDED\"\n| fieldsAdd analysis_timeframe_duration = toDuration(analysis_timeframe.end - analysis_timeframe.start)\n| fieldsAdd timeframe_category = if(analysis_timeframe_duration \u003c 1d, \"below_1d\", else:if(analysis_timeframe_duration \u003c duration(7, \"d\"), \"from_1d_to_7d\", else:if(analysis_timeframe_duration \u003c duration(35, \"d\"), \"from_7d_to_35d\", else:\"above_35d\")))\n| makeTimeseries total_scanned_bytes = sum(scanned_bytes), by:{timeframe_category}, interval:1d",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "DEM query volume by timeframe",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "total_scanned_bytes"
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
                  "colorPalette": "swamps",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1717404430040,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "total_scanned_bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "19": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 2,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()-15m\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| fieldsAdd query_volume=arrayMovingAvg(query_volume, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter in(bucket,$dem_buckets)\n// Exclude zero rated apps (for which all queries included)\n| filterOut in(client.application_context,$apps_included)\n| filter status == \"SUCCEEDED\"\n| summarize volume = sum(scanned_bytes), by: client.application_context",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Query volume % by app",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 2,
                "showTotalValue": true,
                "valueType": "relative"
              }
            },
            "legend": {
              "ratio": 31
            },
            "unitsOverrides": [
              {
                "added": 1748272854058,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "20": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 2,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()-15m\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| fieldsAdd query_volume=arrayMovingAvg(query_volume, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter in(bucket,$dem_buckets)\n// Exclude zero rated apps (for which all queries included)\n| filterOut in(client.application_context,$apps_included)\n| filter status == \"SUCCEEDED\"\n| makeTimeseries count = count(), interval: 1d\n| fieldsAdd avg_count = arrayAvg(count)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average daily query count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "timestamp",
              "labelMode": "none",
              "prefixIcon": "DataTableIcon",
              "recordField": "avg_count",
              "sparklineSettings": {
                "isVisible": false,
                "variant": "bar"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": []
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.buckets\n| filter in(name,$dem_buckets)\n| fieldsAdd daily_volume = estimated_uncompressed_bytes/retention_days\n| fields name, daily_volume, retention_days",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average daily retained data volume by bucket",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 1
              }
            },
            "legend": {
              "ratio": 20
            },
            "unitsOverrides": [
              {
                "added": 1763106757509,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "daily_volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "22": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 2,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()-15m\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| fieldsAdd query_volume=arrayMovingAvg(query_volume, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter in(bucket,$dem_buckets)\n// Exclude zero rated apps (for which all queries included)\n| filterOut in(client.application_context,$apps_included)\n| filter status == \"SUCCEEDED\"\n| makeTimeseries daily_users = countDistinct(user.email), interval: 1d\n| fieldsAdd daily_avg_users = arrayAvg(daily_users)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average daily query users",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "timestamp",
              "labelMode": "none",
              "prefixIcon": "GroupIcon",
              "recordField": "daily_avg_users",
              "sparklineSettings": {
                "isVisible": false,
                "variant": "bar"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1748272854058,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "daily_avg_users",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "23": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 2,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()-15m\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| fieldsAdd query_volume=arrayMovingAvg(query_volume, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter in(bucket,$dem_buckets)\n// Exclude zero rated apps (for which all queries included)\n| filterOut in(client.application_context,$apps_included)\n| filter status == \"SUCCEEDED\"\n| makeTimeseries daily_volume = sum(scanned_bytes), interval:24h\n| fieldsAdd total_volume = arraySum(daily_volume)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total query volume in selected timeframe",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "timestamp",
              "labelMode": "none",
              "prefixIcon": "DataTableIcon",
              "recordField": "total_volume",
              "sparklineSettings": {
                "isVisible": false,
                "variant": "bar"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": []
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter in(bucket,$dem_buckets)\n// Exclude zero rated apps (for which all queries included)\n| filterOut in(client.application_context,$apps_included)\n| filter status == \"SUCCEEDED\"\n| summarize {\n  count = count(),\n  volume = sum(scanned_bytes)\n}, by: {app = client.application_context, service= client.internal_service_context}\n| sort volume desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Query volume by app \u0026 service",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1741500000000,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "volume",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "fetch dt.system.query_executions\n| filter in(bucket,$dem_buckets)\n// Exclude zero rated apps (for which all queries included)\n| filterOut in(client.application_context,$apps_included)\n| filter status == \"SUCCEEDED\"\n| summarize {\n  count = count(),\n  volume = sum(scanned_bytes)\n}, by: {user.email}\n| sort volume desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top query users by volume",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1741500000000,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "volume",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries avg(dt.sfm.grail.bucket.size), \nfilter: {in(grail.bucket.name,$dem_buckets)}, \nby: {grail.bucket.name}, \ninterval:24h",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total retained DEM data volume over time by bucket",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.buckets, from:-30m\n| filter in(name,$dem_buckets)\n| summarize retained_data=sum(estimated_uncompressed_bytes)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total retained DEM data volume (across all buckets)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "StorageIcon"
            },
            "unitsOverrides": [
              {
                "added": 1763106757509,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "retained_data",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "7": {
          "content": "# Digital Experience retain and query usage details \n#\n\nThis dashboard provides usage insights for Digital Experience retain and query.\n\nDuring preview phase of DEM Extended Retention and Early Access phase of DEM query, usage is not billed.\nThis dashboards helps you to estimate future costs as soon as billing starts.\n\nIt takes all buckets of Digital Experience on Grail into account.\nRecommended timeframe is 30 days.",
          "type": "markdown"
        },
        "8": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 1,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch dt.system.events, from:now()-7d, to:now()\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n//| makeTimeseries query_count=count(), query_volume=sum(billed_bytes / 1024 / 1024 / 1024.0), interval:1h\n| makeTimeseries query_count=count(), interval:1h\n| fieldsAdd query_count=arrayMovingAvg(query_count, 5)"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true,
              "selectedOutputs": [
                "1667436935",
                "-1273383542"
              ]
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n// Digital Experience buckets\n| filter in(bucket,$dem_buckets) \n// Exclude zero rated apps (for which all queries included)\n| filterOut in(client.application_context,$apps_included)\n| filter status == \"SUCCEEDED\"\n| fieldsAdd analysis_timeframe_duration = toDuration(analysis_timeframe.end - analysis_timeframe.start)\n| fieldsAdd timeframe_category = if(analysis_timeframe_duration \u003c 1d, \"below_1d\", else:if(analysis_timeframe_duration \u003c duration(7, \"d\"), \"from_1d_to_7d\", else:if(analysis_timeframe_duration \u003c duration(35, \"d\"), \"from_7d_to_35d\", else:\"above_35d\")))\n| makeTimeseries count = count(), by:{timeframe_category}, interval:1d",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "DEM query count by timeframe",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "count"
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
                  "colorPalette": "swamps",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1717404430040,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count",
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
          "input": "dynatrace.synthetic,dynatrace.synthetic.workflow.action,dynatrace.experience.vitals,dynatrace.error.inspector,dynatrace.users.sessions,dynatrace.distributedtracing,dynatrace.infraops,dynatrace.services,dynatrace.clouds,dynatrace.kubernetes",
          "key": "apps_included",
          "multiple": true,
          "type": "csv",
          "version": 2,
          "visible": false
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "default_synthetic_user_events,default_synthetic_user_sessions,default_user_events,default_user_sessions,default_synthetic_events,default_synthetic_detailed_events",
          "key": "dem_buckets",
          "multiple": true,
          "type": "csv",
          "version": 2,
          "visible": false
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.experience.vitals.digital-experience-retain-and-query-usage"
  # private = false
}
