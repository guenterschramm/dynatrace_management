resource "dynatrace_document" "Usage-Traces" {
  name      = "Usage - Traces"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "105": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 47
        },
        "108": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 50
        },
        "111": {
          "h": 6,
          "w": 16,
          "x": 0,
          "y": 3
        },
        "112": {
          "h": 6,
          "w": 4,
          "x": 16,
          "y": 3
        },
        "113": {
          "h": 6,
          "w": 4,
          "x": 20,
          "y": 3
        },
        "114": {
          "h": 6,
          "w": 16,
          "x": 0,
          "y": 9
        },
        "115": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 9
        },
        "116": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "117": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "118": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "119": {
          "h": 11,
          "w": 24,
          "x": 0,
          "y": 36
        },
        "52": {
          "h": 3,
          "w": 23,
          "x": 0,
          "y": 0
        },
        "71": {
          "h": 3,
          "w": 23,
          "x": 0,
          "y": 27
        }
      },
      "settings": {},
      "tiles": {
        "105": {
          "content": "#\n### Storage overview\nUnderstand how your data is distributed across buckets with different configurations. \n\nGrail storage buckets capabilities allow to extend retention period for span data. [Learn more](https://docs.dynatrace.com/docs/observe/application-observability/distributed-tracing/data-retention)\n",
          "type": "markdown"
        },
        "108": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Bucket, retention, included, size, total query, billable, included\nfetch dt.system.buckets\n| filter dt.system.table == \"spans\"\n| fields bucket = name, included_query_days, retention_days, size = estimated_uncompressed_bytes\n\n// join query statistics - scanned bytes\n| join [\n  fetch dt.system.query_executions, from: -7d@d, to: @d\n  | filter table == \"spans\"\n  | filter status == \"SUCCEEDED\"\n  | summarize\n      { scanned_bytes = sum(scanned_bytes / 7),\n        scanned_bytes_included = sum(scanned_bytes.included / 7) },\n      by: { bucket }\n],\n  on: { bucket },\n  kind: outer,\n  prefix: \"queries_\"\n\n// normalize and derive query volume fields\n| fieldsAdd\n    queries_scanned_bytes =\n      if(isNull(queries_scanned_bytes), 0.0, else: queries_scanned_bytes),\n    queries_scanned_bytes_included =\n      if(isNull(queries_scanned_bytes_included), 0.0, else: queries_scanned_bytes_included)\n| sort queries_scanned_bytes desc\n| fieldsAdd\n    query_volume_total    = queries_scanned_bytes,\n    query_volume_included = queries_scanned_bytes_included\n\n// join extended retention\n| join [\n  fetch dt.system.events, from: -1d@d, to: @d\n  | filter event.kind == \"BILLING_USAGE_EVENT\"\n  | filter startsWith(event.type, \"Traces - Retain\")\n  | summarize billable_retain_size = sum(billed_bytes / 24), by: {usage.bucket}\n], on:{ right[usage.bucket] == left[bucket]},\n  kind: outer,\n  prefix: \"billing_\"\n| fields\n  `Bucket name`            = bucket,\n  `Total Retain Size`      = size,\n  `Retention`              = retention_days,\n  `Daily Avg Query volume` = query_volume_total,\n  `Extended Retention`     = if(retention_days \u003e 10, \"🔵\", else: \"-\"),\n  `Billable Retention`     = if(retention_days \u003e 10, billing_billable_retain_size, else: \"-\")\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Spans buckets retention overview",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"Bucket name\"]",
                "[\"Total Retain Size\"]",
                "[\"Retention\"]",
                "[\"Daily Avg Query volume\"]",
                "[\"Extended Retention\"]",
                "[\"Billable Retention\"]"
              ],
              "columnWidths": {
                "[\"Included queries period\"]": 162,
                "[\"RwIQ\"]": 77.2,
                "[\"name\"]": 352.3999938964844
              },
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"RwIQ\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1716553779865,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Total Retain Size",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748279418040,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Daily Avg Query volume",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748279452463,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Billable Retention",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748279512808,
                "baseUnit": "day",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "day",
                "identifier": "Retention",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "111": {
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
          "query": "fetch dt.system.events, from: now()-30d\n| filter event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Traces - Query\" and event.version == \"1.0\"\n| makeTimeseries \n  vol=sum(billed_bytes),\n  time:timestamp, interval: 1d\n| fieldsRename `Billable query volume` = vol\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Billable query volume (Last 30d)",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "hidden": true,
                "position": "bottom"
              },
              "pointsDisplay": "never",
              "seriesOverrides": [
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                    }
                  },
                  "seriesId": [
                    "Billable query volume"
                  ]
                }
              ]
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
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "Billable query volume"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1748272854058,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Billable query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "112": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d, to: @d\n| filter table == \"spans\"\n| filter status == \"SUCCEEDED\"\n| makeTimeseries query_count=count(), interval: 7d\n| fieldsAdd daily = arrayLast(query_count)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Query count (weekly)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "lastmonth",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "daily",
              "sparklineSettings": {
                "record": "query_count"
              },
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "none",
                "cascade": null,
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "daily",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "113": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.query_executions, from: now()-28d, to: @d\n| filter table == \"spans\"\n| filter status == \"SUCCEEDED\"\n| makeTimeseries users=countDistinct(user.email), interval: 7d\n| fieldsAdd daily = arrayLast(users)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Active users (weekly)",
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
            "unitsOverrides": [
              {
                "added": 1718620268306,
                "baseUnit": "none",
                "cascade": null,
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
        "114": {
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
          "query": "fetch dt.system.events, from: now()-30d\n| filter\n  event.kind == \"BILLING_USAGE_EVENT\"\n  and event.type == \"Traces - Query\"\n  and event.version == \"1.0\"\n// Coalesce source\n| fieldsAdd source = coalesce(client.application_context, client.function_context, client.client_context, client.internal_service_context, \"null\")\n\n| makeTimeseries \n  vol=sum(billed_bytes),\n  time:timestamp, interval: 1d\n  ,  by:source\n\n| sort arraysum(vol) desc\n| fieldsRename `Billable query volume` = vol\n| fieldsAdd source = if(source==\"null\", \"workflow / query API / other\", else:source)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Billable query volume share by source (Last 30d)",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "position": "bottom"
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
              "ratio": 24
            },
            "unitsOverrides": [
              {
                "added": 1748272854058,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Billable query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "115": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: now()-30d\n| filter\n  event.kind == \"BILLING_USAGE_EVENT\"\n  and event.type == \"Traces - Query\"\n  and event.version == \"1.0\"\n// Coalesce source\n| fieldsAdd source = coalesce(client.application_context, client.function_context, client.client_context, client.internal_service_context, \"null\")\n\n| summarize {\n    query_volume = sum(billed_bytes)\n  }, by: {source}\n| sort query_volume desc\n| limit 10\n| join [\n  fetch dt.system.query_executions, from: now()-30d\n  | filter table == \"spans\"\n  | filter status == \"SUCCEEDED\"\n  | fieldsAdd source = coalesce(client.application_context, client.function_context, client.client_context, client.internal_service_context, \"null\")\n  | summarize {\n    user_count = countDistinct(user.email),\n    query_count = countDistinct(query_id)\n  }, by: {source}\n  ], on:source\n| fields \n  source,\n  query_volume,\n  users = right.user_count,\n  query_count = right.query_count\n| fieldsAdd source = if(source==\"null\", \"Workflow / Query API / Other\", else:source)\n| fieldsRename Application = source, `Query volume` = query_volume, `Users` = users, `Query count` = query_count",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 10 applications by billable query volume (Last 30d)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnWidths": {
                "[\"source\"]": 304
              }
            },
            "unitsOverrides": [
              {
                "added": 1722501228555,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "116": {
          "content": "#\n### Dashboards and Notebooks with high usage\nReview documents and queries listed below. \n\n**Use** the **timeframe** and **filters for Application, User, DocumentId** to set focus.\n\nFrequently accessed Dashboards and Notebooks running multiple expensive queries can be optimized using metrics extracted with OpenPipeline. [Learn more](https://docs.dynatrace.com/docs/platform/openpipeline/use-cases/tutorial-log-processing-pipeline)\n\n\nTo compare week to week usage set the timeframe to Last 7 days",
          "type": "markdown"
        },
        "117": {
          "customLinkSettings": {
            "customLinks": [],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, from: toTimestamp($dt_timeframe_from) - (toTimestamp($dt_timeframe_to) - toTimestamp($dt_timeframe_from)), to: toTimestamp($dt_timeframe_to), scanLimitGBytes: -1\n| filter event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Traces - Query\"\n| dedup event.id\n| filter in(client.application_context, \"dynatrace.dashboards\", \"dynatrace.notebooks\")\n| filter in(\"ALL\", array($User)) OR in(user.email, array($User))\n| parse client.source, \"LD '/ui/' LD:app_type '/' STRING:document_id\"\n| parse client.source, \"'https://' LD '--' LD:tenant_id ('--' | '.') LD\"\n| filter isNotNull(document_id)\n| fieldsAdd matches_filter = if(stringLength($DocumentId) \u003e 0, document_id == $DocumentId, else: true)\n| filter stringLength($DocumentId) == 0 OR document_id == $DocumentId\n| fieldsAdd period = if(toTimestamp(timestamp) \u003e= toTimestamp($dt_timeframe_from), \"current\", else: \"previous\")\n| summarize {\n    `Query volume` = sum(billed_bytes),\n    `Views` = count(),\n    `Users` = countDistinct(user.email),\n    tenant = takeFirst(tenant_id)\n  }, by: {\n    document_id,\n    period,\n    client.application_context\n  }\n| summarize {\n    `Current Period` = sum(if(period == \"current\", `Query volume`, else: 0)),\n    `Previous Period` = sum(if(period == \"previous\", `Query volume`, else: 0)),\n    `Current Period Views` = sum(if(period == \"current\", `Views`, else: 0)),\n    `Previous Period Views` = sum(if(period == \"previous\", `Views`, else: 0)),\n    `Current Period Users` = sum(if(period == \"current\", `Users`, else: 0)),\n    `Previous Period Users` = sum(if(period == \"previous\", `Users`, else: 0)),\n    tenant_id = takeFirst(tenant)    \n  }, by: { `DocumentId` = document_id, `Application` = client.application_context }\n| sort `Current Period` desc\n| limit 25\n| fieldsAdd `Document Link` = if(Application == \"dynatrace.dashboards\", \n    concat(\"https://\", tenant_id, \".apps.dynatrace.com/ui/apps/dynatrace.dashboards/dashboard/\", `DocumentId`),\n    else: concat(\"https://\", tenant_id, \".apps.dynatrace.com/ui/apps/dynatrace.notebooks/notebook/\", `DocumentId`))\n| fieldsRemove tenant_id\n| fieldsAdd `Change` = `Current Period` - `Previous Period`\n| fieldsAdd `Change (%)` = if(`Previous Period` \u003e 0, (`Current Period` - `Previous Period`) / `Previous Period` * 100, else: \"++ NEW ++\")\n| fieldsAdd Trend = if(`Change` \u003e 0, \"📈 Up\", else: if(`Change` \u003c 0, \"📉 Down\", else: \"➡️ Stable\"))\n\n| fieldsAdd `Document Link` = concat(\"[Open](\", `Document Link`, \")\")\n| fieldsRemove `Previous Period`, \"Change\"\n\n| fieldsAdd diff = toLong(`Current Period Views` - `Previous Period Views`)\n| fieldsAdd diff = if (diff \u003e 0, concat(\"+\", diff), else: diff)\n| fieldsAdd Views = concat(toLong(`Current Period Views`), \" (\",  diff ,\")\")\n\n| fieldsAdd diff1 = toLong(`Current Period Users` - `Previous Period Users`)\n| fieldsAdd diff2 = if (diff \u003e 0, concat(\"+\", diff), else: diff)\n| fieldsAdd Users = concat(toLong(`Current Period Users`), \" (\",  diff ,\")\")\n| fieldsRemove diff, diff1, diff2, `Current Period Users`, `Previous Period Users`, `Current Period Views`, `Previous Period Views`\n| fieldsRename `Query volume` = `Current Period`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 25 documents by usage",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#FFD1D1",
                  "field": "Change (%)",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Change (%)"
                    ]
                  },
                  "type": "string",
                  "value": "0"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#ADFFC2",
                  "field": "Change (%)",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Change (%)"
                    ]
                  },
                  "type": "string",
                  "value": "0"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "!=",
                  "customColor": "#FFF4CC",
                  "field": "Change (%)",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Change (%)"
                    ]
                  },
                  "type": "string",
                  "value": "0"
                }
              ]
            },
            "table": {
              "columnOrder": [
                "[\"DocumentId\"]",
                "[\"Document Link\"]",
                "[\"Application\"]",
                "[\"Query volume\"]",
                "[\"Change (%)\"]",
                "[\"Trend\"]",
                "[\"Views\"]",
                "[\"Users\"]"
              ],
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "Document Link"
                  ],
                  "id": 442535.8999999985,
                  "value": "markdown"
                }
              ],
              "hideColumnsForLargeResults": true,
              "sortBy": [
                {
                  "columnId": "[\"Application\"]",
                  "direction": "ascending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1771600197872,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1771600202632,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Previous Period",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1771600203647,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Current Period Views",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1771600204862,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Previous Period Views",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1771600205409,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Current Period Users",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1771600206008,
                "baseUnit": "count",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Previous Period Users",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1771600206346,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Change",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1771600206513,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Change (%)",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "118": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, scanLimitGBytes: -1\n| filter event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Traces - Query\" and event.version == \"1.0\"\n| dedup event.id\n| filter in(\"ALL\", array($Application)) OR in(client.application_context, array($Application))\n| filter in(\"ALL\", array($User)) OR in(user.email, array($User))\n| parse client.source, \"LD '/ui/' LD:app_type '/' STRING:document_id\"\n//filter for the Document ID when there is a text inside the DocumentID field\n| fieldsAdd matches_filter = if(stringLength($DocumentId) \u003e 0, document_id == $DocumentId, else: true)\n| filter stringLength($DocumentId) == 0 OR document_id == $DocumentId\n| fieldsAdd filtered_bytes = if(matches_filter, billed_bytes, else: 0)\n| summarize \n    `Query count` = countIf(matches_filter),    \n    `Query volume` = sum(filtered_bytes),\n//    `Total query count (user)` = count(),\n// `Total query volume (GB)` = sum(billed_bytes) / 1024 / 1024 / 1024.0,\n\n    by: { \n      User = user.email, \n      Application = client.application_context \n    }\n| filter `Query count` \u003e 0\n| sort `Query volume` desc\n| limit 50",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 100 users by application",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"User\"]",
                "[\"Application\"]",
                "[\"Query volume\"]",
                "[\"Query count\"]"
              ],
              "columnWidths": {
                "[\"App\"]": 258.58,
                "[\"Application\"]": 243.6,
                "[\"Query count (user/app)\"]": 182,
                "[\"Query volume (user/app)\"]": 236.8,
                "[\"Query volume\"]": 137.9,
                "[\"User\"]": 484.05
              },
              "hiddenColumns": [
                [
                  "Query count (user/app)"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"Query volume\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1722501228555,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1748277954716,
                "baseUnit": "byte",
                "cascade": null,
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
        "119": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events, scanLimitGBytes: -1\n| filter event.kind == \"BILLING_USAGE_EVENT\" and event.type == \"Traces - Query\" and event.version == \"1.0\"\n| dedup event.id\n| filter in(\"ALL\", array($User)) OR in(user.email, array($User))\n| filter in(\"ALL\", array($Application)) OR in(client.application_context, array($Application))\n| parse client.source, \"LD '/ui/' LD:app_type '/' STRING:document_id\"\n| fieldsAdd matches_filter = if(stringLength($DocumentId) \u003e 0, document_id == $DocumentId, else: true)\n| filter stringLength($DocumentId) == 0 OR document_id == $DocumentId\n| fieldsAdd filtered_bytes = if(matches_filter, billed_bytes, else: 0)\n| sort billed_bytes desc\n| limit 25\n| lookup [\n  fetch dt.system.query_executions, \n from:toTimestamp($dt_timeframe_from)-2h, \n to:toTimestamp($dt_timeframe_to) \n],\n  sourceField: query_id,\n  lookupField: query_id,\n  prefix: \"executiondata.\",\n  executionOrder:leftFirst\n// \u003cdocument filter\u003e\n| fields\n    //timestamp=toTimestamp(executiondata.timestamp),\n    query_string=executiondata.query_string,\n    query_volume=toDouble(billed_bytes),\n    User=user.email,\n    Application=client.application_context,\n    DocumentId = if(stringLength(document_id)\u003e0, document_id, else: \"-\")\n| fieldsRename `Query string`=query_string, `Query volume`=query_volume\n| sort `Query volume` desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": " Top 100 queries by billable query volume",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"DocumentId\"]": 303,
                "[\"Query cost\"]": 124.8,
                "[\"Query string\"]": 767,
                "[\"Query volume\"]": 135.85
              },
              "lineWrapIds": [
                [
                  "Query string"
                ]
              ],
              "linewrapEnabled": true,
              "sortBy": [
                {
                  "columnId": "[\"Query string\"]",
                  "direction": "ascending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1722507076574,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "Query volume",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "52": {
          "content": "### Traces query usage\n\nThis dashboard helps to understand usage and identify optimization opportunities for [Traces powered by Grail (DPS) capabilities](https://docs.dynatrace.com/docs/license/capabilities/traces)\n\n**Minimum recommended timeframe is 2h.**\n\n",
          "type": "markdown"
        },
        "71": {
          "content": "#\n### Detailed query usage and optimization opportunities\n\nAnalyze query usage across different Applications and Users.\n\nUse the timeframe and filters above to narrow down usage data.\n",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch dt.system.events, from: now()-30d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Traces - Query\"\n| filter event.version == \"1.0\"\n| summarize distinctApps=collectDistinct(client.application_context)\n| fields values = arrayFlatten(arrayRemoveNulls(distinctApps))",
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
          "input": "fetch dt.system.events, from: now()-30d\n| filter event.kind == \"BILLING_USAGE_EVENT\"\n| filter event.type == \"Log Management \u0026 Analytics - Query\"\n| filter event.version == \"1.0\"\n| summarize distinctUsers=collectDistinct(user.email)\n| fields values = arrayFlatten(arrayRemoveNulls(distinctUsers))\n",
          "key": "User",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "key": "DocumentId",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.distributedtracing.usage-traces"
  # private = false
}
