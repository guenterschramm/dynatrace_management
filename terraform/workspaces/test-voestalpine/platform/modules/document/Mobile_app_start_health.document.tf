resource "dynatrace_document" "Mobile_app_start_health" {
  name      = "Mobile app start health"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "33": {
          "h": 2,
          "w": 21,
          "x": 0,
          "y": 0
        },
        "36": {
          "h": 6,
          "w": 9,
          "x": 15,
          "y": 2
        },
        "37": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 10
        },
        "38": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 10
        },
        "41": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "43": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "45": {
          "h": 3,
          "w": 5,
          "x": 0,
          "y": 2
        },
        "46": {
          "h": 3,
          "w": 10,
          "x": 5,
          "y": 2
        },
        "47": {
          "h": 3,
          "w": 10,
          "x": 5,
          "y": 5
        },
        "48": {
          "h": 3,
          "w": 5,
          "x": 0,
          "y": 5
        },
        "49": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "50": {
          "h": 2,
          "w": 20,
          "x": 0,
          "y": 15
        }
      },
      "settings": {
        "defaultTimeframe": {
          "enabled": true,
          "value": {
            "from": "now()-24h",
            "to": "now()"
          }
        },
        "gridLayout": {
          "mode": "responsive"
        }
      },
      "tiles": {
        "33": {
          "content": "### App start health\nHigh-level summary of application launch times. Monitor average start durations across iOS and Android, identify volume trends, and spot geographical latency issues in real-time.",
          "type": "markdown"
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n    app_start.duration = percentile(dt.frontend.mobile.app_start.duration, 75,rollup:avg, scalar: true),\n    app_starts = sum(dt.frontend.mobile.app_start.duration, rollup: count, default: 0, scalar: true)    \n  },\n  union: TRUE,\n  by: { dt.rum.application.entity, app_start.type, geo.country.iso_code },\n  filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\"))\n    and in(os.name, array($platform))\n    and in(geo.country.iso_code, coalesce(array($country), \"\"))\n    and in(app.short_version, coalesce(array($version), \"\"))\n| summarize {\n  app_start.duration = avg(app_start.duration)\n}, by: { geo.country.iso_code }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "App startup performance across different geographical locations",
          "type": "data",
          "visualization": "choropleth",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "colorModeType": {
              "color": {
                "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-01-default, #438fb1)"
              }
            },
            "dataMapping": {
              "countryCode": "geo.country.iso_code",
              "dimension": "app_start.duration",
              "displayedFields": [
                "app_start.cold.duration",
                "app_start.warm.duration",
                "geo.country.iso_code"
              ]
            },
            "legend": {
              "textTruncationMode": "middle"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1746651729647,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "app_start.cold.duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1746651795882,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "app_start.warm.duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1746651807618,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": null,
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "timeseries {\n    app_start.duration = percentile(dt.frontend.mobile.app_start.duration,rollup: avg, 75),\n    app_starts = sum(dt.frontend.mobile.app_start.duration, rollup: count, default: 0)    \n  },\n  union: TRUE,\n  interval: 1h,\n  by: { dt.rum.application.entity, app_start.type, app.short_version },\n  filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n     and in(os.name, array($platform))\n     and in(geo.country.iso_code, coalesce(array($country), \"\"))\n     and in(app.short_version, coalesce(array($version), \"\"))\n     and app_start.type == \"cold\"\n| summarize {\n    frontend.name = takeFirst(entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")),\n    app_start.cold.duration.trend =  avg(app_start.duration[]),\n    app_start.cold.duration =  avg(arrayAvg(app_start.duration))\n  }, by: { timeframe, interval, app.short_version, frontend = dt.rum.application.entity }\n| sort app_start.cold.duration desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Slowest versions (Top 10): Cold start trends",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "app_start.cold.duration.trend"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "frontend.name",
                "app.short_version"
              ]
            },
            "legend": {
              "ratio": 25
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 5000
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1746651729647,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "app_start.cold.duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1746651795882,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "app_start.cold.duration.trend",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1746651807618,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": null,
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
          "query": "timeseries {\n    app_start.duration = percentile(dt.frontend.mobile.app_start.duration,rollup: avg, 75),\n    app_starts = sum(dt.frontend.mobile.app_start.duration, rollup: count, default: 0)    \n  },\n  union: TRUE,\n  interval: 1h,\n  by: { dt.rum.application.entity, app_start.type, app.short_version },\n  filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n     and in(os.name, array($platform))\n     and in(geo.country.iso_code, coalesce(array($country), \"\"))\n     and in(app.short_version, coalesce(array($version), \"\"))\n     and app_start.type == \"warm\"\n| summarize {\n    frontend.name = takeFirst(entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")),\n    app_start.warm.duration.trend = avg(app_start.duration[]),\n    app_start.warm.duration =  avg(arrayAvg(app_start.duration))\n  }, by: { timeframe, app.short_version, interval, frontend = dt.rum.application.entity }\n| sort app_start.warm.duration desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Slowest versions (Top 10): Warm start trends",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "curve": "smooth",
              "fieldMapping": {
                "leftAxisValues": [
                  "app_start.warm.duration",
                  "app_start.warm.duration.trend"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "pointsDisplay": "never",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "frontend.name",
                "app.short_version"
              ]
            },
            "legend": {
              "ratio": 32
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 2000
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1746651795882,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "app_start.warm.duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1746651807618,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": null,
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1764244317812,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "app_start.warm.duration.trend",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n    | filter characteristics.has_app_start\n    | filter in(os.name, array(\"iOS\"))\n    | filter in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n    | filter in(app.short_version, coalesce(array($version), \"\"))\n    | filter in(geo.country.iso_code, coalesce(array($country), \"\"))\n    | sort duration desc\n| limit 10\n| fields \n`Session` = concat(\"[\", formatTimestamp(start_time, format:\"MM-dd-yyyy HH:mm\"), \"](/ui/apps/dynatrace.users.sessions/session-viewer/\", dt.rum.session.id, \"/\",toString(toTimestamp(start_time)),\"?event=\",id,\"\u0026fromEvent=true)\"),\n         frontend.name,\n         view.name,\n         `Type` = app_start.type,\n         `Duration` = duration,\n         pre_runtime_init = app_start.ios.pre_runtime_init.end_time - app_start.ios.pre_runtime_init.start_time,  \n         runtime_init = app_start.ios.runtime_init.end_time - app_start.ios.runtime_init.start_time,\n         uikit_init = app_start.ios.uikit_init.end_time - app_start.ios.uikit_init.start_time,\n         initial_frame_render = app_start.ios.initial_frame_render.end_time - app_start.ios.initial_frame_render.start_time,\n         react_native.download = app_start.react_native.download.end_time - app_start.react_native.download.start_time,\n         react_native.run_js_bundle = app_start.react_native.run_js_bundle.end_time - app_start.react_native.run_js_bundle.start_time,\n         react_native.content_appeared = app_start.react_native.content_appeared\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-7d",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Top 10 iOS sessions with the longest app starts",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Session"
                  ],
                  "id": 630017.5,
                  "value": "markdown"
                }
              ],
              "sortBy": [
                {
                  "columnId": "[\"app.start.duration\"]",
                  "direction": "descending"
                }
              ]
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": ""
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1762181743577,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "pre_runtime_init",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1762181758119,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "runtime_init",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1762181771449,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "uikit_init",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1762181782886,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "initial_frame_render",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1762181803241,
                "baseUnit": "nanosecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Duration",
                "suffix": "",
                "unitCategory": "time"
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
          "query": "fetch user.events, samplingRatio: 1, scanLimitGBytes: 500\n| filter characteristics.has_app_start\n| filter in(os.name, array(\"Android\"))\n| filter in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\"))\n| filter in(app.short_version, coalesce(array($version), \"\"))\n| filter in(geo.country.iso_code, coalesce(array($country), \"\"))\n| sort duration desc\n| limit 10\n| fields\n  `Session` = concat(\"[\", formatTimestamp(start_time, format:\"MM-dd-yyyy HH:mm\"), \"](/ui/apps/dynatrace.users.sessions/session-viewer/\", dt.rum.session.id, \"/\",toString(toTimestamp(start_time)),\"?event=\",id,\"\u0026fromEvent=true)\"),\n   frontend.name,\n   view.name,\n   app_start.type,\n   app.start.duration = duration,\n   application.on_create = app_start.android.application.on_create.end_time - app_start.android.application.on_create.start_time,\n   activity.on_create = app_start.android.activity.on_create.end_time - app_start.android.activity.on_create.start_time,\n   activity.on_start = app_start.android.activity.on_start.end_time - app_start.android.activity.on_start.start_time,\n   react_native.download = app_start.react_native.download.end_time - app_start.react_native.download.start_time,\n   react_native.run_js_bundle = app_start.react_native.run_js_bundle.end_time - app_start.react_native.run_js_bundle.start_time,\n   react_native.content_appeared = app_start.react_native.content_appeared",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-7d",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Top 10 Android sessions with the longest app starts",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Session"
                  ],
                  "id": 733213.299999997,
                  "value": "markdown"
                }
              ],
              "sortBy": [
                {
                  "columnId": "[\"app.start.duration\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1762181743577,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "application.on_create",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1762181758119,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "activity.on_create",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1762181771449,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "activity.on_start",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1762181803241,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "react_native.run_js_bundle",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1762246531221,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "react_native.download",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1762246550067,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "react_native.content_appeared",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "45": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n    app_start.duration = percentile(dt.frontend.mobile.app_start.duration,rollup: avg, 75) \n  },\n  union: TRUE,\n  interval: 1h,\n  by: { dt.rum.application.entity, app_start.type, os.name },\n  filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n    and in(os.name, array($platform))\n    and in(geo.country.iso_code, coalesce(array($country), \"\"))\n    and in(app.short_version, coalesce(array($version), \"\"))\n| summarize {\n    app_start.duration.trend = avg(app_start.duration[]),\n    app_start.duration = avg(arrayAvg((app_start.duration)))\n  }, by: { timeframe, interval, os.name }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-7d",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Average app start duration",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "data",
              "prefixIcon": "LineChartIcon",
              "recordField": "app_start.duration",
              "recordLabel": "os.name",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-vulnerability-status-resolved-default, #3e8e6a)"
                },
                "isVisible": true,
                "upward": {
                  "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                }
              }
            },
            "unitsOverrides": [
              {
                "added": 1764241911190,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "app_start.cold.duration",
                "suffix": "",
                "unitCategory": "time"
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
          "query": "timeseries {\n    app_start.duration = percentile(dt.frontend.mobile.app_start.duration,rollup: avg, 75)\n  },\n  union: TRUE,\n  interval: 1h,\n  by: { dt.rum.application.entity, app_start.type, os.name },\n  filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\"))\n    and in(os.name, array($platform))\n    and in(geo.country.iso_code, coalesce(array($country), \"\"))\n    and in(app.short_version, coalesce(array($version), \"\"))\n| summarize {\n  app_start.cold.duration.trend = avg(app_start.duration[]),\n  app_start.cold.duration = avg(arrayAvg((app_start.duration)))\n}, by: { timeframe, interval, os.name }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-7d",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "App start duration",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "pointsDisplay": "never",
              "xAxisScaling": "analyzedTimeframe"
            },
            "legend": {
              "ratio": 22
            },
            "unitsOverrides": [
              {
                "added": 1764241911190,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "app_start.cold.duration.trend",
                "suffix": "",
                "unitCategory": "time"
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
          "query": "timeseries {\n    series = sum(dt.frontend.mobile.app_start.duration, rollup: count, default: 0, scalar: false)\n  },\n  interval: 1h,\n  by: { dt.rum.application.entity, app_start.type, os.name },\n filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n   and in(os.name, array($platform))\n   and in(geo.country.iso_code, coalesce(array($country), \"\"))\n   and in(app.short_version, coalesce(array($version), \"\"))\n| summarize {counts = sum(series[])}, by:{interval, timeframe, os.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-7d",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "App start counts",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "position": "right"
              }
            },
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": [
              {
                "added": 1764241911190,
                "baseUnit": "millisecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "app_start.cold.duration.trend",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n    series = sum(dt.frontend.mobile.app_start.duration, rollup: count, default: 0, scalar: true)\n  },\n  interval: 1h,\n  by: { dt.rum.application.entity, app_start.type, os.name },\n  filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\"))\n     and in(os.name, array($platform))\n     and in(geo.country.iso_code, coalesce(array($country), \"\"))\n     and in(app.short_version, coalesce(array($version), \"\"))\n| summarize {counts = sum(series)}, by:{ os.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-7d",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "App starts counts",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "data",
              "prefixIcon": "LineChartIcon",
              "recordField": "counts",
              "recordLabel": "os.name",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-vulnerability-status-resolved-default, #3e8e6a)"
                },
                "isVisible": true,
                "upward": {
                  "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                }
              }
            },
            "unitsOverrides": [
              {
                "added": 1764241911190,
                "baseUnit": "count",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "counts",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "49": {
          "content": "##### Version regression analysis\nCompare performance across different app versions to detect regressions. Analyze trends for both Cold Starts (fresh launch) and Warm Starts (resume) to identify problematic releases.",
          "type": "markdown"
        },
        "50": {
          "content": "##### Sessions with the slowest app starts\nGranular list of the slowest user sessions. Detailed breakdown of the launch process (e.g., Runtime Init, UI Rendering) helps developers pinpoint specific code bottlenecks.",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "Android,iOS",
          "key": "platform",
          "multiple": true,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch dt.entity.mobile_application\n| fieldsAdd frontend.type = \"mobile\"\n| fields concat(id,\": \", entity.name)",
          "key": "mobile_app",
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
          "input": "timeseries sum(dt.frontend.mobile.app_start.duration), by:{geo.country.iso_code}\n| summarize countries = collectDistinct(geo.country.iso_code)",
          "key": "country",
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
          "input": "timeseries sum(dt.frontend.mobile.app_start.duration), by:{ app.short_version }\n| summarize countries = collectDistinct(app.short_version)",
          "key": "version",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.experience.vitals.mobile-app-start-health"
  # private = false
}
