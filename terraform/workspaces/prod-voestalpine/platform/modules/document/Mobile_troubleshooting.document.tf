resource "dynatrace_document" "Mobile_troubleshooting" {
  name      = "Mobile troubleshooting"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "30": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "31": {
          "h": 6,
          "w": 18,
          "x": 6,
          "y": 29
        },
        "45": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 4
        },
        "46": {
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 2
        },
        "48": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 2
        },
        "49": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 2
        },
        "51": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 4
        },
        "52": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 4
        },
        "54": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "55": {
          "h": 6,
          "w": 7,
          "x": 0,
          "y": 9
        },
        "56": {
          "h": 6,
          "w": 17,
          "x": 7,
          "y": 9
        },
        "57": {
          "h": 6,
          "w": 7,
          "x": 0,
          "y": 15
        },
        "58": {
          "h": 6,
          "w": 17,
          "x": 7,
          "y": 15
        },
        "59": {
          "h": 5,
          "w": 6,
          "x": 18,
          "y": 2
        },
        "60": {
          "h": 6,
          "w": 7,
          "x": 0,
          "y": 21
        },
        "61": {
          "h": 6,
          "w": 17,
          "x": 7,
          "y": 21
        },
        "62": {
          "h": 6,
          "w": 6,
          "x": 0,
          "y": 29
        },
        "63": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
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
        "30": {
          "content": "### Error and view diagnostics\n\nThis section provides a technical deep dive into application failures to help identify root causes. It breaks down crash data by the specific frontend view where the issue occurred.\n ",
          "type": "markdown"
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events, scanLimitGBytes: 500\n| filter characteristics.has_error\n| filter isNotNull(error.type)\n| filter in(error.type, array($error_type))\n| filter isNotNull(error.id)\n| fieldsAdd name = entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")\n| filter isNotNull(name)\n| filter in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\"))\n| filter in(os.name, array($platform))\n| filter in(geo.country.iso_code, array($country))\n| filter in(app.short_version, array($version))\n\n| summarize {\n    stack_trace = takeFirst(exception.stack_trace),\n    name = takeFirst(coalesce(exception.message, error.name, substring(stack_trace, from: 0, to: 50))),\n    type = takeFirst(error.type),\n    view = takeFirst(view.name),\n    count = count(),\n    last_occurrence = max(start_time)\n}, by: {error.id, frontend = name, version = app.short_version}\n| fieldsAdd  `Error` = concat(\n  \"[\", name, \"]\", \n  \"(/ui/intent/dynatrace.error.inspector/inspect-error#%7B%22error.id%22%3A%22\", \n  error.id, \n  \"%22%2C%22dt.timeframe%22%3A%7B%22from%22%3A%22\", \n  toString($dt_timeframe_from), \n  \"%22%2C%22to%22%3A%22\", \n  toString($dt_timeframe_to), \n  \"%22%7D%7D)\") \n| fieldsAdd prompt=substring(concat(\"Analyze the Mobile Error came from mobile RUM agent:\", name, \" Stacktrace: \", stack_trace), to:2000), execute=true, contexts=array(record(type=\"supplementary\", value=substring(concat(name, \" Application: \", frontend, \" Version: \", version, \"Error type: \", type), to:20000)))\n| sort count desc\n\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 10 errors",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"error.id\"]",
                "[\"Error\"]",
                "[\"frontend\"]",
                "[\"version\"]",
                "[\"stack_trace\"]",
                "[\"name\"]",
                "[\"type\"]",
                "[\"view\"]",
                "[\"count\"]",
                "[\"last_occurrence\"]",
                "[\"prompt\"]",
                "[\"execute\"]",
                "[\"contexts\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Error"
                  ],
                  "id": 674502.1999999881,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"Error\"]": 600
              },
              "hiddenColumns": [
                [
                  "error.id"
                ],
                [
                  "stack_trace"
                ],
                [
                  "name"
                ],
                [
                  "prompt"
                ],
                [
                  "execute"
                ],
                [
                  "contexts"
                ]
              ],
              "hideColumnsForLargeResults": false
            },
            "thresholds": []
          }
        },
        "45": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: false) },\n union: TRUE,\n    by: { dt.rum.application.entity, app_start.type, os.name },\n     filter: error.type == \"crash\"\n         and in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, coalesce(array($country), \"\"))\n         and in(app.short_version, coalesce(array($version), \"\"))\n   | summarize {\n       trend = sum(error.count[]),\n       count = sum(arraySum((error.count)))\n }, by: { timeframe, interval, os.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Crashes trend",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "legend": {
              "ratio": 17
            }
          }
        },
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: false) },\n union: TRUE,\n    by: { dt.rum.application.entity, app_start.type, os.name },\n     filter: error.type == \"crash\"\n         and in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, coalesce(array($country), \"\"))\n         and in(app.short_version, coalesce(array($version), \"\"))\n   | summarize {\n       trend = sum(error.count[]),\n       count = sum(arraySum((error.count)))\n }, by: { timeframe, interval, os.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Crashes",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "data",
              "prefixIcon": "CriticalIcon",
              "recordLabel": "os.name",
              "sparklineSettings": {
                "isVisible": false,
                "variant": "bar"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-apdex-excellent-default, #2a7453)"
                },
                "isRelative": false,
                "upward": "#AE132D"
              }
            },
            "unitsOverrides": [
              {
                "added": 1765229092244,
                "baseUnit": "count",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "trend",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: false) },\n union: TRUE,\n    by: { dt.rum.application.entity, app_start.type, os.name },\n     filter: error.type == \"anr\"\n         and in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, coalesce(array($country), \"\"))\n         and in(app.short_version, coalesce(array($version), \"\"))\n   | summarize {\n       trend = sum(error.count[]),\n       count = sum(arraySum((error.count)))\n }, by: { timeframe, interval, os.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ANRs",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "data",
              "prefixIcon": "CriticalIcon",
              "recordLabel": "os.name",
              "sparklineSettings": {
                "isVisible": false,
                "variant": "bar"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                },
                "isRelative": false,
                "upward": {
                  "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                }
              }
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
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: false) },\n union: TRUE,\n    by: { dt.rum.application.entity, app_start.type, os.name },\n     filter: error.type == \"request\"\n         and in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, coalesce(array($country), \"\"))\n         and in(app.short_version, coalesce(array($version), \"\"))\n   | summarize {\n       trend = sum(error.count[]),\n       count = sum(arraySum((error.count)))\n }, by: { timeframe, interval, os.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request errors",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "data",
              "prefixIcon": "CriticalIcon",
              "recordLabel": "os.name",
              "sparklineSettings": {
                "isVisible": false,
                "variant": "bar"
              },
              "trend": {
                "downward": {
                  "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                },
                "isRelative": false,
                "upward": {
                  "Default": "var(--dt-colors-charts-apdex-unacceptable-default, #cd3741)"
                }
              }
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
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: false) },\n union: TRUE,\n    by: { dt.rum.application.entity, app_start.type, os.name },\n     filter: error.type == \"anr\"\n         and in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, coalesce(array($country), \"\"))\n         and in(app.short_version, coalesce(array($version), \"\"))\n   | summarize {\n       trend = sum(error.count[]),\n       count = sum(arraySum((error.count)))\n }, by: { timeframe, interval, os.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "ANR trend",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: false) },\n union: TRUE,\n    by: { dt.rum.application.entity, app_start.type, os.name },\n     filter: error.type == \"request\"\n         and in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, coalesce(array($country), \"\"))\n         and in(app.short_version, coalesce(array($version), \"\"))\n   | summarize {\n       trend = sum(error.count[]),\n       count = sum(arraySum((error.count)))\n }, by: { timeframe, interval, os.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request error trend",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "legend": {
              "ratio": 20
            }
          }
        },
        "54": {
          "content": "### Release and version quality\nGranular breakdown of Crashes, ANRs, and Request Errors by app version. Use this view to pinpoint specific releases introducing instability or connectivity regressions.\n\n ",
          "type": "markdown"
        },
        "55": {
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
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: true) },\n filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and error.type == \"crash\"\n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, array($country))\n         and in(app.short_version, array($version)),\n by: { dt.rum.application.entity, error.type, os.name, app.short_version}\n   | fieldsAdd app_name = entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")\n   | summarize {\n       crash.count = sum(error.count)\n }, by: { version = app.short_version, frontend = app_name, dt.entity.mobile_application = dt.rum.application.entity }\n | sort crash.count desc\n | limit 10",
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
          "title": "Top 10 crashing versions",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"app.short_version\"]": 94,
                "[\"app_name\"]": 138.4,
                "[\"crash.count\"]": 109.8
              },
              "hiddenColumns": [
                [
                  "dt.rum.application.entity"
                ],
                [
                  "dt.entity.mobile_application"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"crash.count\"]",
                  "direction": "descending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "56": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: false) },\n filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, array($country))\n         and in(app.short_version, array($version))\n         and error.type == \"crash\",\n by: { dt.rum.application.entity, error.type, os.name, app.short_version}\n// from: toTimestamp($dt_timeframe_to) - 7d\n   | fieldsAdd app_name = entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")\n   | summarize {\n      error.trend = sum(error.count[]),\n      error.count = sum(arraySum(error.count))\n }, by: { timeframe, interval, version = app.short_version, app_name }\n | sort error.count desc\n | limit 10",
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
          "title": "Top 10 crashing versions trend",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "legend": {
              "ratio": 21
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: true) },\n filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and error.type == \"anr\"\n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, array($country))\n         and in(app.short_version, array($version)),\n by: { dt.rum.application.entity, error.type, os.name, app.short_version}\n   | fieldsAdd app_name = entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")\n   | summarize {\n       anr.count = sum(error.count)\n }, by: { version = app.short_version, frontend = app_name }\n | sort anr.count desc\n | limit 10",
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
          "title": "Top versions by ANR Count",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"anr.count\"]": 91.3,
                "[\"app.short_version\"]": 94,
                "[\"app_name\"]": 158.39,
                "[\"crash.count\"]": 109.8
              },
              "sortBy": [
                {
                  "columnId": "[\"crash.count\"]",
                  "direction": "descending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "58": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: false) },\n filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, array($country))\n         and in(app.short_version, array($version))\n         and error.type == \"anr\",\n by: { dt.rum.application.entity, error.type, os.name, app.short_version}\n //from: toTimestamp($dt_timeframe_to) - 7d\n   | fieldsAdd app_name = entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")\n   | summarize {\n      error.trend = sum(error.count[]),\n      error.count = sum(arraySum(error.count))\n }, by: { timeframe, interval, version = app.short_version, app_name }\n | sort error.count desc\n | limit 10",
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
          "title": "Top 10 versions by ANR count trend",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "legend": {
              "ratio": 21
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "59": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: false) },\n union: TRUE,\n    by: { dt.rum.application.entity, app_start.type, os.name, geo.country.iso_code },\n     filter: in(error.type, array($error_type))\n         and in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, coalesce(array($country), \"\"))\n         and in(app.short_version, coalesce(array($version), \"\"))\n   | summarize {       \n       errors = sum(arraySum((error.count)))\n }, by: { timeframe, interval, geo.country.iso_code}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Error geo distribution ($error_type)",
          "type": "data",
          "visualization": "choropleth",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "colorModeType": {
              "numericColorPalette": "red"
            },
            "mapView": {
              "zoom": 1
            },
            "unitsOverrides": [
              {
                "added": 1765830465477,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "errors",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: true) },\n filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and error.type == \"request\"\n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, array($country))\n         and in(app.short_version, array($version)),\n by: { dt.rum.application.entity, error.type, os.name, app.short_version}\n   | fieldsAdd app_name = entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")\n   | summarize {\n       request.errors = sum(error.count)\n }, by: { version = app.short_version, frontend = app_name }\n | sort request.errors desc\n | limit 10",
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
          "title": "Top versions by request errors count",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "colorThresholdTarget": "background",
              "columnWidths": {
                "[\"anr.count\"]": 91.3,
                "[\"app.short_version\"]": 94,
                "[\"app_name\"]": 158.39,
                "[\"crash.count\"]": 109.8
              },
              "sortBy": [
                {
                  "columnId": "[\"crash.count\"]",
                  "direction": "descending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "61": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: false) },\n filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, array($country))\n         and in(app.short_version, array($version))\n         and error.type == \"request\",\n by: { dt.rum.application.entity, error.type, os.name, app.short_version}//,\n //from: toTimestamp($dt_timeframe_to) - 7d\n   | fieldsAdd app_name = entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")\n   | summarize {\n      error.trend = sum(error.count[]),\n      error.count = sum(arraySum(error.count))\n }, by: { timeframe, interval, version = app.short_version, app_name }\n | sort error.count desc\n | limit 10",
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
          "title": "Top 10 versions by request error count trend (last 7 days)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "legend": {
              "ratio": 21
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "62": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { error.count = sum(dt.frontend.error.count, default: 0, scalar: false) },\n union: TRUE,\n    by: { dt.rum.application.entity, error.type },\n     filter: in(concat(dt.rum.application.entity,\": \",entityName(dt.rum.application.entity, type:\"dt.entity.mobile_application\")), coalesce(array($mobile_app), \"\")) \n         and in(os.name, array($platform))\n         and in(geo.country.iso_code, coalesce(array($country), \"\"))\n         and in(error.type, array($error_type))\n         and in(app.short_version, coalesce(array($version), \"\"))\n   | summarize {\n       count = sum(arraySum((error.count)))\n }, by: { error.type }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "legend": {
              "ratio": 23
            }
          }
        },
        "63": {
          "content": "### Mobile health: crashes, ANRs \u0026 connectivity\nA unified view of mobile application health across Android and iOS. Monitors critical stability metrics (Crashes, ANRs) and connectivity issues (Request Errors) to rapidly identify regressions in specific app versions.\n\n ",
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
          "input": "timeseries sum(dt.frontend.error.count), by:{geo.country.iso_code}\n| summarize countries = collectDistinct(geo.country.iso_code)",
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
          "input": "timeseries sum(dt.frontend.error.count), by:{ app.short_version }\n| summarize countries = collectDistinct(app.short_version)",
          "key": "version",
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
          "input": "crash,anr,request",
          "key": "error_type",
          "multiple": true,
          "type": "csv",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.experience.vitals.mobile-troubleshooting"
  # private = false
}
