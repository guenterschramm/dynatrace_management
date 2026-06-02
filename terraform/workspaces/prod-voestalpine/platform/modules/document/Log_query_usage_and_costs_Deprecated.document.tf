resource "dynatrace_document" "Log_query_usage_and_costs_Deprecated" {
  name      = "Log query usage and costs (Deprecated)"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 6,
          "w": 4,
          "x": 0,
          "y": 5
        },
        "10": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 89
        },
        "17": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 20
        },
        "20": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 99
        },
        "24": {
          "h": 12,
          "w": 24,
          "x": 0,
          "y": 114
        },
        "27": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "35": {
          "h": 3,
          "w": 8,
          "x": 8,
          "y": 17
        },
        "36": {
          "h": 3,
          "w": 4,
          "x": 16,
          "y": 20
        },
        "37": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 20
        },
        "38": {
          "h": 3,
          "w": 4,
          "x": 12,
          "y": 20
        },
        "39": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 20
        },
        "40": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 72
        },
        "45": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 81
        },
        "46": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 83
        },
        "48": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 50
        },
        "49": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 66
        },
        "5": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 56
        },
        "50": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 75
        },
        "51": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 92
        },
        "52": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "61": {
          "h": 3,
          "w": 8,
          "x": 0,
          "y": 17
        },
        "62": {
          "h": 3,
          "w": 4,
          "x": 8,
          "y": 20
        },
        "63": {
          "h": 3,
          "w": 8,
          "x": 16,
          "y": 17
        },
        "69": {
          "h": 6,
          "w": 16,
          "x": 4,
          "y": 5
        },
        "70": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 107
        },
        "71": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 47
        },
        "72": {
          "h": 6,
          "w": 4,
          "x": 20,
          "y": 5
        },
        "73": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 11
        },
        "74": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 103
        },
        "75": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 103
        },
        "76": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 64
        },
        "77": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 58
        },
        "78": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 27
        },
        "79": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 27
        },
        "80": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 27
        },
        "81": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 36
        },
        "82": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 41
        },
        "83": {
          "h": 2,
          "w": 8,
          "x": 0,
          "y": 32
        },
        "84": {
          "h": 2,
          "w": 8,
          "x": 0,
          "y": 34
        },
        "87": {
          "h": 2,
          "w": 8,
          "x": 8,
          "y": 32
        },
        "88": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 36
        },
        "89": {
          "h": 6,
          "w": 8,
          "x": 8,
          "y": 41
        },
        "90": {
          "h": 2,
          "w": 8,
          "x": 8,
          "y": 34
        },
        "91": {
          "h": 2,
          "w": 8,
          "x": 16,
          "y": 32
        },
        "92": {
          "h": 2,
          "w": 8,
          "x": 16,
          "y": 34
        },
        "93": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 36
        },
        "94": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 41
        },
        "95": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "98": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 11
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
          "query": "fetch dt.system.query_executions\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| makeTimeseries query_count=count(), time:timestamp, bins:40",
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
              "colorPalette": "swamps",
              "fieldMapping": {
                "leftAxisValues": [
                  "query_count"
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
            ]
          }
        },
        "10": {
          "content": "#\n##### Log queries not following best practices\nMonitor DQL queries fetching logs which don't utilize [best practices](https://docs.dynatrace.com/docs/shortlink/dql-best-practices) for query performance and costs.\n\nFollowing queries are missing commands/parameters like `filter`, `scanLimit`, `samplingRatio`, and `limit` and have default timeframe.\n\n💡 **Optimization opportunity**: for frequently executed queries, suggest users to filter, limit, or sample data to avoid reoccurring high-volume queries.",
          "type": "markdown"
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: -14d@d, to: @d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries daily=sum(billed_bytes), interval:1d\n| fieldsAdd daily_cost=(daily[]/1024/1024/1024*toDouble($Price))\n| fieldsAdd yesterday_cost = arrayLast(daily_cost)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Yesterday (costs)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "isIconVisible": true,
              "label": "yesterday_cost",
              "labelMode": "none",
              "prefixIcon": "MoneyIcon",
              "recordField": "yesterday_cost",
              "sparklineSettings": {
                "record": "daily_cost"
              },
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "daily_cost",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1718807904460,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "yesterday_cost",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "20": {
          "content": "#\n### Bucket utilization\n\nValidate your bucket segmentation strategy:\n* **\"Current volumes per logs bucket\" pie chart** references total log volume per bucket since created.\n* **\"Queries across Grail log buckets\" donut chart** shows which buckets your users have queried in the selected timeframe.\n \n💡 **Optimization opportunity**: If most of your queries address a single/default bucket, you could improve query performance and costs by segmenting data into multiple buckets.",
          "type": "markdown"
        },
        "24": {
          "content": "#### Additional resources\n**Usage and costs data in Account Management**\n* [User account](https://myaccount.dynatrace.com) \u003e Recent accounts \u003e (Choose your account) \u003e Subscription \u003e Overview \u003e Cost and usage details: Log Management \u0026 Analytics - Query \u003e View details\n**Optimize DQL usage**\n* [DQL Best practices](https://docs.dynatrace.com/docs/shortlink/dql-best-practices)  (docs)\n* [Use log metrics instead of log queries for frequently presented data](https://docs.dynatrace.com/docs/shortlink/lma-log-dashboards) (docs)\n**Manage your Dynatrace Platform Subscription budget**\n* [Avoid billing surprises with smart Dynatrace cost monitors](https://www.dynatrace.com/news/blog/avoid-billing-surprises-with-smart-dynatrace-cost-monitors/) (blog)\n* [How to use DPS cost monitors](https://docs.dynatrace.com/docs/shortlink/cost-monitors) (docs)\n* [Set up and get alerted with custom budgets with DPS](https://docs.dynatrace.com/docs/shortlink/dps-budgets) (docs)\n**Dynatrace Platform setup**\n* [Setup Dynatrace Platform according to best practises](https://docs.dynatrace.com/docs/shortlink/upgrade-latest-dynatrace) (docs)\n* [Restrict users to query only data they need](https://docs.dynatrace.com/docs/shortlink/grail-data-model) (docs)\n\n---\n\n#### About this dashboard\n\n**User access**\n\n* This dashboard uses data in `dt.system` tables about billing usage events and query execution events.\n* Assign or remove [default access policies](https://docs.dynatrace.com/docs/shortlink/built-in-policies#access-to-data) with `storage:system:read` permission to provide or restrict access to this data.\n\n**Price**\n* Fill in the Price field with custom figure to measure cost per queried gibibyte (see [Pricing](https://www.dynatrace.com/pricing/#log-management-and-analytics)).\n* Please note that consecutive or parallel DPS contracts can have different price points. Thus, cost calculated in this dashboard might differ from official cost as shown in the Account Management portal.\n\nRelease v1.2",
          "type": "markdown"
        },
        "27": {
          "content": "##### Query volume statistics, trends, and costs\nFor Retain with Included queries costs, go to Account Management Portal.",
          "type": "markdown"
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from:-28d@d, to:@d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| makeTimeseries weekly=sum(scanned_bytes), interval:7d\n| fieldsAdd lastweek = arrayLast(weekly)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 7d (total)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "lastweek",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "lastweek",
              "sparklineSettings": {
                "record": "weekly"
              },
              "trend": {
                "isVisible": true
              }
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
          "query": "fetch dt.system.events, from:-84d@d, to:@d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries monthly=sum(billed_bytes), interval:28d\n| fieldsAdd lastmonth = arrayLast(monthly)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 28d (billable)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "lastmonth",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "lastmonth",
              "sparklineSettings": {
                "record": "monthly"
              },
              "trend": {
                "isVisible": true
              }
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
          "query": "fetch dt.system.events, from: -14d@d, to: @d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries daily=sum(billed_bytes), interval:1d\n| fieldsAdd yesterday = arrayLast(daily)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Yesterday (billable)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "yesterday",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "yesterday",
              "sparklineSettings": {
                "record": "daily"
              },
              "trend": {
                "isVisible": true
              }
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
          "query": "fetch dt.system.events, from:-28d@d, to:@d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries daily=sum(billed_bytes), interval:7d\n| fieldsAdd daily_cost=(daily[]/1024/1024/1024*toDouble($Price))\n| fieldsAdd yesterday_cost = arrayLast(daily_cost)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 7d (costs)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "isIconVisible": true,
              "label": "yesterday_cost",
              "labelMode": "none",
              "prefixIcon": "MoneyIcon",
              "recordField": "yesterday_cost",
              "sparklineSettings": {
                "record": "daily_cost"
              },
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "daily_cost",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1718807904460,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "yesterday_cost",
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
          "query": "fetch dt.system.events, from:-84d@d, to:@d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries daily=sum(billed_bytes), interval:28d\n| fieldsAdd daily_cost=(daily[]/1024/1024/1024*toDouble($Price))\n| fieldsAdd yesterday_cost = arrayLast(daily_cost)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 28d (costs)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "isIconVisible": true,
              "label": "yesterday_cost",
              "labelMode": "none",
              "prefixIcon": "MoneyIcon",
              "recordField": "yesterday_cost",
              "sparklineSettings": {
                "record": "daily_cost"
              },
              "trend": {
                "isVisible": true
              }
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
                "decimals": 2,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "yesterday_cost",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "40": {
          "content": "#\n##### Log queries in Dashboards\n\nLog queries (`fetch logs`) in Dashboards are a convenient way to observe log data, but frequent dashboard reloads by multiple users can drastically increase log query costs. \n\n\n💡 **Optimization opportunity**: for very frequently accessed log dashboards, [extract relevant data from logs during ingest with log metrics](https://docs.dynatrace.com/docs/shortlink/lma-log-dashboards). By replacing log queries with log metric queries, you may increase performance and reduce costs.",
          "type": "markdown"
        },
        "45": {
          "content": "#\n##### Dashboards can include log queries that auto-refresh every minute\n\n💡 **Optimization opportunity**: if you see results here, double check with the user if there is a valid use case for querying logs on a dashboard every minute, or manual refresh is enough",
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
            "table": {
              "colorThresholdTarget": "background",
              "sortBy": [
                {
                  "columnId": "[\"query_string\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": []
          }
        },
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(\"ALL\", $Application) OR in(client.application_context, $Application)\n| filter in(\"ALL\", $User) OR in(user.email, $User)\n| summarize \nUser = takeFirst(user.email),\nApp=takeFirst(client.application_context),\nscanned_bytes = sum(scanned_bytes),\nbillable_bytes = sum(scanned_bytes.on_demand),\ncount(), \nby: query_id\n| summarize \nquery_count = countDistinct(query_id), \nscanned_bytes = sum(scanned_bytes),\nbillable_bytes = sum(billable_bytes),\nby: { User, App }\n| fieldsAdd query_cost = billable_bytes/1024/1024/1024*toDouble($Price)\n| fields User, App,\n`Query count (user/app)`=query_count,\n`Query volume (user/app)`=scanned_bytes\n| limit 50",
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
            "table": {
              "columnOrder": [
                "[\"User\"]",
                "[\"App\"]",
                "[\"Query count (user/app)\"]",
                "[\"Query volume (user/app)\"]"
              ],
              "columnWidths": {
                "[\"User\"]": 437.0625
              },
              "sortBy": [
                {
                  "columnId": "[\"App\"]",
                  "direction": "descending"
                }
              ]
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
              },
              {
                "added": 1748277954716,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Billable query volume (user/app)",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "fetch dt.system.query_executions\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter scanned_bytes.included \u003e 0\n| fields\n    timestamp,\n    query_string,\n    query_volume=toDouble(scanned_bytes.included),\n    User=user.email,\n    App=client.application_context\n| fieldsRename `Query string`=query_string, `Included query volume`=query_volume\n| sort `Included query volume` desc\n| limit 25",
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
            "table": {
              "sortBy": [
                {
                  "columnId": "[\"Included query volume\"]",
                  "direction": "descending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1722507076574,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": "gibibyte",
                "identifier": "Included query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "5": {
          "content": "#\n##### Top 25 queries by billable volume\n💡 **Optimization opportunity**: Retain with Included queries can help control query costs. [Learn how to configure your bucket](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases/lma-e2e-included-log-queries)",
          "type": "markdown"
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter status == \"SUCCEEDED\" and startsWith(query_string, \"fetch logs\") and (client.application_context==\"dynatrace.dashboards\" or client.application_context == \"dynatrace.classic.dashboard-log-tile\")\n| filter in(\"ALL\", $User) OR in(user.email, $User)\n| parse client.source, \"DATA 'ui/dashboard/' STRING:dashboard.id\"\n| fieldsAdd dashboard.id = if(client.application_context==\"dynatrace.classic.dashboard-log-tile\", client.source, else:dashboard.id)\n| summarize {\n    single_query_scanned = sum(scanned_bytes.on_demand),\n    single_query_total_scanned = sum(scanned_bytes),    \n    dashboards = collectDistinct(dashboard.id)\n  }, by:{\n    query_id,\n    user.email,\n    query_string,\n    client.application_context\n  }\n| sort single_query_scanned desc\n| limit 500 // to avoid lookup timeout, we are using only top 500 query executions\n| lookup [\n  fetch dt.system.events\n],\n  sourceField: query_id,\n  lookupField: query_id,\n  prefix: \"billing.\",\n  executionOrder:leftFirst\n\n| summarize {\n    total_consumption = sum(billing.billed_bytes),\n    total_volume = sum(single_query_total_scanned),    \n    execution_count = count(),\n    users = collectDistinct(user.email),\n    dashboards = collectDistinct(dashboards),\n    app = collectDistinct(client.application_context)\n  }, by:{query_string}\n| fields query_string, execution_count, total_volume, total_consumption, total_cost=(total_consumption/1024/1024/1024*toDouble($Price)), Dashboards=arrayFlatten(dashboards), Users=users, App=app\n| fieldsRename `Query string`=query_string, `Execution count`=execution_count, `Total volume`=total_volume ,`Total billable volume`=total_consumption, `Total cost`=total_cost\n| sort `Total volume` desc\n| limit 50",
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
            "table": {
              "columnWidths": {
                "[\"Query string\"]": 826
              },
              "sortBy": [
                {
                  "columnId": "[\"Query string\"]",
                  "direction": "ascending"
                }
              ]
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
              },
              {
                "added": 1748280811329,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Total billable volume",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "fetch dt.system.events\n| filter status == \"SUCCEEDED\" and startsWith(query_string, \"fetch logs\")\n| filter in(\"ALL\", $User) OR in(user.email, $User)\n| filter in(\"ALL\", $Application) OR in(client.application_context, $Application)\n| filterOut contains(query_string, \"filter\")\n  OR contains(query_string,\"scanLimitGBytes\")\n  OR contains(query_string,\"from:\")\n  OR contains(query_string, \"samplingRatio\")\n  OR contains(query_string, \"limit\")\n| summarize {executions = count(), query_volume=sum(scanned_bytes),billable_query_volume=sum(scanned_bytes.on_demand)}, by: {query = query_string, user.email, app = client.application_context}\n| fieldsAdd query_cost = billable_query_volume/1024/1024/1024*toDouble($Price)\n| fields  query, Executions=executions, query_volume, User=user.email, App=app\n| fieldsRename `Query string`=query, `Query volume`=query_volume\n| sort `Query volume` desc, Executions desc, User asc\n| limit 50",
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
            "table": {
              "columnOrder": [
                "[\"Query string\"]",
                "[\"Executions\"]",
                "[\"Query volume\"]",
                "[\"User\"]",
                "[\"App\"]"
              ],
              "sortBy": [
                {
                  "columnId": "[\"Query string\"]",
                  "direction": "ascending"
                }
              ]
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
              },
              {
                "added": 1748278285966,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Billable query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "52": {
          "content": "### Deprecation notice ⚠️\n\nThis dashboard is deprecated and will be removed by the end of June 2026. You can create a local copy to keep using it.\n\nYou should use the new **\"Usage - Logs\"** ready-made dashboard\n\n---\n\n### Log query usage and costs\nThis dashboard helps to understand log query usage and identify optimization opportunities. \n\n**Minimum recommended timeframe is 2h.**\n\n\n",
          "type": "markdown"
        },
        "61": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: -14d@d, to: @d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| makeTimeseries daily=sum(scanned_bytes), interval:1d\n| fieldsAdd yesterday = arrayLast(daily)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Yesterday (total)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "yesterday",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "yesterday",
              "sparklineSettings": {
                "record": "daily"
              },
              "trend": {
                "isVisible": true
              }
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
          "query": "fetch dt.system.events, from:-28d@d, to:@d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| makeTimeseries weekly=sum(billed_bytes), interval:7d\n| fieldsAdd lastweek = arrayLast(weekly)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 7d (billable)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "lastweek",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "lastweek",
              "sparklineSettings": {
                "record": "weekly"
              },
              "trend": {
                "isVisible": true
              }
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
          "query": "fetch dt.system.query_executions, from:-84d@d, to:@d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| makeTimeseries monthly=sum(scanned_bytes), interval:28d\n| fieldsAdd lastmonth = arrayLast(monthly)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Last 28d (total)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "lastmonth",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "lastmonth",
              "sparklineSettings": {
                "record": "monthly"
              },
              "trend": {
                "isVisible": true
              }
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
            ]
          }
        },
        "69": {
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
          "query": "fetch dt.system.query_executions, from: now()-30d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| makeTimeseries \n  `Total query volume`=sum(scanned_bytes), \n  `Included query volume`=sum(scanned_bytes.included), \n  `Billable query volume`=sum(scanned_bytes.on_demand), \n  time:timestamp, interval: 1d",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Daily query volume (Last 30d)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "purple-rain",
              "fieldMapping": {
                "leftAxisValues": [
                  "Total query volume",
                  "Included query volume",
                  "Billable query volume"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "start",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1717404430040,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": "gibibyte",
                "identifier": "scanned_bytes",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748272837672,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "scanned_bytes.on_demand",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748272854058,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "scanned_bytes.included",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "70": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.buckets\n| filter dt.system.table == \"logs\"\n| fields bucket = name, included_query_days, retention_days, size = estimated_uncompressed_bytes \n| join [\n  fetch dt.system.query_executions\n  | filter table == \"logs\"\n  | filter status == \"SUCCEEDED\"  \n  | summarize scanned_bytes = sum(scanned_bytes), scanned_bytes.included = sum(scanned_bytes.included), by: { bucket }\n], on: bucket, kind:outer\n| fieldsAdd right.scanned_bytes = if (isNull(right.scanned_bytes), 0.0, else: right.scanned_bytes)\n| fieldsAdd right.scanned_bytes.included = if (isNull(right.scanned_bytes.included), 0.0, else: right.scanned_bytes.included)\n| sort right.scanned_bytes desc\n| fields `Bucket name` = bucket, Size = size, `Retention` = retention_days, `Included queries period` = included_query_days, `Total query volume` = right.scanned_bytes, `Included query volume` = right.scanned_bytes.included",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Current volumes per logs bucket included usage data in selected timeframe",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"Bucket name\"]",
                "[\"Size\"]",
                "[\"Retention\"]",
                "[\"Included queries period\"]",
                "[\"Total query volume\"]",
                "[\"Included query volume\"]"
              ],
              "columnWidths": {
                "[\"name\"]": 352.3999938964844
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1716553779865,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Size",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748279418040,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Total query volume",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748279452463,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Included query volume",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748279512808,
                "baseUnit": "day",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Retention",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1748279522547,
                "baseUnit": "day",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Included queries period",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "71": {
          "content": "#\n### Detailed log query usage and optimization opportunities\n\nAnalyze log query usage across different Applications and Users. Use the timeframe and filters above to narrow down usage data by `Application` and `User`. \n\nFor cost analysis, you can set the `Price` variable to your contract price. \n\n---",
          "type": "markdown"
        },
        "72": {
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
          "query": "fetch dt.system.query_executions\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize duration = percentile(execution_duration_ms, 50)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Median query duration",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "timestamp",
              "labelMode": "none",
              "prefixIcon": "StopwatchIcon",
              "recordField": "duration",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "duration",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "\u003c",
                    "id": 0,
                    "label": "",
                    "value": 100
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 1000
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "\u003e",
                    "id": 2,
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1748272854058,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "duration",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "73": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d, to: @d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| makeTimeseries users=countDistinct(user.email), interval: 7d\n| fieldsAdd daily = arrayLast(users)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Weekly active users ",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "lastmonth",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "daily",
              "sparklineSettings": {
                "record": "users"
              },
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "none",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "daily",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "74": {
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
                "categoryAxis": "name"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "legend": {
                "position": "right"
              }
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
            ]
          }
        },
        "75": {
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
                "categoryAxis": "bucket"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "legend": {
                "position": "right"
              }
            },
            "thresholds": []
          }
        },
        "76": {
          "content": "#\n##### Top 25 queries by included volume\n",
          "type": "markdown"
        },
        "77": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Log Management \u0026 Analytics - Query\" and event.version == \"1.0\"\n| filter in(\"ALL\", $User) OR in(user.email, $User)\n| filter in(\"ALL\", $Application) OR in(client.application_context, $Application)\n| sort billed_bytes desc\n| limit 25\n| lookup [\n  fetch dt.system.query_executions, \n from:toTimestamp($dt_timeframe_from)-2h, \n to:toTimestamp($dt_timeframe_to) \n],\n  sourceField: query_id,\n  lookupField: query_id,\n  prefix: \"executiondata.\",\n  executionOrder:leftFirst\n| fields\n    timestamp=toTimestamp(executiondata.timestamp),\n    query_string=executiondata.query_string,\n    query_volume=toDouble(billed_bytes),\n    query_cost = toDouble(billed_bytes)/1024/1024/1024*toDouble($Price),\n    User=user.email,\n    App=client.application_context\n| fieldsRename `Query string`=query_string, `Billable query volume`=query_volume, `Query cost`=query_cost\n| sort `Billable query volume` desc",
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
            "table": {
              "sortBy": [
                {
                  "columnId": "[\"Query string\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1722507076574,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": "gibibyte",
                "identifier": "Billable query volume",
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
            ]
          }
        },
        "78": {
          "content": "### Log Analytics\n---\nLog Analytics helps you make sense of vast volumes of log data by turning raw entries into actionable insights. Whether you're troubleshooting issues, monitoring system behavior, or exploring trends, it enables you to search, filter, and visualize logs with precision.\n\nYou can use Logs, Notebooks or Security Investigator app.\n\n[Explore in Logs app](/ui/apps/dynatrace.logs/) ",
          "type": "markdown"
        },
        "79": {
          "content": "### Logs on Dashboards\n---\n\nDashboards are a central place to monitor everything from infrastructure health to application performance. While you can display raw log data directly, transforming logs into metrics or business events using OpenPipeline helps streamline dashboards for faster loading and clearer insights.\n\nThis approach makes it easier to track key patterns, set alerts, and share meaningful views across teams - without overloading your dashboards with complex queries.\n\n[Optimize dashboards with Log queries](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases/lma-log-query-dashboard)\n\n\n",
          "type": "markdown"
        },
        "80": {
          "content": "### Logs in Context \n---\n\nDynatrace automatically enriches logs with context like entities or traces - giving you instant access to logs in different apps. Whether you're investigating a service issue, analyzing infrastructure behavior, or exploring cloud activity, logs are just one click away.\n\nThis seamless integration across apps like Kubernetes, Clouds, Infrastructure, Databases, and Services eliminates the need to build queries manually. You get faster insights, fewer blind spots, and a smoother troubleshooting experience.\n\n[Learn more about Logs in Context](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases/lma-e2e-troubleshooting)",
          "type": "markdown"
        },
        "81": {
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
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.classic.log-events\", \"dynatrace.notebooks\", \"dynatrace.logs\", \"dynatrace.security.investigator\"})\n| makeTimeseries monthly=countDistinct(user.email), by:{client.application_context}, interval:7d",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Weekly number of users by app",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "fireplace",
              "fieldMapping": {
                "leftAxisValues": [
                  "monthly"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "interval"
              ],
              "legend": {
                "position": "bottom"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "start",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "82": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.classic.log-events\", \"dynatrace.notebooks\", \"dynatrace.logs\", \"dynatrace.security.investigator\"})\n| fieldsAdd App = client.application_context\n\n| summarize \nuser_count = countDistinct(user.email),\nquery_count = countDistinct(query_id), \nscanned_bytes = sum(scanned_bytes),\nby: {usecase, App}\n\n| fields \nApp,\n`User count`=user_count,\n`Query count`=query_count,\n`Scanned volume`=scanned_bytes\n\n| sort `User count` desc\n\n\n",
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
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"App\"]",
                "[\"User count\"]",
                "[\"Query count\"]",
                "[\"Scanned volume\"]"
              ],
              "sortBy": [
                {
                  "columnId": "[\"User count\"]",
                  "direction": "descending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1752578982646,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Scanned volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "83": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize \nlastmonth_users=countDistinct(user.email), \nusers_analytics = collectDistinct(\n  if(\n    (client.application_context==\"dynatrace.notebooks\" OR\n    client.application_context==\"dynatrace.classic.log-events\" OR\n    client.application_context==\"dynatrace.logs\" OR\n    client.application_context==\"dynatrace.security.investigator\")\n    , user.email, else:null))\n\n| fieldsAdd lastmonth_users_per_apps = arraySize(arrayRemoveNulls(users_analytics))\n| fieldsAdd percentage_users1 = lastmonth_users_per_apps  + lastmonth_users\n| fieldsAdd percentage_users2 = lastmonth_users_per_apps / lastmonth_users*100\n| fieldsAdd percentage_users = 100*lastmonth_users_per_apps / lastmonth_users\n\n| fields `Users` = concat(percentage_users, \"% of users querying logs use log analytics\")\n\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Users",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Users",
              "trend": {
                "isRelative": false,
                "isVisible": true
              }
            },
            "thresholds": []
          }
        },
        "84": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize \nlastmonth_users=countDistinct(user.email), \nlastmonth_query=countDistinct(query_id),\nquery_notebooks=countDistinct(if(client.application_context == \"dynatrace.notebooks\", query_id)),\nquery_logs=countDistinct(if(client.application_context == \"dynatrace.logs\", query_id)),\nquery_classic=countDistinct(if(client.application_context == \"dynatrace.classic.log-events\", query_id)),\nquery_security=countDistinct(if(client.application_context == \"dynatrace.security.investigator\", query_id)),\nusers_analytics = collectDistinct(\n  if(\n    (client.application_context==\"dynatrace.notebooks\" OR\n    client.application_context==\"dynatrace.classic.log-events\" OR\n    client.application_context==\"dynatrace.logs\" OR\n    client.application_context==\"dynatrace.security.investigator\")\n    , user.email, else:null))\n\n| fieldsAdd lastmonth_users_per_apps = arraySize(arrayRemoveNulls(users_analytics))\n| fieldsAdd lastmonth_query_per_apps = (query_notebooks+query_logs+query_classic+query_security)\n\n| fieldsAdd percentage_users1 = lastmonth_users_per_apps  + lastmonth_users\n| fieldsAdd percentage_users2 = lastmonth_users_per_apps / lastmonth_users*100\n| fieldsAdd percentage_users = 100*lastmonth_users_per_apps / lastmonth_users\n\n| fieldsAdd average_queries_per_user = lastmonth_query_per_apps / lastmonth_users_per_apps\n\n| fields `Depth of Adoption (Queries)` = concat(\"On average, a user runs \",average_queries_per_user, \" log analytics queries\")\n\n\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queries per user",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "label": "Recommendation",
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Depth of Adoption (Queries)",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": []
          }
        },
        "87": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n\n| summarize \nlastmonth_users=countDistinct(user.email),\nusers_analytics = collectDistinct(\n  if(\n    (client.application_context==\"dynatrace.classic.embedded-logs\" OR\n    client.application_context==\"dynatrace.kubernetes\" OR\n    client.application_context==\"dynatrace.infraops\" OR\n    client.application_context==\"dynatrace.clouds\" OR \n    client.application_context==\"dynatrace.database.overview\" OR \n    client.application_context==\"dynatrace.services\" OR\n    client.application_context==\"dynatrace.distributedtracing\" OR\n    client.application_context==\"dynatrace.davis.problems\")\n    , user.email, else:null))\n\n| fieldsAdd lastmonth_users_per_apps = arraySize(arrayRemoveNulls(users_analytics))\n| fieldsAdd percentage_users1 = lastmonth_users_per_apps  + lastmonth_users\n| fieldsAdd percentage_users2 = lastmonth_users_per_apps / lastmonth_users*100\n| fieldsAdd percentage_users = 100*lastmonth_users_per_apps / lastmonth_users\n\n| fields `Users` = concat(percentage_users, \"% of users querying logs run recommended log queries\")\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Users",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Users",
              "trend": {
                "isRelative": false,
                "isVisible": true
              }
            },
            "thresholds": []
          }
        },
        "88": {
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
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.classic.embedded-logs\", \"dynatrace.kubernetes\", \"dynatrace.infraops\", \"dynatrace.clouds\", \"dynatrace.database.overview\", \"dynatrace.services\",\"dynatrace.distributedtracing\", \"dynatrace.davis.problems\"})\n| makeTimeseries monthly=countDistinct(user.email), by:{client.application_context}, interval:7d",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Weekly number of users by app",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "fireplace",
              "fieldMapping": {
                "leftAxisValues": [
                  "monthly"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "interval"
              ],
              "legend": {
                "position": "bottom"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "start",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "89": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.classic.embedded-logs\", \"dynatrace.kubernetes\", \"dynatrace.infraops\", \"dynatrace.clouds\", \"dynatrace.database.overview\", \"dynatrace.services\",\"dynatrace.distributedtracing\", \"dynatrace.davis.problems\"})\n| fieldsAdd App = client.application_context\n\n| summarize \nuser_count = countDistinct(user.email),\nquery_count = countDistinct(query_id), \nscanned_bytes = sum(scanned_bytes),\nby: {usecase, App}\n\n| fields \nApp,\n`User count`=user_count,\n`Query count`=query_count\n\n| sort `User count` desc\n\n\n",
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
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"App\"]",
                "[\"User count\"]",
                "[\"Query count\"]"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1752578982646,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Scanned volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "90": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize \nlastmonth_users=countDistinct(user.email), \nlastmonth_query=countDistinct(query_id),\nquery_classic=countDistinct(if(client.application_context == \"dynatrace.classic.embedded-logs\", query_id)),\nquery_kubernetes=countDistinct(if(client.application_context == \"dynatrace.kubernetes\", query_id)),\nquery_infraops=countDistinct(if(client.application_context == \"dynatrace.infraops\", query_id)),\nquery_clouds=countDistinct(if(client.application_context == \"dynatrace.clouds\", query_id)),\nquery_database=countDistinct(if(client.application_context == \"dynatrace.database.overview\", query_id)),\nquery_services=countDistinct(if(client.application_context == \"dynatrace.services\", query_id)),\nquery_distributedtracing=countDistinct(if(client.application_context == \"dynatrace.distributedtracing\", query_id)),\nusers_analytics = collectDistinct(\n  if(\n    (client.application_context==\"dynatrace.classic.embedded-logs\" OR\n    client.application_context==\"dynatrace.kubernetes\" OR\n    client.application_context==\"dynatrace.infraops\" OR\n    client.application_context==\"dynatrace.clouds\" OR \n    client.application_context==\"dynatrace.database.overview\" OR \n    client.application_context==\"dynatrace.services\" OR\n    client.application_context==\"dynatrace.distributedtracing\" OR\n    client.application_context==\"dynatrace.davis.problems\")\n    , user.email, else:null))\n\n| fieldsAdd lastmonth_users_per_apps = arraySize(arrayRemoveNulls(users_analytics))\n| fieldsAdd lastmonth_query_per_apps = (query_classic+query_kubernetes+query_infraops+query_clouds+query_database+query_services+query_distributedtracing)\n\n| fieldsAdd percentage_users1 = lastmonth_users_per_apps  + lastmonth_users\n| fieldsAdd percentage_users2 = lastmonth_users_per_apps / lastmonth_users*100\n| fieldsAdd percentage_users = 100*lastmonth_users_per_apps / lastmonth_users\n\n| fieldsAdd average_queries_per_user = lastmonth_query_per_apps / lastmonth_users_per_apps\n\n| fields `Queries per user` = concat(\"On average, a user runs \",average_queries_per_user, \" recommended log queries\")\n\n\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Queries per user",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "label": "Recommendation",
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Queries per user",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": []
          }
        },
        "91": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize \nlastmonth_users=countDistinct(user.email), \nusers_dashboards = collectDistinct(\n  if(\n    (client.application_context==\"dynatrace.dashboards\" OR\n    client.application_context==\"dynatrace.classic.dashboard-log-tile\")\n    , user.email, else:null))\n\n| fieldsAdd lastmonth_users_per_apps = arraySize(arrayRemoveNulls(users_dashboards))\n| fieldsAdd percentage_users1 = lastmonth_users_per_apps  + lastmonth_users\n| fieldsAdd percentage_users2 = lastmonth_users_per_apps / lastmonth_users*100\n| fieldsAdd percentage_users = 100*lastmonth_users_per_apps / lastmonth_users\n\n| fields `Users` = concat(percentage_users, \"% of users querying logs run pinned logs queries\")\n\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Users",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Users",
              "trend": {
                "isRelative": false,
                "isVisible": true
              }
            },
            "thresholds": []
          }
        },
        "92": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize \nlastmonth_query=sum(scanned_bytes.on_demand)/ (1024*1024*1024),\nquery_3rdgendashboards = sum(if(client.application_context == \"dynatrace.dashboards\", scanned_bytes.on_demand)) / (1024 * 1024 * 1024),\nquery_2rdgendashboards = sum(if(client.application_context == \"dynatrace.classic.dashboard-log-tile\", scanned_bytes.on_demand)) / (1024 * 1024 * 1024)\n\n| fieldsAdd lastmonth_query_per_apps = query_3rdgendashboards+query_2rdgendashboards\n| fieldsAdd percentage_query1 = lastmonth_query_per_apps  + lastmonth_query\n| fieldsAdd percentage_query2 = lastmonth_query_per_apps / lastmonth_query*100\n| fieldsAdd percentage_query = round(100*lastmonth_query_per_apps / lastmonth_query)\n| fields `Queries` = concat(\"Dashboards contribute to \",toLong(percentage_query), \"% of billable log query volume\")\n\n\n\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Assessment of optimization opportunity",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "alignment": "start",
              "isIconVisible": true,
              "label": "Recommendation",
              "labelMode": "none",
              "prefixIcon": "InformationIcon",
              "recordField": "Queries",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": []
          }
        },
        "93": {
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
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.dashboards\", \"dynatrace.classic.dashboard-log-tile\"})\n| makeTimeseries monthly=countDistinct(user.email), by:{client.application_context}, interval:7d",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Weekly number of users by app",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "fireplace",
              "fieldMapping": {
                "leftAxisValues": [
                  "monthly"
                ],
                "timestamp": "timeframe"
              },
              "hiddenLegendFields": [
                "interval"
              ],
              "legend": {
                "position": "bottom"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "start",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "94": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| filter in(client.application_context, {\"dynatrace.dashboards\", \"dynatrace.classic.dashboard-log-tile\"})\n| fieldsAdd App = client.application_context\n\n| summarize \nuser_count = countDistinct(user.email),\nquery_count = countDistinct(query_id), \nscanned_bytes = sum(scanned_bytes),\nby: {usecase, App}\n\n| fields \nApp,\n`User count`=user_count,\n`Query count`=query_count,\n`Scanned volume`=scanned_bytes\n\n| sort `User count` desc\n\n\n",
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
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"App\"]",
                "[\"User count\"]",
                "[\"Query count\"]",
                "[\"Scanned volume\"]"
              ],
              "sortBy": [
                {
                  "columnId": "[\"Scanned volume\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1752578982646,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Scanned volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "95": {
          "content": "#\n### Logs adoption by use cases\n**Insights are based on the last 4 weeks of usage data.**\n\nFrom deep-dive investigations to real-time monitoring and streamlined dashboards - logs power a wide range of use cases across Dynatrace. \n\nThis view highlights how users are adopting some log capabilities to solve real problems and accelerate insights. \n\n[Explore other log use cases in the documentation](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases)\n\n",
          "type": "markdown"
        },
        "98": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions\n| filter table == \"logs\"\n| filter status == \"SUCCEEDED\"\n| summarize query_volume = sum(scanned_bytes), by: {client.application_context}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 5 most used apps by query volume",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "client.application_context"
                ]
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "number-of-slices",
                "groupingThresholdValue": 5
              },
              "truncationMode": "start"
            },
            "legend": {
              "ratio": 39
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1722501228555,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": true,
                "displayUnit": "tebibyte",
                "identifier": "query_volume",
                "suffix": "",
                "unitCategory": "data"
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
          "input": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| summarize distinctApps=collectDistinct(client.application_context)\n| fields values = arrayFlatten(arrayRemoveNulls(distinctApps))",
          "key": "Application",
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
          "input": "fetch dt.system.events\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| summarize distinctUsers=collectDistinct(user.email)\n| fields values = arrayFlatten(arrayRemoveNulls(distinctUsers))\n",
          "key": "User",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "0.00",
          "key": "Price",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.logs.log-query-usage-and-costs"
  # private = false
}
