resource "dynatrace_document" "User_sessions_overview" {
  name      = "User sessions overview"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 3
        },
        "1": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "10": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 3
        },
        "11": {
          "h": 6,
          "w": 10,
          "x": 14,
          "y": 37
        },
        "12": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "13": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 51
        },
        "14": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 22
        },
        "16": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "17": {
          "h": 6,
          "w": 7,
          "x": 0,
          "y": 37
        },
        "18": {
          "h": 6,
          "w": 7,
          "x": 7,
          "y": 37
        },
        "20": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 22
        },
        "21": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "22": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "23": {
          "h": 6,
          "w": 9,
          "x": 7,
          "y": 9
        },
        "24": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 9
        },
        "5": {
          "h": 6,
          "w": 7,
          "x": 0,
          "y": 9
        },
        "6": {
          "h": 9,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "8": {
          "h": 7,
          "w": 12,
          "x": 12,
          "y": 44
        },
        "9": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 44
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
          "query": "/* \n   Counts unique users: \n   extracts the frontend entity from $frontend, filters to ALL or matching RUM apps,\n   builds a user identifier (tag or instance), then makes a timeseries of distinct users. \n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| fieldsAdd user = coalesce(user.identifier, dt.rum.instance.id)\n| makeTimeseries countDistinct(user)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-4h",
              "to": "now()-2h"
            },
            "tileTimeframeEnabled": true
          },
          "title": "User Count",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "purple-rain",
              "fieldMapping": {
                "leftAxisValues": [
                  "countDistinct(user)"
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "purple-rain",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "countDistinct(user)"
              ]
            }
          }
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "/* \n  Unique sessions over time:\n     1) Extract the app/entity from $frontend and keep ALL or matching apps.\n     2) Build a timeseries counting distinct session IDs across that scope.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| makeTimeseries countDistinct(dt.rum.session.id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-3h",
              "to": "now()-1h"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Session Count",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "countDistinct(dt.rum.session.id)"
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "countDistinct(dt.rum.session.id)"
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
          "query": "/*\n  Returns the top 20 users with the most distinct page paths:\n    1) Derive the frontend entity from $frontend and keep only matching sessions.\n    2) Join per-session distinct page paths from user.events.\n    3) Count distinct pages per user, sort descending, and take the first 20.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| fieldsAdd user = coalesce(user.identifier, dt.rum.instance.id)\n| fieldsKeep user, dt.rum.session.id\n| join [ \n  fetch user.events\n  | filter in(frontend.name, {$frontend})\n  | fieldsKeep dt.rum.session.id, page.url.path\n  | summarize pages=collectDistinct(page.url.path), by:{dt.rum.session.id}\n], on:{ dt.rum.session.id }, fields: {pages}\n| summarize pages=arraySize(arrayDistinct(arrayFlatten(collectArray(pages)))), by:{ user }\n| sort pages desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Avg unique pages visited per user",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "thresholdRules": []
            },
            "table": {
              "columnWidths": {
                "[\"pages\"]": 73
              },
              "sortBy": [
                {
                  "columnId": "[\"pages\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "/* \n  Sessions by ISP (top 1000):\n     1) Extract the app/entity from $frontend and keep ALL or matching apps.\n     2) Keep sessions with an ISP value (client.isp not null).\n     3) Count distinct sessions per ISP, sort descending, and return up to 1000.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| filter isNotNull(client.isp)\n| summarize count=countDistinct(dt.rum.session.id), by: client.isp\n| sort count desc\n| limit 1000",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Number of sessions per ISP",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "thresholdRules": []
            },
            "table": {
              "columnWidths": {
                "[\"client.isp\"]": 253.453125
              }
            }
          }
        },
        "12": {
          "content": "### What is this Dashboard for?\nHere you can analyse the sessions in your frontends and segment your audiences. If you don't see data, [start monitoring your frontends](/ui/apps/dynatrace.experience.vitals/add-frontend)\n\n-----",
          "type": "markdown"
        },
        "13": {
          "content": "### Explore what the [new Real User Monitoring experience](https://docs.dynatrace.com/docs/shortlink/new-rum-experience#new-rum-experience-overview) offers.\n\n* Use the [Experience Vitals app](/ui/apps/dynatrace.experience.vitals/) for frontend monitoring of web and mobile applications.\n* Try the [Users \u0026 Sessions app](/ui/apps/dynatrace.users.sessions/) to understand how users interact with your web and mobile applications.\n* Discover, track, and investigate frontend errors in web and mobile applications with the help of the [Error Inspector app](/ui/apps/dynatrace.error.inspector/).\n\n### Additional resources\n\n* Learn how to get the most value from your data thanks to [Dynatrace Query Language](https://docs.dynatrace.com/docs/shortlink/dql-dynatrace-query-language-hub).\n##\n---\n![](https://cdn.bfldr.com/B686QPH3/at/4qqsnnn959srjj3r786mkssv/BAE9730_Insights-Lockup-Horizontal-RGB_Gray.svg?auto=webp\u0026format=png)\n\n---\nThis ready-made dashboard was created by the [Dynatrace Business Insights](https://www.dynatrace.com/services-support/business-insights/?utm_medium=website\u0026utm_source=core-web-vital-exploration-notebook\u0026utm_campaign=global-optimize-apps\u0026utm_content=none\u0026utm_term=25q4) team: Digital Experience experts that help Dynatrace customers:\n- Accelerate and maximize the value of their Dynatrace investment across the DEM and Business Analytics Solutions \n- Extend and expand core Dynatrace use cases with advanced analytics, exclusive technology and business reporting\n- Drive digital optimization with human expertise\n\n### Connecting with the Business Insights Team\n* If you're interested in learning more about the Business Insights service, please visit this [link﻿](https://www.dynatrace.com/services-support/business-insights/?utm_medium=website\u0026utm_source=core-web-vital-exploration-notebook\u0026utm_campaign=global-optimize-apps\u0026utm_content=none\u0026utm_term=25q4)~ and reach out to your Dynatrace account team. \n* If you are already a Business Insights customer and are looking for help in exploring additional use cases, have questions about this notebook or requests for expansion, please reach out to your resources on the Insights team.\n\n-----",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "/* \n  Unique error-affected sessions over time:\n    1) Extract app/entity from $frontend and keep ALL or matching apps.\n    2) Keep only sessions with any errors (ANR, generic errors, CSP, HTTP 4xx/5xx).\n    3) Build a timeseries counting distinct session IDs for those errored sessions.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| filter error.anr_count \u003e 0 OR error.count \u003e 0 OR error.csp_violation_count \u003e 0 OR error.http_4xx_count \u003e 0 OR error.http_5xx_count \u003e 0\n| makeTimeseries countDistinct(dt.rum.session.id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()-30m"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Web sessions with errors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "countDistinct(dt.rum.session.id)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "countDistinct(dt.rum.session.id)"
              ]
            }
          }
        },
        "16": {
          "content": "### Session Intensity\n\n-----",
          "type": "markdown"
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "/* \n  Sessions by user type (distinct users):\n     1) Extract the app/entity from $frontend and keep ALL or matching apps.\n     2) Count distinct users (dt.rum.instance.id) grouped by dt.rum.user_type.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| summarize sessions_by_user_type=countDistinct(dt.rum.instance.id), by: dt.rum.user_type",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Sessions per user type - Real vs Synthetic vs Robot",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "thresholdRules": []
            }
          }
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "/* \n  Sessions by frontend type (distinct sessions):\n     1) Extract the app/entity from $frontend and keep ALL or matching apps.\n     2) Count distinct sessions grouped by dt.rum.application.type.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| summarize sessions_by_frontend_type=countDistinct(dt.rum.session.id), by: dt.rum.application.type",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Sessions per frontend type",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "thresholdRules": []
            }
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "/* \n  Unique interactive sessions over time:\n     1) Extract app/entity from $frontend and keep ALL or matching apps.\n     2) Keep only sessions with at least one user interaction (user_interaction_count \u003e 0).\n     3) Build a timeseries counting distinct session IDs for those interactive sessions.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| filter user_interaction_count \u003e 0\n| makeTimeseries countDistinct(dt.rum.session.id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-3h",
              "to": "now()-1h"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Sessions with user interactions",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "countDistinct(dt.rum.session.id)"
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "countDistinct(dt.rum.session.id)"
              ]
            }
          }
        },
        "21": {
          "content": "### Audience analysis\n\n-----",
          "type": "markdown"
        },
        "22": {
          "content": "### Session Segmentation\n\n-----",
          "type": "markdown"
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "/* \n  Top operating systems by unique sessions (10 max):\n     1) Extract the app/entity from $frontend and keep ALL or matching apps.\n     2) Group by os.name and count distinct sessions.\n     3) Sort descending and return the top 10.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| summarize count=countDistinct(dt.rum.session.id), by:{os.name=coalesce(os.name, \"Unknown\")}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "OS name",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "colorPalette": "blue-steel",
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "legend": {
              "ratio": 30
            }
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "/* \n  Top device types by unique sessions (10 max):\n     1) Extract the app/entity from $frontend and keep ALL or matching apps.\n     2) Group by device.type and count distinct sessions.\n     3) Sort descending and return the top 10.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| summarize count=countDistinct(dt.rum.session.id), by:{device.type=coalesce(device.type, \"Unknown\")}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Device Type",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "colorPalette": "blue-steel",
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "legend": {
              "ratio": 30
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
          "query": "/* \n  Top browsers by unique sessions (10 max):\n     1) Extract app/entity from $frontend and scope to ALL or matching apps.\n     2) Group by browser.name and count distinct sessions.\n     3) Sort descending and return the top 10.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| summarize count=countDistinct(dt.rum.session.id), by:{browser.name=coalesce(browser.name, \"Unknown\")}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Browser name",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "colorPalette": "blue-steel",
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "legend": {
              "ratio": 45
            }
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "/* \n  Sessions by country (distinct count):\n     1) Extract the app/entity from $frontend.\n     2) Count distinct session IDs per geo.country.iso_code.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| summarize countDistinct(dt.rum.session.id), by: geo.country.iso_code",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Region",
          "type": "data",
          "visualization": "choropleth",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "thresholdRules": []
            }
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "/* \n  Average navigations per session over time:\n     1) Extract the app/entity from $frontend and keep ALL or matching apps.\n     2) Build a timeseries of the average navigation_count across sessions.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| makeTimeseries avg(navigation_count)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-3h",
              "to": "now()-1h"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Avg pages per session",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "purple-rain",
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(navigation_count)"
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "purple-rain",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "avg(navigation_count)"
              ]
            }
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "/* \n  Average interactions per session over time:\n     1) Extract the app/entity from $frontend and keep ALL or matching apps.\n     2) Build a timeseries of the average user_interaction_count across sessions.\n*/\nfetch user.sessions\n| filter in(frontend.name, {$frontend})\n| makeTimeseries avg(user_interaction_count)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-3h",
              "to": "now()-1h"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Avg interactions per session",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(user_interaction_count)"
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
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "blue-steel",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "avg(user_interaction_count)"
              ]
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
          "input": "smartscapeNodes \"FRONTEND\"\n| fields frontend.name",
          "key": "frontend",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.users.sessions.session-list-template"
  # private = false
}
