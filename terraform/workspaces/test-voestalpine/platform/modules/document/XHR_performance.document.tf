resource "dynatrace_document" "XHR_performance" {
  name      = "XHR performance"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 5
        },
        "12": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 10
        },
        "13": {
          "h": 5,
          "w": 10,
          "x": 0,
          "y": 18
        },
        "14": {
          "h": 5,
          "w": 14,
          "x": 10,
          "y": 18
        },
        "15": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "16": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "17": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "18": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 35
        },
        "20": {
          "h": 3,
          "w": 8,
          "x": 0,
          "y": 2
        },
        "21": {
          "h": 3,
          "w": 8,
          "x": 16,
          "y": 2
        },
        "22": {
          "h": 3,
          "w": 8,
          "x": 8,
          "y": 2
        },
        "23": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 17
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
          "query": "fetch user.events\n| filter characteristics.has_request\n  and (performance.initiator_type==\"xmlhttprequest\" or performance.initiator_type==\"fetch\")\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries  \n  medianDuration = percentile(duration,50),\n  p75Duration = percentile(duration,75),\n  p90Duration = percentile(duration,90)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request duration",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "medianDuration",
                  "p75Duration",
                  "p90Duration"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "dataMapping": {
              "displayedFields": [
                "medianDuration",
                "p75Duration",
                "p90Duration"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1742882329957,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianFetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361787626,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Fetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361795831,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p75Duration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1750941132286,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianDuration",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1750941146836,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Duration",
                "suffix": "",
                "unitCategory": "time"
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
          "query": "fetch user.events\n| filter characteristics.has_request\n  and performance.initiator_type == \"xmlhttprequest\" or performance.initiator_type == \"fetch\"\n  and dt.rum.agent.type == \"javascript\"\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| fieldsAdd ttfb = web_vitals.time_to_first_byte\n\n| makeTimeseries  \n  medianFetch=percentile(ttfb,50),\nby:{dt.rum.application.entity}\n| lookup [\n  fetch dt.entity.application\n  | fields id, entity.name\n], sourceField:dt.rum.application.entity, lookupField:id, fields:{ entity.name }\n| limit 30",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Time to first byte",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "medianFetch"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Time to first byte"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "entity.name"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1742882329957,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianFetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361787626,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Fetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361795831,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p75Fetch",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_request\n  and performance.initiator_type == \"xmlhttprequest\" or performance.initiator_type == \"fetch\"\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n   \n| summarize Count=count(), Duration=avg(duration), by: url.path\n| sort Count desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Most frequent XHRs (Top 20)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"url.path\"]",
                "[\"Count\"]",
                "[\"Duration\"]"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1742882329957,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianFetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361787626,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Fetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361795831,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p75Fetch",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_request\n  and performance.initiator_type==\"xmlhttprequest\" or performance.initiator_type==\"fetch\"\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| summarize \n   Count=count(), \n   Duration=avg(duration),  \n   renderBlocking = collectDistinct(\n     if(isNull(performance.render_blocking_status), \"not reported\", else: performance.render_blocking_status),\n     maxLength:3),\n   by: url.path\n| sort Duration desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Slowest XHRs (Top 20)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"url.path\"]",
                "[\"Count\"]",
                "[\"Duration\"]",
                "[\"renderBlocking\"]"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1742882329957,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianFetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361787626,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Fetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361795831,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p75Fetch",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_request and characteristics.has_error\n and (performance.initiator_type==\"xmlhttprequest\" or performance.initiator_type==\"fetch\")\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n   \n| summarize \n   Count = count(), \n   Duration = avg(duration),\n   Statuscodes = collectDistinct(http.response.status_code,maxLength:5),\n   by: url.path\n| sort Count desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top Failed XHRs (Top 20)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"url.path\"]",
                "[\"Count\"]",
                "[\"Duration\"]",
                "[\"Statuscodes\"]"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1742882329957,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianFetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361787626,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Fetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361795831,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p75Fetch",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "16": {
          "content": "### XHR \u0026 fetch performance\nThis dashboard serves as a starting place to investigate and track XHR and fetch performance. Dynatrace continuously tracks user interactions with each page. If user interaction leads to XmlHttpRequests or fetch() calls this might affect the performance. If you don't see data, [start monitoring your frontends](/ui/openApp/dynatrace.experience.vitals?pageToken=add-frontend)",
          "type": "markdown"
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_request\n  and performance.initiator_type==\"xmlhttprequest\" or performance.initiator_type==\"fetch\"\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| fieldsAdd geo.country.name = geo.country.iso_code\n| summarize \n   duration = avg(duration),\n   count = count(),\n   by: geo.country.name\n| sort duration desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg Request duration by country (Top 20)",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "geo.country.name",
                  "count"
                ],
                "categoryAxisLabel": "Country name, Request count",
                "valueAxis": [
                  "duration"
                ],
                "valueAxisLabel": "Request duration"
              },
              "truncationMode": "middle"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1742882329957,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianFetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361787626,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Fetch",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1743361795831,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p75Fetch",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "18": {
          "content": "![](https://cdn.bfldr.com/B686QPH3/at/4qqsnnn959srjj3r786mkssv/BAE9730_Insights-Lockup-Horizontal-RGB_Gray.svg?auto=webp\u0026format=png)\n\n---\nThis dashboard template was created by the [Dynatrace Business Insights](https://www.dynatrace.com/services-support/business-insights/?utm_medium=website\u0026utm_source=core-web-vital-exploration-notebook\u0026utm_campaign=global-optimize-apps\u0026utm_content=none\u0026utm_term=25q4) team: Digital Experience experts that help Dynatrace customers:\n- Accelerate and maximize the value of their Dynatrace investment across the DEM and Business Analytics Solutions \n- Extend and expand core Dynatrace use cases with advanced analytics, exclusive technology and business reporting\n- Drive digital optimization with human expertise\n\n### Connecting with the Business Insights Team\n* If you're interested in learning more about the Business Insights service, please visit this [link﻿](https://www.dynatrace.com/services-support/business-insights/?utm_medium=website\u0026utm_source=core-web-vital-exploration-notebook\u0026utm_campaign=global-optimize-apps\u0026utm_content=none\u0026utm_term=25q4) and reach out to your Dynatrace account team. \n* If you are already a Business Insights customer and are looking for help in exploring additional use cases, have questions about this notebook or requests for expansion, please reach out to your resources on the Insights team. ",
          "type": "markdown"
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch user.events\n| filter characteristics.has_request\n  and (performance.initiator_type==\"xmlhttprequest\" or performance.initiator_type==\"fetch\")\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries p90Duration = percentile(duration,90), p90Duration_scalar = percentile(duration, 90, scalar:true)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request duration - p90",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Short label",
              "labelMode": "none",
              "prefixIcon": "AirplaneFilledIcon",
              "recordField": "p90Duration_scalar",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "downward": "#2A7453",
                "isVisible": true,
                "label": "Test with a very long label",
                "trendField": "avg_duration",
                "upward": "#AE132D"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1766408845527,
                "baseUnit": "nanosecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Duration_scalar",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch user.events\n| filter characteristics.has_request\n and (performance.initiator_type==\"xmlhttprequest\" or performance.initiator_type==\"fetch\")\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries failedRequests = countIf(characteristics.has_error), requests = count()\n| fieldsAdd failureRate = 100 * arrayAvg(failedRequests) / arrayAvg(requests)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "XHR \u0026 fetch failure rate",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Short label",
              "labelMode": "none",
              "prefixIcon": "AirplaneFilledIcon",
              "recordField": "failureRate",
              "sparklineSettings": {
                "isVisible": false,
                "record": "failedRequests"
              },
              "trend": {
                "downward": "#2A7453",
                "isVisible": true,
                "label": "Test with a very long label",
                "upward": "#AE132D"
              }
            },
            "thresholds": [
              {
                "field": "failureRate",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "≤",
                    "id": 0,
                    "label": "",
                    "value": 5
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≤",
                    "id": 1,
                    "label": "",
                    "value": 10
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≤",
                    "id": 2,
                    "label": "",
                    "value": 15
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1766411139393,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "failureRate",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "fetch user.events\n| filter characteristics.has_request\n  and performance.initiator_type == \"xmlhttprequest\" or performance.initiator_type == \"fetch\"\n  and dt.rum.agent.type == \"javascript\"\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| fieldsAdd ttfb = web_vitals.time_to_first_byte\n\n| makeTimeseries  \n  medianFetch = percentile(ttfb,50), medianFetch_scalar = percentile(ttfb, 50, scalar:true)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Time to first byte - median",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Short label",
              "labelMode": "none",
              "prefixIcon": "AirplaneFilledIcon",
              "recordField": "medianFetch_scalar",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "downward": "#2A7453",
                "isVisible": true,
                "label": "Test with a very long label",
                "upward": "#AE132D"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1766409774524,
                "baseUnit": "nanosecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianFetch_scalar",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "23": {
          "content": "---------",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": "*",
          "editable": true,
          "input": "data record (v=\"*\") \n| append [\nfetch dt.entity.application\n| fields v=concat(id,\": \", entity.name)\n ]",
          "key": "Frontend",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": " data record (v=\"*\") \n| append [\n  fetch user.events\n  | fieldsAdd appId=substring($Frontend,from:0,to:  indexOf($Frontend,\":\"))\n  | filter $Frontend==\"*\" or dt.rum.application.entity == appId\n  | fields page.name\n  | summarize c=count(),by: page.name\n  | sort c desc\n  | limit 100\n]",
          "key": "Page",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.experience.vitals.xhr-performance"
  # private = false
}
