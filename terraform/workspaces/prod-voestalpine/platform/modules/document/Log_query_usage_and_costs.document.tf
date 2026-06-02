resource "dynatrace_document" "Log_query_usage_and_costs" {
  name    = "Log query usage and costs"
  type    = "dashboard"
  content = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 8,
          "w": 9,
          "x": 0,
          "y": 4
        },
        "10": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 46
        },
        "12": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 62
        },
        "13": {
          "h": 8,
          "w": 9,
          "x": 9,
          "y": 4
        },
        "17": {
          "h": 3,
          "w": 2,
          "x": 18,
          "y": 9
        },
        "19": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "2": {
          "h": 6,
          "w": 7,
          "x": 17,
          "y": 14
        },
        "20": {
          "h": 3,
          "w": 14,
          "x": 0,
          "y": 59
        },
        "21": {
          "h": 2,
          "w": 11,
          "x": 0,
          "y": 48
        },
        "24": {
          "h": 12,
          "w": 13,
          "x": 0,
          "y": 69
        },
        "27": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 4
        },
        "35": {
          "h": 3,
          "w": 2,
          "x": 20,
          "y": 6
        },
        "36": {
          "h": 3,
          "w": 2,
          "x": 22,
          "y": 6
        },
        "37": {
          "h": 3,
          "w": 2,
          "x": 18,
          "y": 6
        },
        "38": {
          "h": 3,
          "w": 2,
          "x": 20,
          "y": 9
        },
        "39": {
          "h": 3,
          "w": 2,
          "x": 22,
          "y": 9
        },
        "4": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "40": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "41": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "45": {
          "h": 2,
          "w": 13,
          "x": 0,
          "y": 38
        },
        "46": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 40
        },
        "48": {
          "h": 6,
          "w": 17,
          "x": 0,
          "y": 14
        },
        "49": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 22
        },
        "5": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 20
        },
        "50": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 32
        },
        "51": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 50
        },
        "52": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "7": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 57
        },
        "8": {
          "h": 7,
          "w": 12,
          "x": 12,
          "y": 62
        }
      },
      "settings": {},
      "tiles": {
        "0": {
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
          "query": "fetch dt.system.events // QnVpbHQtaW4gbG9nIGNvbnN1bXB0aW9uIGRhc2hib2FyZA==\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries query_count=count(), time:query_start, bins:40\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Log query count",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "interval"
                ],
                "categoryAxisLabel": "interval",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "swamps",
              "fieldMapping": {
                "leftAxisValues": [
                  "query_count"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "interval"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "interval",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "timestamp",
              "prefixIcon": "",
              "recordField": "timestamp",
              "showLabel": true,
              "sparklineSettings": {
                "record": "query_count"
              },
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "query_count"
                  ],
                  "id": 1740043435474,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1717404430040,
                "baseUnit": "one",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "query_count",
                "suffix": "",
                "unitCategory": "amount"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "10": {
          "content": "#\n# Log queries not following best practices\n---",
          "type": "markdown"
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.buckets\n| filter dt.system.table == \"logs\"\n| summarize sum(estimated_uncompressed_bytes), by: {name}, alias: size\n| sort size desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Current volumes per logs bucket",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "name",
                "categoryAxisLabel": "name",
                "valueAxis": "size",
                "valueAxisLabel": "size"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "legend": {
                "hidden": false,
                "position": "right"
              }
            },
            "dataMapping": {
              "value": "size"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "size"
                }
              ],
              "displayedFields": [
                "name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "name"
              },
              "displayedFields": [
                "name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "size",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "name",
              "prefixIcon": "",
              "recordField": "name",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"name\"]": 352.3999938964844
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1716553779865,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "size",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "13": {
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
          "query": "fetch dt.system.events//, from:now()-7d, to:now()-15m\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries sum_bytes=sum(billed_bytes), time:query_start, bins:20\n| fieldsAdd query_volume = sum_bytes\n| fieldsAdd query_cost = sum_bytes[]/1024/1024/1024*toDouble($Price)\n| fieldsRemove sum_bytes",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Log query volume",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "query_volume",
                "upper": "query_cost"
              },
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "interval"
                ],
                "categoryAxisLabel": "interval",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "purple-rain",
              "fieldMapping": {
                "leftAxisValues": [
                  "query_volume",
                  "query_cost"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval"
              ],
              "leftYAxisSettings": {},
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "interval"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "interval",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "timestamp",
              "prefixIcon": "",
              "recordField": "timestamp",
              "showLabel": true,
              "sparklineSettings": {
                "record": "query_cost"
              },
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "query_volume",
                    "query_cost"
                  ],
                  "id": 1740043436509,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1716549732183,
                "baseUnit": "usd",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "query_cost",
                "suffix": "",
                "unitCategory": "currency"
              },
              {
                "added": 1717404430040,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": "gibibyte",
                "identifier": "query_volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from:now()-14d, to:now()-1d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries daily=sum(billed_bytes), interval:1d\n| fieldsAdd daily_cost=(daily[]/1024/1024/1024*toDouble($Price))\n| fieldsAdd yesterday_cost = arrayLast(daily_cost)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 24h",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "daily",
                "upper": "daily_cost"
              },
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "interval",
                  "yesterday_cost"
                ],
                "categoryAxisLabel": "interval,yesterday_cost",
                "tooltipVariant": "single",
                "valueAxis": [
                  "yesterday_cost"
                ],
                "valueAxisLabel": "yesterday_cost"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "daily",
                  "daily_cost"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "yesterday_cost"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "yesterday_cost"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "yesterday_cost"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "yesterday_cost"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "yesterday_cost",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "yesterday_cost",
              "prefixIcon": "",
              "recordField": "yesterday_cost",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "daily_cost"
              },
              "trend": {
                "isRelative": true,
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "daily",
                    "daily_cost"
                  ],
                  "id": 1740043437838,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "daily_cost",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1718807904460,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "yesterday_cost",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "19": {
          "content": "**This dashboard helps you track log query usage**.\n* Use `Application` and `User` dashboard filters to focus on selected field.\n* Minimum recommended timeframe is 2 hours.\n* Fill the `Price` dashboard filter with your contract price for costs analysis (see footnotes).\n",
          "type": "markdown"
        },
        "2": {
          "content": "Analyze what apps and users use logs most.\n\nUse dashboard filters:\n* *User* – see user's query usage and costs across apps\n* *Application* – see query usage and costs for all users in this app\n* *User and application* – see specific user's query usage and costs for specific app \n* *No filter* – see all users query usage and costs across apps",
          "type": "markdown"
        },
        "20": {
          "content": "Validate your bucket segmentation strategy:\n* **The pie chart** references total log volume per bucket where logs have been ingested across any timeframe.\n* **The donut chart** shows which buckets your users have queried in current  timeframe.\n \n💡 **Optimization opportunity**: If most of your queries address a single/default bucket, you could improve query performance and costs by segmenting data into multiple buckets.",
          "type": "markdown"
        },
        "21": {
          "content": "Monitor DQL queries fetching logs which don't utilize [best practices](https://docs.dynatrace.com/docs/shortlink/dql-best-practices) for query performance and costs.\n\nFollowing queries are missing commands/parameters like `filter`, `scanLimit`, `samplingRatio`, `limit` and have default timeframe.\n\n💡 **Optimization opportunity**: for frequently executed queries, suggest users to filter, limit, or sample data to avoid reoccurring high volume queries.",
          "type": "markdown"
        },
        "24": {
          "content": "#### Additional resources\n**Usage and costs data in Account Management**\n* [User account](https://myaccount.dynatrace.com) \u003e Recent accounts \u003e (Choose your account) \u003e Subscription \u003e Overview \u003e Cost and usage details: Log Management \u0026 Analytics - Query \u003e View details\n**Optimize DQL usage**\n* [DQL Best practices](https://docs.dynatrace.com/docs/shortlink/dql-best-practices)  (docs)\n* [Use log metrics instead of log queries for frequently presented data](https://docs.dynatrace.com/docs/shortlink/lma-log-dashboards) (docs)\n**Manage your Dynatrace Platform Subscription budget**\n* [Avoid billing surprises with smart Dynatrace cost monitors](https://www.dynatrace.com/news/blog/avoid-billing-surprises-with-smart-dynatrace-cost-monitors/) (blog)\n* [How to use DPS cost monitors](https://docs.dynatrace.com/docs/shortlink/cost-monitors) (docs)\n* [Set up and get alerted with custom budgets with DPS](https://docs.dynatrace.com/docs/shortlink/dps-budgets) (docs)\n**Dynatrace Platform setup**\n* [Setup Dynatrace Platform according to best practises](https://docs.dynatrace.com/docs/shortlink/upgrade-latest-dynatrace) (docs)\n* [Restrict users to query only data they need](https://docs.dynatrace.com/docs/shortlink/grail-data-model) (docs)\n\n---\n\n#### About this dashboard\n\n**User access**\n\n* This dashboard uses data in `dt.system` tables about billing usage events and query execution events.\n* Assign or remove [default access policies](https://docs.dynatrace.com/docs/shortlink/built-in-policies#access-to-data) with `storage:system:read` permission to provide or restrict access to this data.\n\n**Price**\n* Fill in the Price field with custom figure to measure cost per queried gibibyte (see [Pricing](https://www.dynatrace.com/pricing/#log-management-and-analytics)).\n* Please note that consecutive or parallel DPS contracts can have different price points. Thus, cost calculated in this dashboard might differ from official cost as shown in the Account Management portal.\n\nRelease v1.0",
          "type": "markdown"
        },
        "27": {
          "content": "### Daily/weekly/monthly\nUsage (bytes) and costs ($Currency)",
          "type": "markdown"
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from:now()-31d, to:now()-1d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries weekly=sum(billed_bytes), interval:7d\n| fieldsAdd lastweek = arrayLast(weekly)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 7d",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "interval",
                  "lastweek"
                ],
                "categoryAxisLabel": "interval,lastweek",
                "tooltipVariant": "single",
                "valueAxis": [
                  "lastweek"
                ],
                "valueAxisLabel": "lastweek"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "weekly"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "lastweek"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "lastweek"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "lastweek"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "lastweek"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "lastweek",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "lastweek",
              "prefixIcon": "",
              "recordField": "lastweek",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "weekly"
              },
              "trend": {
                "isRelative": true,
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "weekly"
                  ],
                  "id": 1740043437673,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "lastweek",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from:now()-93d, to:now()-1d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries monthly=sum(billed_bytes), interval:31d\n| fieldsAdd lastmonth = arrayLast(monthly)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 31d",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "interval",
                  "lastmonth"
                ],
                "categoryAxisLabel": "interval,lastmonth",
                "tooltipVariant": "single",
                "valueAxis": [
                  "lastmonth"
                ],
                "valueAxisLabel": "lastmonth"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "monthly"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "lastmonth"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "lastmonth"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "lastmonth"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "lastmonth"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "lastmonth",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "lastmonth",
              "prefixIcon": "",
              "recordField": "lastmonth",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "monthly"
              },
              "trend": {
                "isRelative": true,
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "monthly"
                  ],
                  "id": 1740043439388,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "lastmonth",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from:now()-14d, to:now()-1d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries daily=sum(billed_bytes), interval:1d\n| fieldsAdd yesterday = arrayLast(daily)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 24h",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "interval",
                  "yesterday"
                ],
                "categoryAxisLabel": "interval,yesterday",
                "tooltipVariant": "single",
                "valueAxis": [
                  "yesterday"
                ],
                "valueAxisLabel": "yesterday"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "daily"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "yesterday"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "yesterday"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "yesterday"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "yesterday"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "yesterday",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "yesterday",
              "prefixIcon": "",
              "recordField": "yesterday",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "daily"
              },
              "trend": {
                "isRelative": true,
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "daily"
                  ],
                  "id": 1740043437308,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "yesterday",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from:now()-31d, to:now()-1d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries daily=sum(billed_bytes), interval:7d\n| fieldsAdd daily_cost=(daily[]/1024/1024/1024*toDouble($Price))\n| fieldsAdd yesterday_cost = arrayLast(daily_cost)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 7d",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "daily",
                "upper": "daily_cost"
              },
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "interval",
                  "yesterday_cost"
                ],
                "categoryAxisLabel": "interval,yesterday_cost",
                "tooltipVariant": "single",
                "valueAxis": [
                  "yesterday_cost"
                ],
                "valueAxisLabel": "yesterday_cost"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "daily",
                  "daily_cost"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "yesterday_cost"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "yesterday_cost"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "yesterday_cost"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "yesterday_cost"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "yesterday_cost",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "yesterday_cost",
              "prefixIcon": "",
              "recordField": "yesterday_cost",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "daily_cost"
              },
              "trend": {
                "isRelative": true,
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "daily",
                    "daily_cost"
                  ],
                  "id": 1740043437506,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "daily_cost",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1718807904460,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "yesterday_cost",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from:now()-93d, to:now()-1d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries daily=sum(billed_bytes), interval:31d\n| fieldsAdd daily_cost=(daily[]/1024/1024/1024*toDouble($Price))\n| fieldsAdd yesterday_cost = arrayLast(daily_cost)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 31d",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "chartSettings": {
              "bandChartSettings": {
                "lower": "daily",
                "upper": "daily_cost"
              },
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "interval",
                  "yesterday_cost"
                ],
                "categoryAxisLabel": "interval,yesterday_cost",
                "tooltipVariant": "single",
                "valueAxis": [
                  "yesterday_cost"
                ],
                "valueAxisLabel": "yesterday_cost"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "daily",
                  "daily_cost"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "interval",
                "yesterday_cost"
              ],
              "leftYAxisSettings": {},
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "yesterday_cost"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "yesterday_cost"
                }
              ],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "yesterday_cost"
              },
              "displayedFields": [
                null
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "yesterday_cost",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "yesterday_cost",
              "prefixIcon": "",
              "recordField": "yesterday_cost",
              "showLabel": false,
              "sparklineSettings": {
                "isVisible": true,
                "record": "daily_cost"
              },
              "trend": {
                "isRelative": true,
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "daily",
                    "daily_cost"
                  ],
                  "id": 1740043439144,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "daily_cost",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1718807904460,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "yesterday_cost",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "4": {
          "content": "# \n# Query usage and costs across apps and users\n---",
          "type": "markdown"
        },
        "40": {
          "content": "#\n# Log queries in Dashboards\n---",
          "type": "markdown"
        },
        "41": {
          "content": "Log queries (`fetch logs`) in Dashboards is convenient way to track log data, but very frequent dashboard reloads by multiple users can increase log query costs drastically. \n\n💡 **Optimization opportunity**: for very frequently accessed log dashboards, [extract relevant data from logs during ingest with log metrics](https://docs.dynatrace.com/docs/shortlink/lma-log-dashboards). By replacing log queries with log metric queries, you may increase performance and reduce costs.",
          "type": "markdown"
        },
        "45": {
          "content": "**Dashboards can include log queries which auto-refresh every minute.**\n\n💡 **Optimization opportunity**: if you see results here, double check with the user if there is a valid use case for querying logs on a dashboard every minute, or manual refresh is enough",
          "type": "markdown"
        },
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter status == \"SUCCEEDED\" and startsWith(query_string, \"fetch logs\") and (client.application_context==\"dynatrace.dashboards\" or client.application_context == \"dynatrace.classic.dashboard-log-tile\")\n| filter in(\"ALL\", $User) OR in(user.email, $User)\n| dedup query_id\n| summarize {\n    query_count=count(),\n    queries = collectDistinct(query_id),\n    dashboards = collectDistinct(client.source),\n    users = collectDistinct(user.email)\n  }, by:{\n    query_string,\n    bin(timestamp, 30m)\n  }\n| filter query_count \u003e= 25 // at least 25 executions per 30 minutes\n| summarize {\n    executions = toLong(sum(query_count)),\n    dashboards = collectDistinct(dashboards),\n    users = collectDistinct(users)\n  }, by:{\n    query_string\n  }\n| fields query_string, executions, dashboards=arrayFlatten(dashboards), users = arrayFlatten(users)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "query_string",
                "valueAxisLabel": "executions"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": []
            },
            "histogram": {
              "dataMappings": [],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {},
              "displayedFields": [],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "client.source",
              "prefixIcon": "",
              "recordField": "client.source",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "colorThresholdTarget": "background",
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events//, from:\"'+$dt_timeframe_from+'\", to:\"'+$dt_timeframe_to+'\"';\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| filter in(\"ALL\", $User) OR in(user.email, $User)\n| filter in(\"ALL\", $Application) OR in(client.application_context, $Application)\n| fieldsAdd data = \"Logs\"\n| summarize {\n  query_start = takeFirst(query_start),\n  billed_bytes = takeFirst(billed_bytes),\n  User = takeFirst(user.email),\n  app = takeFirst(client.application_context)\n    }, by:{data, event.id}\n| fieldsAdd query_start_timestamp = timestampFromUnixMillis(query_start)\n| summarize {\n  query_volume = sum(billed_bytes),\n  query_count = count()\n    }, by:{data, User, app}\n| fieldsAdd query_cost = query_volume/1024/1024/1024*toDouble($Price)\n| fields User, App=app, `Query volume (user/app)`=query_volume, `Query cost per user/app`=query_cost, `Query count (user/app)`=query_count\n| sort `Query volume (user/app)` desc\n| limit 50",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "User",
                "categoryAxisLabel": "User",
                "valueAxis": "Query volume (user/app)",
                "valueAxisLabel": "Query volume (user/app)"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "value": "Query volume (user/app)"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "Query volume (user/app)"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Query cost per user/app"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Query count (user/app)"
                }
              ],
              "displayedFields": [
                "User",
                "App"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "Query volume (user/app)"
              },
              "displayedFields": [
                "User"
              ],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "Query volume (user/app)",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "error",
              "prefixIcon": "",
              "recordField": "error",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"User\"]": 437.0625
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1722501228555,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": true,
                "displayUnit": "gibibyte",
                "identifier": "Query volume (user/app)",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "49": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Log Management \u0026 Analytics - Query\" and event.version == \"1.0\"\n| filter in(\"ALL\", $User) OR in(user.email, $User)\n| filter in(\"ALL\", $Application) OR in(client.application_context, $Application)\n| sort billed_bytes desc\n| limit 10\n| lookup [\n  fetch dt.system.query_executions\n],\n  sourceField: query_id,\n  lookupField: query_id,\n  prefix: \"executiondata.\",\n  executionOrder:leftFirst\n| fields\n    timestamp=toTimestamp(executiondata.timestamp),\n    query_string=executiondata.query_string,\n    query_volume=toDouble(billed_bytes),\n    query_cost = toDouble(billed_bytes)/1024/1024/1024*toDouble($Price),\n    User=user.email,\n    App=client.application_context\n| fieldsRename `Query string`=query_string, `Query volume`=query_volume, `Query cost`=query_cost\n| sort `Query volume` desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "Query string",
                "categoryAxisLabel": "Query string",
                "valueAxis": "Query volume",
                "valueAxisLabel": "Query volume"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "Query volume"
                ],
                "timestamp": "timestamp"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": []
            },
            "dataMapping": {
              "value": "Query volume"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "Query volume"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Query cost"
                }
              ],
              "displayedFields": [
                "Query string",
                "User",
                "App"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "Query volume"
              },
              "displayedFields": [
                "Query string"
              ],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "Query volume",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "error",
              "prefixIcon": "",
              "recordField": "error",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1722507076574,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": "gibibyte",
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1722507089121,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Query cost",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "5": {
          "content": "#\n# Top 10 queries by volume\n---",
          "type": "markdown"
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter status == \"SUCCEEDED\" and startsWith(query_string, \"fetch logs\") and (client.application_context==\"dynatrace.dashboards\" or client.application_context == \"dynatrace.classic.dashboard-log-tile\")\n| filter in(\"ALL\", $User) OR in(user.email, $User)\n| parse client.source, \"DATA 'ui/dashboard/' STRING:dashboard.id\"\n| fieldsAdd dashboard.id = if(client.application_context==\"dynatrace.classic.dashboard-log-tile\", client.source, else:dashboard.id)\n| summarize {\n    single_query_scanned = sum(scanned_bytes),\n    dashboards = collectDistinct(dashboard.id)\n  }, by:{\n    query_id,\n    user.email,\n    query_string,\n    client.application_context\n  }\n| sort single_query_scanned desc\n| limit 500 // to avoid lookup timeout, we are using only top 500 query executions\n| lookup [\n  fetch dt.system.events\n],\n  sourceField: query_id,\n  lookupField: query_id,\n  prefix: \"billing.\",\n  executionOrder:leftFirst\n\n| summarize {\n    total_consumption = sum(billing.billed_bytes),\n    execution_count = count(),\n    users = collectDistinct(user.email),\n    dashboards = collectDistinct(dashboards),\n    app = collectDistinct(client.application_context)\n  }, by:{query_string}\n| fields query_string, execution_count, total_consumption, total_cost=(total_consumption/1024/1024/1024*toDouble($Price)), Dashboards=arrayFlatten(dashboards), Users=users, App=app\n| fieldsRename `Query string`=query_string, `Execution count`=execution_count, `Total volume`=total_consumption, `Total cost`=total_cost\n| sort `Total volume` desc\n| limit 50",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "Query string",
                "categoryAxisLabel": "Query string",
                "tooltipVariant": "single",
                "valueAxis": "Execution count",
                "valueAxisLabel": "Execution count"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle"
            },
            "histogram": {
              "dataMappings": [],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "Execution count"
              },
              "displayedFields": [
                "Query string"
              ],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "error",
              "prefixIcon": "",
              "recordField": "error",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"Query string\"]": 826
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1722507492912,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": "gibibyte",
                "identifier": "Total volume",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1722507558256,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Total cost",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
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
          "query": "fetch dt.system.events\n| filter status == \"SUCCEEDED\" and startsWith(query_string, \"fetch logs\")\n| filter in(\"ALL\", $User) OR in(user.email, $User)\n| filter in(\"ALL\", $Application) OR in(client.application_context, $Application)\n| filterOut contains(query_string, \"filter\")\n  OR contains(query_string,\"scanLimitGBytes\")\n  OR contains(query_string,\"from:\")\n  OR contains(query_string, \"samplingRatio\")\n  OR contains(query_string, \"limit\")\n| summarize {executions = count(), query_volume=sum(scanned_bytes)}, by: {query = query_string, user.email, app = client.application_context}\n| fieldsAdd query_cost = query_volume/1024/1024/1024*toDouble($Price)\n| fields  query, Executions=executions, query_volume, query_cost, User=user.email, App=app\n| fieldsRename `Query string`=query, `Query volume`=query_volume, `Query cost`=query_cost\n| sort `Query volume` desc, Executions desc, User asc\n| limit 50",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "Query string",
                "categoryAxisLabel": "Query string",
                "valueAxis": "Executions",
                "valueAxisLabel": "Executions"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect"
            },
            "dataMapping": {
              "value": "Executions"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "Executions"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Query volume"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Query cost"
                }
              ],
              "displayedFields": [
                "Query string",
                "User",
                "App"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "Query string"
              },
              "displayedFields": [
                "Query string"
              ],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "Executions",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "error",
              "prefixIcon": "",
              "recordField": "error",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1722509218723,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": "gibibyte",
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1722509229463,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Query cost",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "52": {
          "content": "# Overall query usage\n---\n",
          "type": "markdown"
        },
        "7": {
          "content": "#\n# Bucket utilization\n---",
          "type": "markdown"
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter status == \"SUCCEEDED\" AND scanned_bytes\u003e0\n| fields query_string, status, timestamp, scanned_bytes, bucket = if(bucket == \"\",\"empty\",else:bucket)\n| summarize {volume = count(), sum(scanned_bytes)}, by:(bucket)\n| summarize array = collectArray(record(bucket=bucket,volume=volume)),volume=collectArray(volume)\n| fieldsAdd sum = arraySum(volume)\n| expand array\n| lookup [\n  fetch dt.system.buckets\n],\n  sourceField: array[bucket],\n  lookupField: name,\n  prefix: \"buckets.\",\n  executionOrder:leftFirst\n| filter buckets.dt.system.table==\"logs\"\n| fields `bucket` = array[bucket], `volume` = array[volume], percentage = (toDouble(array[volume]/sum) * 100)\n| sort percentage desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Queries across Grail log buckets",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "bucket",
                "categoryAxisLabel": "bucket",
                "valueAxis": "volume",
                "valueAxisLabel": "volume"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "legend": {
                "hidden": false,
                "position": "right"
              }
            },
            "dataMapping": {
              "value": "volume"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "volume"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "percentage"
                }
              ],
              "displayedFields": [
                "bucket"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "bucket"
              },
              "displayedFields": [
                "bucket"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "volume",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "timestamp",
              "prefixIcon": "",
              "recordField": "timestamp",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
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
          "input": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| summarize distinctApps=collectDistinct(client.application_context)\n| fields values = arrayFlatten(arrayRemoveNulls(distinctApps))",
          "key": "Application",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "input": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| summarize distinctUsers=collectDistinct(user.email)\n| fields values = arrayFlatten(arrayRemoveNulls(distinctUsers))\n",
          "key": "User",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": "0.003081",
          "editable": true,
          "key": "Price",
          "type": "text",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": "USD",
          "input": "USD,EUR,JPY,GBP,CHF,CAD",
          "key": "Currency",
          "multiple": false,
          "type": "csv",
          "version": 1,
          "visible": false
        }
      ],
      "version": 19
    })
  private = true
}
