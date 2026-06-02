resource "dynatrace_json_dashboard" "BETA-Running_costs_overview_owned_by_guenter_schramm_voestalpine_com" {
  contents = jsonencode({
      "dashboardMetadata": {
        "dashboardFilter": {
          "timeframe": "-7d to now"
        },
        "name": "BETA - Running costs overview",
        "owner": "guenter.schramm@voestalpine.com",
        "shared": true,
        "tags": [
          "Usage",
          "DPS",
          "Dynatrace Platform Subscription",
          "Licensing"
        ]
      },
      "tiles": [
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 266,
            "width": 228
          },
          "configured": true,
          "markdown": "### Full-Stack Monitoring\n\n[Documentation](https://www.dynatrace.com/support/help/shortlink/dps-hosts#full-stack-monitoring-dps)\n\nlast 7days are used to estimate daily and annual forecast",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 570,
            "width": 228
          },
          "configured": true,
          "markdown": "### Infrastructure Monitoring\n\n[Documentation](https://docs.dynatrace.com/docs/shortlink/dps-hosts#infra-dps)\n\nlast 7days are used to estimate daily and annual forecast",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 1748,
            "width": 1596
          },
          "configured": true,
          "name": "Application Security",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 1786,
            "width": 228
          },
          "configured": true,
          "markdown": "### Runtime Vulnerability Analytics (RVA)\n\n[Documentation](https://www.dynatrace.com/support/help/shortlink/dps-appsec#runtime-vulnerability-analytics-rva)\n\nlast 7days are used to estimate daily and annual forecast\n\nThe features is not turned on permanently due to potential high costs",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 2888,
            "width": 304
          },
          "configured": true,
          "markdown": "### Runtime Application Protection (RAP)\n\n[Documentation](https://www.dynatrace.com/support/help/shortlink/dps-appsec#runtime-application-protection-rap)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1254,
            "top": 2888,
            "width": 456
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:billing.runtime_application_protection.usage_per_host:splitBy(\"dt.entity.host\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Top RAP hosts",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:billing.runtime_application_protection.usage_per_host",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.host"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 874,
            "width": 1596
          },
          "configured": true,
          "name": "Digital Experience Monitoring",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 456,
            "left": 0,
            "top": 912,
            "width": 228
          },
          "configured": true,
          "markdown": "### Real User Monitoring\n\n[Documentation - RUM](https://www.dynatrace.com/support/help/shortlink/dps-dem#real-user-monitoring-rum)\n\n[Documentation - Replay](https://www.dynatrace.com/support/help/shortlink/dps-dem#real-user-monitoring-with-session-replay)\n\nlast 7days are used to estimate daily and annual forecast",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 0,
            "top": 1444,
            "width": 228
          },
          "configured": true,
          "markdown": "### Browser Monitor or Clickpath\n\n[Dcumentation - Browser](https://www.dynatrace.com/support/help/shortlink/dps-dem#browser-monitors-clickpaths)\n\n[Documentation - HTTP](https://www.dynatrace.com/support/help/shortlink/dps-dem#http-monitors)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1748,
            "top": 1824,
            "width": 1672
          },
          "configured": true,
          "name": "Logs powered by Grail | Log Management \u0026 Analytics",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1748,
            "top": 1862,
            "width": 304
          },
          "configured": true,
          "markdown": "### Ingest \u0026 Process\n\n### Retain\n\t\n### Query\n\n[Documentation](https://www.dynatrace.com/support/help/shortlink/dps-log-management)\n\n(SaaS only)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1748,
            "top": 228,
            "width": 1672
          },
          "configured": true,
          "name": "Platform Extensions",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1748,
            "top": 304,
            "width": 304
          },
          "configured": true,
          "markdown": "### Custom Metrics Classic\n\n[Documentation](https://www.dynatrace.com/support/help/shortlink/dps-platform-extensions#custom-metrics-classic-dps)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 2052,
            "top": 304,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:billing.custom_metrics_classic.usage:splitBy():sort(value(auto,descending)):limit(20)/1000):limit(100):names"
          ],
          "name": "Per 1000 metric data points",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.custom_metrics_classic.usage:splitBy():sort(value(auto,descending)):limit(20) / 1000",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1h"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2508,
            "top": 304,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:billing.custom_metrics_classic.usage.other_by_entity:splitBy(\"dt.entity.monitored_entity\"):sort(value(auto,descending)):limit(20)/1000):limit(100):names"
          ],
          "name": "Per 1000 metric data points by entity",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.custom_metrics_classic.usage.other_by_entity:splitBy(\"dt.entity.monitored_entity\"):sort(value(auto,descending)):limit(20) / 1000\n",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.monitored_entity"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "singleValueSettings": {
              "linkTileColorToThreshold": true,
              "showSparkLine": true,
              "showTrend": true
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1748,
            "top": 608,
            "width": 304
          },
          "configured": true,
          "markdown": "### Log Monitoring Classic\n\n[Documentation](https://www.dynatrace.com/support/help/shortlink/dps-platform-extensions#log-monitoring-classic)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1748,
            "top": 912,
            "width": 304
          },
          "configured": true,
          "markdown": "### Custom Traces Classic\n\n[Documentation](https://www.dynatrace.com/support/help/shortlink/dps-platform-extensions#custom-traces-classic)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1748,
            "top": 1216,
            "width": 304
          },
          "configured": true,
          "markdown": "### Custom Events Classic\n\n[Documentation](https://www.dynatrace.com/support/help/shortlink/dps-platform-extensions#custom-events-classic)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1748,
            "top": 1520,
            "width": 304
          },
          "configured": true,
          "markdown": "### Serverless Functions Classic\n\n[Documentation](https://www.dynatrace.com/support/help/shortlink/dps-platform-extensions#serverless-functions-classic)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 2052,
            "top": 608,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:billing.log_monitoring_classic.usage:splitBy():sort(value(auto,descending)):limit(20)/1000):limit(100):names"
          ],
          "name": "Per 1000 log records",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.log_monitoring_classic.usage:splitBy():sort(value(auto,descending)):limit(20) / 1000",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1h"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2508,
            "top": 608,
            "width": 912
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:billing.log_monitoring_classic.usage_by_log_path:splitBy(log_path):sort(value(auto,descending)):limit(20)/1000):limit(100):names"
          ],
          "name": "Per 1000 log records by logpath",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.log_monitoring_classic.usage_by_log_path:splitBy(\"log_path\"):sort(value(auto,descending)):limit(20) / 1000\n",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "log_path"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "singleValueSettings": {
              "linkTileColorToThreshold": true,
              "showSparkLine": true,
              "showTrend": true
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2052,
            "top": 912,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:billing.custom_traces_classic.usage:splitBy():sort(value(auto,descending)):limit(20)/1000):limit(100):names"
          ],
          "name": "Per 1000 spans",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.custom_traces_classic.usage:splitBy():sort(value(auto,descending)):limit(20) / 1000",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1h"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2508,
            "top": 912,
            "width": 912
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:billing.custom_traces_classic.usage_by_span_type:splitBy(span_type):sort(value(auto,descending)):limit(20)/1000):limit(100):names"
          ],
          "name": "Per 1000 spans by kind",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.custom_traces_classic.usage_by_span_type:splitBy(\"span_type\"):sort(value(auto,descending)):limit(20) / 1000\n",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "span_type"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "singleValueSettings": {
              "linkTileColorToThreshold": true,
              "showSparkLine": true,
              "showTrend": true
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2052,
            "top": 1216,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:billing.custom_events_classic.usage:splitBy():sort(value(auto,descending)):limit(20)/1000):limit(100):names"
          ],
          "name": "Per 1000 custom events",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.custom_events_classic.usage:splitBy():sort(value(auto,descending)):limit(20) / 1000",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1h"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2508,
            "top": 1216,
            "width": 912
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:billing.custom_events_classic.usage_by_entity:splitBy(\"dt.entity.monitored_entity\"):sort(value(auto,descending)):limit(20)/1000):limit(100):names"
          ],
          "name": "Per 1000 custom events by entity",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.custom_events_classic.usage_by_entity:splitBy(\"dt.entity.monitored_entity\"):sort(value(auto,descending)):limit(20) / 1000\n",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.monitored_entity"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "singleValueSettings": {
              "linkTileColorToThreshold": true,
              "showSparkLine": true,
              "showTrend": true
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2052,
            "top": 1520,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:billing.serverless_functions_classic.usage:splitBy():sort(value(auto,descending)):limit(20)/1000):limit(100):names"
          ],
          "name": "Per 1000 invocations",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.serverless_functions_classic.usage:splitBy():sort(value(auto,descending)):limit(20) / 1000",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1h"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2508,
            "top": 1520,
            "width": 912
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:billing.serverless_functions_classic.usage_by_function:splitBy(function):sort(value(auto,descending)):limit(20)/1000):limit(100):names"
          ],
          "name": "Per 1000 invocations by function",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.serverless_functions_classic.usage_by_function:splitBy(\"function\"):sort(value(auto,descending)):limit(20) / 1000\n",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "function"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "singleValueSettings": {
              "linkTileColorToThreshold": true,
              "showSparkLine": true,
              "showTrend": true
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 228,
            "width": 1596
          },
          "configured": true,
          "name": "Host Monitoring",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 304,
            "left": 1786,
            "top": 3192,
            "width": 304
          },
          "configured": true,
          "markdown": "### Kubernetes Platform Monitoring\n\n[Documentation](https://docs.dynatrace.com/docs/shortlink/dps-containers)\n\n(SaaS only)",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 304,
            "left": 2090,
            "top": 3192,
            "width": 912
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:billing.kubernetes_monitoring.usage:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Pod-hours",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:billing.kubernetes_monitoring.usage",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1h"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "singleValueSettings": {
              "linkTileColorToThreshold": true,
              "showSparkLine": true,
              "showTrend": true
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2964,
            "top": 304,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:billing.custom_metrics_classic.usage.fullstack_hosts:splitBy():sort(value(auto,descending)):limit(100)/1000):limit(100):names,(builtin:billing.custom_metrics_classic.usage.infrastructure_hosts:splitBy():sort(value(auto,descending)):limit(100)/1000):limit(100):names,(builtin:billing.custom_metrics_classic.usage.other:splitBy():sort(value(auto,descending)):limit(100)/1000):limit(100):names,(builtin:billing.custom_metrics_classic.usage.foundation_and_discovery:splitBy():sort(value(auto,descending)):limit(100)/1000):limit(100):names"
          ],
          "name": "Per 1000 metric datapoints by origin",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.custom_metrics_classic.usage.fullstack_hosts:splitBy():sort(value(auto,descending)):limit(100) / 1000",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:billing.custom_metrics_classic.usage.infrastructure_hosts:splitBy():sort(value(auto,descending)):limit(100) / 1000",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "C",
              "metricSelector": "builtin:billing.custom_metrics_classic.usage.other:splitBy():sort(value(auto,descending)):limit(100) / 1000",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "D",
              "metricSelector": "builtin:billing.custom_metrics_classic.usage.foundation_and_discovery:splitBy():sort(value(auto,descending)):limit(100) / 1000",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1h"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B",
                    "C",
                    "D"
                  ],
                  "visible": true
                }
              ]
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "alias": "full-stack",
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "B:",
                "properties": {
                  "alias": "infrastructure",
                  "color": "YELLOW",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "C:",
                "properties": {
                  "alias": "other",
                  "color": "BLUE",
                  "seriesType": "STACKED_COLUMN"
                },
                "seriesOverrides": [
                  {
                    "color": "#048855",
                    "name": "builtin:billing.custom_metrics_classic.usage.other:splitBy():sort(value(auto,descending)):limit(100)/1000"
                  }
                ],
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "D:",
                "properties": {
                  "alias": "foundation \u0026 discovery",
                  "color": "DEFAULT",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "singleValueSettings": {
              "linkTileColorToThreshold": true,
              "showSparkLine": true,
              "showTrend": true
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 3002,
            "top": 3192,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:billing.kubernetes_monitoring.usage:splitBy(\"dt.entity.kubernetes_cluster\",\"dt.entity.cloud_application_namespace\"):sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Top cluster \u0026 namespaces",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:billing.kubernetes_monitoring.usage",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.kubernetes_cluster",
                "dt.entity.cloud_application_namespace"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "singleValueSettings": {
              "linkTileColorToThreshold": true,
              "showSparkLine": true,
              "showTrend": true
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "TOP_LIST"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 1786,
            "top": 3154,
            "width": 1672
          },
          "configured": true,
          "name": "Container Monitoring",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 1748,
            "top": 266,
            "width": 1672
          },
          "configured": true,
          "markdown": "Please note: Even if you have switched from the Platform extensions capabilities to the “powered by Grail” ones, you will still have the usual kind of usage insights in this dashboard as we continue to provide the underlying [billing metrics](https://docs.dynatrace.com/docs/shortlink/built-in-metrics#billing). Find more info [here](https://docs.dynatrace.com/docs/shortlink/dynatrace-platform-subscription).",
          "name": "Markdown",
          "tileType": "MARKDOWN"
        },
        {
          "bounds": {
            "height": 114,
            "left": 912,
            "top": 950,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:billing.real_user_monitoring.web.session.usage_by_app:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Sessions last 7d",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:billing.real_user_monitoring.web.session.usage_by_app",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 1140,
            "top": 950,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:billing.real_user_monitoring.web.session.usage_by_app:splitBy():sort(value(auto,descending))*0.00199):limit(100):names"
          ],
          "name": "€ / last 7d",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.real_user_monitoring.web.session.usage_by_app:splitBy():sort(value(auto,descending)) * 0.00199",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 1368,
            "top": 950,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=Inf\u0026(builtin:billing.real_user_monitoring.web.session.usage_by_app:splitBy():sort(value(auto,descending))*0.00199/7*365):limit(100):names"
          ],
          "name": "€ / year (~)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.real_user_monitoring.web.session.usage_by_app:splitBy():sort(value(auto,descending)) * 0.00199 / 7 *365",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2052,
            "top": 1862,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1d\u0026(builtin:billing.log.ingest.usage:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Ingest \u0026 Process",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metric": "builtin:billing.log.ingest.usage",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1d"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2508,
            "top": 1862,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1d\u0026(builtin:billing.log.retain.usage):limit(100):names"
          ],
          "name": "Retain",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.log.retain.usage",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1d"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 2964,
            "top": 1862,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1d\u0026(builtin:billing.log.query.usage:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "Query",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:billing.log.query.usage",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1d"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 304,
            "top": 2888,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1d\u0026(builtin:billing.runtime_application_protection.usage:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "GiB-hours",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:billing.runtime_application_protection.usage",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1d"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 228,
            "top": 1786,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1d\u0026(builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():sort(value(auto,descending)):limit(20)):limit(100):names"
          ],
          "name": "GiB-hours",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "limit": 20,
              "metric": "builtin:billing.runtime_vulnerability_analytics.usage_per_host",
              "rate": "NONE",
              "sortBy": "DESC",
              "sortByDimension": "",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1d"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 0,
            "top": 0,
            "width": 1596
          },
          "configured": true,
          "name": "Estimated annual costs in euro",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 190,
            "left": 228,
            "top": 38,
            "width": 228
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026((builtin:billing.full_stack_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):limit(20)*0.00881*24*365):default(0,always)):limit(100):names:last"
          ],
          "name": "Full-Stack",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.full_stack_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):limit(20) * 0.00881 * 24 *365):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "queryId": "",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 228,
            "top": 266,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1d\u0026(builtin:billing.full_stack_monitoring.usage_per_host:splitBy():sum:sort(value(sum,descending)):limit(20):default(0,always)):limit(100):names"
          ],
          "name": "GiB-hours",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.full_stack_monitoring.usage_per_host:splitBy():sum:sort(value(sum,descending)):limit(20):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1d"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 912,
            "top": 266,
            "width": 228
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:billing.full_stack_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):default(0,always)):limit(100):names:last"
          ],
          "name": "GiB Hours",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.full_stack_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "queryId": "",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1140,
            "top": 266,
            "width": 228
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026((builtin:billing.full_stack_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):limit(20)*0.00881*24):default(0,always)):limit(100):names:last"
          ],
          "name": "€ / Day",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.full_stack_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):limit(20) * 0.00881 * 24):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "queryId": "",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1368,
            "top": 266,
            "width": 228
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026((builtin:billing.full_stack_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):limit(20)*0.00881*24*365):default(0,always)):limit(100):names:last"
          ],
          "name": "€ / Year",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.full_stack_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):limit(20) * 0.00881 * 24 *365):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "queryId": "",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 228,
            "top": 570,
            "width": 456
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1d\u0026(builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):limit(20):default(0,always)):limit(100):names"
          ],
          "name": "Host-hours",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):limit(20):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1d"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A"
                  ],
                  "visible": true
                }
              ]
            },
            "global": {
              "hideLegend": true
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "singleValueSettings": {
              "linkTileColorToThreshold": true,
              "showSparkLine": true,
              "showTrend": true
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "GRAPH_CHART"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 684,
            "top": 266,
            "width": 228
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:billing.full_stack_monitoring.usage_per_host:splitBy():count:sort(value(avg,descending)):default(0,always)):limit(100):names:last"
          ],
          "name": "Hosts",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.full_stack_monitoring.usage_per_host:splitBy():count:sort(value(avg,descending)):default(0, always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "tableSettings": {
              "hiddenColumns": [
                "A:application_only_type.name"
              ]
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "(DPS) Full-stack usage by container type",
                "queryId": "A",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 684,
            "top": 570,
            "width": 228
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):default(0,always)):limit(100):names:last"
          ],
          "name": "Hosts",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):default(0, always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "tableSettings": {
              "hiddenColumns": [
                "A:application_only_type.name"
              ]
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "(DPS) Full-stack usage by container type",
                "queryId": "A",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1368,
            "top": 570,
            "width": 228
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026((builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():count:sort(value(avg,descending))*0.03521*24*365):default(0,always)):limit(100):names:last"
          ],
          "name": "€ / Year",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():count:sort(value(avg,descending)) * 0.03521 * 24 *365):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "tableSettings": {
              "hiddenColumns": [
                "A:application_only_type.name"
              ]
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "(DPS) Full-stack usage by container type",
                "queryId": "A",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 190,
            "left": 456,
            "top": 38,
            "width": 228
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026((builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():count:sort(value(avg,descending))*0.03521*24*365):default(0,always)):limit(100):names:last"
          ],
          "name": "Infrastructure",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():count:sort(value(avg,descending)) * 0.03521 * 24 *365):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "tableSettings": {
              "hiddenColumns": [
                "A:application_only_type.name"
              ]
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "(DPS) Full-stack usage by container type",
                "queryId": "A",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1140,
            "top": 570,
            "width": 228
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026((builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():count:sort(value(avg,descending))*0.03521*24):default(0,always)):limit(100):names:last"
          ],
          "name": "€ / Day",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():count:sort(value(avg,descending)) * 0.03521 * 24):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "tableSettings": {
              "hiddenColumns": [
                "A:application_only_type.name"
              ]
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "(DPS) Full-stack usage by container type",
                "queryId": "A",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 684,
            "top": 1786,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026(builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():count:sort(value(avg,descending)):default(0,always)):limit(100):names:last"
          ],
          "name": "Hosts",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():count:sort(value(avg,descending)):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 912,
            "top": 1786,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=1h\u0026(builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():sort(value(auto,descending)):default(0,always)):limit(100):names:last"
          ],
          "name": "GiB Hours",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():sort(value(auto,descending)):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "tableSettings": {
              "hiddenColumns": [
                "A:dt.entity.host.name"
              ]
            },
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "columnId": "(DPS) Runtime Vulnerability Analytics billing usage per host",
                "queryId": "A",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1140,
            "top": 1786,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=1h\u0026((builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():sort(value(auto,descending))*0.00199*24):default(0,always)):limit(100):names:last"
          ],
          "name": "€ / Day",
          "queries": [
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "(builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():sort(value(auto,descending))* 0.00199 *24):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "B:",
                "properties": {
                  "color": "DEFAULT"
                }
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 304,
            "left": 1368,
            "top": 1786,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=1h\u0026((builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():sort(value(auto,descending))*0.00199*24*365):default(0,always)):limit(100):names:last"
          ],
          "name": "€ / Year",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():sort(value(auto,descending))* 0.00199 *24 *365 ):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 190,
            "left": 1140,
            "top": 38,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=1h\u0026((builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():sort(value(auto,descending))*0.00199*24*365):default(0,always)):limit(100):names:last"
          ],
          "name": "Runtime Security",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():sort(value(auto,descending))* 0.00199 *24 *365 ):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 190,
            "left": 0,
            "top": 38,
            "width": 228
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1h\u0026((builtin:billing.full_stack_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):limit(20)*0.00881*24*365):default(0)+(builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():count:sort(value(avg,descending))*0.03521*24*365):default(0)+(builtin:billing.real_user_monitoring.web.session.usage_by_app:splitBy():sort(value(auto,descending))*0.00199/7*365):default(0)+(builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending))*0.00397/7*365):default(0)+(builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():sort(value(auto,descending))*0.00199*24*365):default(0)):limit(100):names:last"
          ],
          "name": "Total",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.full_stack_monitoring.usage_per_host:splitBy():value:sort(value(sum,descending)):limit(20) * 0.00881 * 24 *365):default(0)+ (builtin:billing.infrastructure_monitoring.usage_per_host:splitBy():count:sort(value(avg,descending)) * 0.03521 * 24 *365):default(0) + (builtin:billing.real_user_monitoring.web.session.usage_by_app:splitBy():sort(value(auto,descending)) * 0.00199 / 7 *365):default(0) + (builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending)) * 0.00397 / 7 *365):default(0) +  (builtin:billing.runtime_vulnerability_analytics.usage_per_host:splitBy():sort(value(auto,descending))* 0.00199 *24 *365):default(0)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "foldTransformation": "LAST_VALUE",
            "resolution": "1h"
          },
          "tileFilter": {
            "timeframe": "yesterday"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "queryId": "A",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 912,
            "top": 1482,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026((builtin:billing.synthetic.actions.usage_by_browser_monitor:splitBy(\"dt.entity.synthetic_test\"):sort(value(auto,descending))):default(0,always)):limit(100):names:fold(auto)"
          ],
          "name": "Actions last 7d",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.synthetic.actions.usage_by_browser_monitor:splitBy(\"dt.entity.synthetic_test\"):sort(value(auto,descending))):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.synthetic_test"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 1140,
            "top": 1482,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026((builtin:billing.synthetic.actions.usage_by_browser_monitor:splitBy(\"dt.entity.synthetic_test\"):sort(value(auto,descending))):default(0,always)*0.00397):limit(100):names:fold(auto)"
          ],
          "name": "€ / last 7d",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.synthetic.actions.usage_by_browser_monitor:splitBy(\"dt.entity.synthetic_test\"):sort(value(auto,descending))):default(0,always) * 0.00397",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.synthetic_test"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 1368,
            "top": 1482,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026((builtin:billing.synthetic.actions.usage_by_browser_monitor:splitBy(\"dt.entity.synthetic_test\"):sort(value(auto,descending))):default(0,always)*0.00397/7*365):limit(100):names:fold(auto)"
          ],
          "name": "€ / year (~)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.synthetic.actions.usage_by_browser_monitor:splitBy(\"dt.entity.synthetic_test\"):sort(value(auto,descending))):default(0,always) * 0.00397 / 7 *365",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.synthetic_test"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 912,
            "top": 1634,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026((builtin:billing.synthetic.requests.usage_by_http_monitor:splitBy(\"dt.entity.http_check\"):sort(value(auto,descending))):default(0,always)):limit(100):names:fold(auto)"
          ],
          "name": "Actions last 7d",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.synthetic.requests.usage_by_http_monitor:splitBy(\"dt.entity.http_check\"):sort(value(auto,descending))):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.http_check"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 1140,
            "top": 1634,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026((builtin:billing.synthetic.requests.usage_by_http_monitor:splitBy(\"dt.entity.http_check\"):sort(value(auto,descending))):default(0,always)*8.9E-4):limit(100):names:fold(auto)"
          ],
          "name": "€ / last 7d",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.synthetic.requests.usage_by_http_monitor:splitBy(\"dt.entity.http_check\"):sort(value(auto,descending))):default(0,always) * 0.00089",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.http_check"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 190,
            "left": 912,
            "top": 38,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026(((builtin:billing.synthetic.actions.usage_by_browser_monitor:splitBy():sort(value(auto,descending))):default(0,always)*0.00397/7*365)+((builtin:billing.synthetic.requests.usage_by_http_monitor:splitBy():sort(value(auto,descending))):default(0,always)*9.8E-4/7*365)):limit(100):names:fold(auto)"
          ],
          "name": "Synthetic",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "((builtin:billing.synthetic.actions.usage_by_browser_monitor:splitBy():sort(value(auto,descending))):default(0,always) * 0.00397 / 7 *365) + ((builtin:billing.synthetic.requests.usage_by_http_monitor:splitBy():sort(value(auto,descending))):default(0,always) * 0.00098 / 7 *365)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 1368,
            "top": 1634,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026((builtin:billing.synthetic.requests.usage_by_http_monitor:splitBy(\"dt.entity.http_check\"):sort(value(auto,descending))):default(0,always)*9.8E-4/7*365):limit(100):names:fold(auto)"
          ],
          "name": "€ / year (~)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.synthetic.requests.usage_by_http_monitor:splitBy(\"dt.entity.http_check\"):sort(value(auto,descending))):default(0,always) * 0.00098 / 7 *365",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "splitBy": [
                "dt.entity.http_check"
              ],
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 912,
            "top": 1102,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026(builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)):limit(100):names:fold(auto)"
          ],
          "name": "Sessions last 7d",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 1140,
            "top": 1102,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026(builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)*0.00397):limit(100):names:fold(auto)"
          ],
          "name": "€ / last 7d",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always) * 0.00397",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 1368,
            "top": 1102,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026(builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)*0.00397/7*365):limit(100):names:fold(auto)"
          ],
          "name": "€ / year (~)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always) * 0.00397 / 7 *365",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 912,
            "top": 912,
            "width": 684
          },
          "configured": true,
          "name": "Real User Monitoring",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 912,
            "top": 1064,
            "width": 684
          },
          "configured": true,
          "name": "Real User Monitoring (with Session Replay)",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 912,
            "top": 1444,
            "width": 684
          },
          "configured": true,
          "name": "Browser Monitor or Clickpath",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 38,
            "left": 912,
            "top": 1596,
            "width": 684
          },
          "configured": true,
          "name": "HTTP Monitor",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 304,
            "left": 228,
            "top": 1444,
            "width": 684
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1d\u0026(builtin:billing.synthetic.actions.usage_by_browser_monitor:splitBy():sort(value(auto,descending)):default(0,always)):limit(100):names,(builtin:billing.synthetic.requests.usage_by_http_monitor:splitBy():sort(value(auto,descending)):default(0,always)):limit(100):names"
          ],
          "name": "Synthetic actions",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.synthetic.actions.usage_by_browser_monitor:splitBy():sort(value(auto,descending)):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:billing.synthetic.requests.usage_by_http_monitor:splitBy():sort(value(auto,descending)):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1d"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B"
                  ],
                  "visible": true
                }
              ]
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "alias": "Browser Monitor or Clickpath",
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "B:",
                "properties": {
                  "alias": "HTTP monitor",
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        },
        {
          "bounds": {
            "height": 38,
            "left": 912,
            "top": 1216,
            "width": 684
          },
          "configured": true,
          "name": "Real User Monitoring (Custom Application)",
          "tileType": "HEADER"
        },
        {
          "bounds": {
            "height": 114,
            "left": 912,
            "top": 1254,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026(builtin:billing.real_user_monitoring.mobile.session.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)):limit(100):names:fold(auto)"
          ],
          "name": "Sessions last 7d",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.real_user_monitoring.mobile.session.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 1140,
            "top": 1254,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026(builtin:billing.real_user_monitoring.mobile.session.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)*0.00199):limit(100):names:fold(auto)"
          ],
          "name": "€ / last 7d",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.real_user_monitoring.mobile.session.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always) * 0.00199",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 114,
            "left": 1368,
            "top": 1254,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026(builtin:billing.real_user_monitoring.mobile.session.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)*0.00199/7*365):limit(100):names:fold(auto)"
          ],
          "name": "€ / year (~)",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.real_user_monitoring.mobile.session.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always) * 0.00199 / 7 *365",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 190,
            "left": 684,
            "top": 38,
            "width": 228
          },
          "configured": true,
          "customName": "Top list",
          "metricExpressions": [
            "resolution=null\u0026((builtin:billing.real_user_monitoring.web.session.usage_by_app:splitBy():sort(value(auto,descending))*0.00199/7*365):default(0,always)+(builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending))*0.00397/7*365):default(0,always)+(builtin:billing.real_user_monitoring.mobile.session.usage_by_app:splitBy():sort(value(auto,descending))*0.00199/7*365):default(0,always)):limit(100):names:fold(auto)"
          ],
          "name": "Real User",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "(builtin:billing.real_user_monitoring.web.session.usage_by_app:splitBy():sort(value(auto,descending)) * 0.00199 / 7 *365):default(0,always) + (builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending)) * 0.00397 / 7 *365):default(0,always) + (builtin:billing.real_user_monitoring.mobile.session.usage_by_app:splitBy():sort(value(auto,descending)) * 0.00199 / 7 *365):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": ""
          },
          "tileFilter": {
            "timeframe": "-7d to now"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "visible": true
              }
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "color": "GREEN",
                  "seriesType": "LINE"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "SINGLE_VALUE"
          }
        },
        {
          "bounds": {
            "height": 456,
            "left": 228,
            "top": 912,
            "width": 684
          },
          "configured": true,
          "customName": "Data explorer results",
          "metricExpressions": [
            "resolution=1d\u0026(builtin:billing.real_user_monitoring.web.session.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)):limit(100):names,(builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)):limit(100):names,(builtin:billing.real_user_monitoring.mobile.session.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)):limit(100):names"
          ],
          "name": "Sessions",
          "queries": [
            {
              "enabled": true,
              "id": "A",
              "metricSelector": "builtin:billing.real_user_monitoring.web.session.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "B",
              "metricSelector": "builtin:billing.real_user_monitoring.web.session_with_replay.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            },
            {
              "enabled": true,
              "id": "C",
              "metricSelector": "builtin:billing.real_user_monitoring.mobile.session.usage_by_app:splitBy():sort(value(auto,descending)):default(0,always)",
              "rate": "NONE",
              "spaceAggregation": "AUTO",
              "timeAggregation": "DEFAULT"
            }
          ],
          "queriesSettings": {
            "resolution": "1d"
          },
          "tileType": "DATA_EXPLORER",
          "visualConfig": {
            "axes": {
              "xAxis": {
                "displayName": "",
                "visible": true
              },
              "yAxes": [
                {
                  "defaultAxis": true,
                  "displayName": "",
                  "max": "AUTO",
                  "min": "AUTO",
                  "position": "LEFT",
                  "queryIds": [
                    "A",
                    "B",
                    "C"
                  ],
                  "visible": true
                }
              ]
            },
            "heatmapSettings": {
              "yAxis": "VALUE"
            },
            "honeycombSettings": {
              "showHive": true,
              "showLegend": true
            },
            "rules": [
              {
                "matcher": "A:",
                "properties": {
                  "alias": "Real User",
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "B:",
                "properties": {
                  "alias": "Real User (with Session Replay)",
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              },
              {
                "matcher": "C:",
                "properties": {
                  "alias": "Real-User (Custom App)",
                  "color": "GREEN",
                  "seriesType": "STACKED_COLUMN"
                },
                "unitTransform": "auto",
                "valueFormat": "auto"
              }
            ],
            "thresholds": [
              {
                "axisTarget": "LEFT",
                "rules": [
                  {
                    "color": "#7dc540"
                  },
                  {
                    "color": "#f5d30f"
                  },
                  {
                    "color": "#dc172a"
                  }
                ],
                "visible": true
              }
            ],
            "type": "STACKED_COLUMN"
          }
        }
      ]
    })
  link_id  = "${dynatrace_json_dashboard_base.BETA-Running_costs_overview_owned_by_guenter_schramm_voestalpine_com.id}"
}


resource "dynatrace_dashboard_sharing" "BETA-Running_costs_overview_owned_by_guenter_schramm_voestalpine_com" {
  enabled      = true
  dashboard_id = "${dynatrace_json_dashboard_base.BETA-Running_costs_overview_owned_by_guenter_schramm_voestalpine_com.id}"
  # preset     = false
  permissions {
    permission {
      type  = "USER"
      id    = "dietmar.wallner@voestalpine.com"
      level = "VIEW"
    }
    permission {
      type  = "USER"
      id    = "robert.traxler@voestalpine.com"
      level = "VIEW"
    }
    permission {
      type  = "USER"
      id    = "christoph.poemer@voestalpine.com"
      level = "VIEW"
    }
    permission {
      type  = "GROUP"
      id    = "2df7348e-1fef-4da6-aec5-dae53b81cc42"
      level = "EDIT"
    }
  }
}


resource "dynatrace_json_dashboard_base" "BETA-Running_costs_overview_owned_by_guenter_schramm_voestalpine_com" {
  # contents = ""
}
