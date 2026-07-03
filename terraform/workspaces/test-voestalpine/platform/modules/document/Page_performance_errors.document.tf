resource "dynatrace_document" "Page_performance_errors" {
  name      = "Page performance & errors"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "1": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 4
        },
        "10": {
          "h": 4,
          "w": 11,
          "x": 13,
          "y": 35
        },
        "11": {
          "h": 4,
          "w": 11,
          "x": 13,
          "y": 39
        },
        "14": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "15": {
          "h": 9,
          "w": 12,
          "x": 12,
          "y": 5
        },
        "16": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 44
        },
        "17": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 56
        },
        "2": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "3": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "30": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 52
        },
        "4": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 5
        },
        "41": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "42": {
          "h": 8,
          "w": 13,
          "x": 0,
          "y": 35
        },
        "43": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 28
        },
        "44": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 28
        },
        "45": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 31
        },
        "46": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 31
        },
        "47": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "49": {
          "h": 4,
          "w": 6,
          "x": 6,
          "y": 31
        },
        "50": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 31
        },
        "51": {
          "h": 2,
          "w": 4,
          "x": 12,
          "y": 2
        },
        "52": {
          "h": 2,
          "w": 4,
          "x": 20,
          "y": 2
        },
        "53": {
          "h": 2,
          "w": 4,
          "x": 16,
          "y": 2
        },
        "54": {
          "h": 2,
          "w": 4,
          "x": 4,
          "y": 2
        },
        "55": {
          "h": 2,
          "w": 4,
          "x": 8,
          "y": 2
        },
        "56": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 2
        },
        "9": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 20
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
          "query": "fetch user.events\n| filter characteristics.has_navigation\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| fieldsAdd navType = navigation.type\n| makeTimeseries  \n  count(), by: {navType}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "count()"
                ],
                "timestamp": "timeframe"
              },
              "tooltip": {
                "seriesDisplayMode": "multi-line",
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "navType"
              ]
            },
            "thresholds": []
          }
        },
        "1": {
          "content": "#### Navigation statistics\n",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_page_summary\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries  \n  medianCLS=percentile(web_vitals.cumulative_layout_shift,50),\n  p90CLS=percentile(web_vitals.cumulative_layout_shift,90)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cumulative Layout Shift",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "medianCLS",
                  "p90CLS"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "medianCLS",
                "p90CLS"
              ]
            },
            "thresholds": []
          }
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_page_summary\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries  \n  medianFID = percentile(web_vitals.first_input_delay, 50),\n  p90FID = percentile(web_vitals.first_input_delay, 90)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "First Input Delay",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "medianFID",
                  "p90FID"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "medianFID",
                "p90FID"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1749120978851,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianFID",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1749121088426,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90FID",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "14": {
          "content": "#### Errors\n",
          "type": "markdown"
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_navigation\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| summarize Count=count(), by: { navigation.type,view.name }\n| sort Count desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top navigations (Top 20)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnWidths": {
                "[\"navigation.type\"]": 148,
                "[\"view.name\"]": 767
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1728137175992,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count()",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_error\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries  \n  count(),\n  by: error.type",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errors by type",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "count()"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "error.type"
              ]
            },
            "thresholds": []
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_error and error.type == \"request\"\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| fieldsAdd statusGroupOther=if(http.response.status_code\u003e=600,\"other\")\n| fieldsadd statusCodeGroup=coalesce(statusGroupOther,concat((http.response.status_code/100),\"xx\"))\n\n| makeTimeseries count(), by: statusCodeGroup",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP errors",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "count()"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "statusCodeGroup"
              ]
            },
            "thresholds": []
          }
        },
        "2": {
          "content": "#### Page Performance\n",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_navigation\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries  \n  medianPageLoad = percentile(performance.load_event_end,50),\n  p90PageLoad = percentile(performance.load_event_end,90)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Page Load Time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "medianPageLoad",
                  "p90PageLoad"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "medianPageLoad",
                "p90PageLoad"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1729067229836,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianPageLoad",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1729067251512,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90PageLoad",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_error\n| filter error.type==\"exception\" and dt.rum.agent.type == \"javascript\"\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries  \n  count(),\n  by: browser.name",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "JS errors by browsers",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "count()"
                ],
                "timestamp": "timeframe"
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
                "browser.name"
              ]
            },
            "thresholds": []
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_navigation \n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| fieldsAdd NavigationType= navigation.type\n| summarize Count = count(), by: NavigationType",
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
                "[\"NavigationType\"]",
                "[\"Count\"]"
              ],
              "sortBy": [
                {
                  "columnId": "[\"NavigationType\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1728137175992,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count()",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "fetch user.events\n| filter characteristics.has_navigation\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| fieldsAdd processing = performance.dom_content_loaded_event_end - performance.dom_interactive\n| makeTimeseries  \n  medianProcessing = percentile(processing,50),\n  p90Processing = percentile(processing,90)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Processing time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "medianProcessing",
                  "p90Processing"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "medianProcessing",
                "p90Processing"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1729067308792,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Processing",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1729067320067,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianProcessing",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_request \n| fieldsAdd page.instance_id = if(\n      (\n        parse(dt.rum.schema_version, \"INT:major\") \u003e 0 or\n        (parse(dt.rum.schema_version, \"INT:major\") == 0 and parse(dt.rum.schema_version, \"INT'.'INT:minor\") \u003e= 22)\n      ), page.instance_id, else: page.id\n    ) \n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| fieldsAdd resourceSize = if(\n      isNotNull(performance.decoded_body_size) and performance.decoded_body_size \u003e 0,\n      performance.decoded_body_size\n    )\n| fieldsAdd downloadSize = if(\n      isNotNull(performance.transfer_size) and performance.transfer_size \u003e 0,\n      performance.transfer_size\n    )\n\n| summarize {\n    resCnt = count(), pageWeightSum = sum(resourceSize),\n    pageDownloadSizeSum = sum(downloadSize)\n  },\n  by:{ page.instance_id, page.name }\n|summarize { \n    Count = count(),\n    avgRequestsPerPage = avg(resCnt),\n    weightMedian = percentile(pageWeightSum,50),\n    weightp90 = percentile(pageWeightSum,90),\n    downloadMedian = percentile(pageDownloadSizeSum,50),\n    downloadp90 = percentile(pageDownloadSizeSum,90)\n  },\n  by: { page.name }\n| sort weightMedian desc  \n| limit 50",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Page size/weight",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"page.name\"]",
                "[\"Count\"]",
                "[\"avgRequestsPerPage\"]",
                "[\"weightMedian\"]",
                "[\"weightp90\"]",
                "[\"downloadMedian\"]",
                "[\"downloadp90\"]"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1729068002232,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianTTFB",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1729068012793,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90TTFB",
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
          "query": "fetch user.events\n| filter characteristics.has_navigation\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| filter isNotNull(performance.domain_lookup_start) \n| fieldsAdd dnsTime = performance.domain_lookup_end - performance.domain_lookup_start\n| filter dnsTime \u003e 0ns\n| makeTimeseries  \n  medianDns = percentile(dnsTime,50),\n  p90Dns = percentile(dnsTime,90)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DNS time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "medianDns",
                  "p90Dns"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "medianDns",
                "p90Dns"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1729067308792,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Dns",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1729067320067,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianDns",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "44": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_navigation\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| fieldsAdd connectTime = if(\n  performance.connect_end - performance.connect_start \u003e 0ns,\n  performance.connect_end-performance.connect_start)\n| fieldsAdd tls = if(\n  performance.connect_end - performance.secure_connection_start \u003e 0ns,\n  performance.connect_end - performance.secure_connection_start)\n| makeTimeseries\n  medianConnect = percentile(connectTime,50),\n  p90Connect = percentile(connectTime,90),\n  medianTls = percentile(tls,50),\n  p90Tls = percentile(tls,90)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Connection time for new connections",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "medianConnect",
                  "p90Connect",
                  "medianTls",
                  "p90Tls"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "medianConnect",
                "p90Connect",
                "medianTls",
                "p90Tls"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1729067308792,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianConnect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1729067320067,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Tls",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1731318944345,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Connect",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1731318948667,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianTls",
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
          "query": "fetch user.events\n| filter characteristics.has_request\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| summarize c=count(),\n  connects = countIf(\n      isNotNull(performance.connect_start) and (performance.connect_end - performance.connect_start \u003e 0ns)\n    ),\n  by: dt.rum.session.id\n| summarize medianConnects = round(percentile(connects, 50))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Median Connects per Session",
              "prefixIcon": "",
              "recordField": "medianConnects",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1729067308792,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Dns",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1729067320067,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianDns",
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
          "query": "fetch user.events\n| filter characteristics.has_request\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| summarize count(),\n  dnsLookups = countIf(\n      isNotNull(performance.domain_lookup_start) and\n      performance.domain_lookup_start \u003e 0ns\n    ),\n  by: dt.rum.session.id\n| summarize medianDnsLookups = round(percentile(dnsLookups, 50))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Median DNS Lookups per Session",
              "prefixIcon": "",
              "recordField": "medianDnsLookups",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1729067308792,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Dns",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1729067320067,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianDns",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "47": {
          "content": "### Page performance \u0026 errors\nThis dashboard serves as a starting place to investigate page performance and web frontend navigations. If you don't see data, [start monitoring your frontends](/ui/openApp/dynatrace.experience.vitals?pageToken=add-frontend)\n",
          "type": "markdown"
        },
        "49": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_request\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| summarize count(),\n  dnsLookups = countIf(\n      isNotNull(performance.domain_lookup_start) and\n      performance.domain_lookup_start \u003e 0ns\n    ),\n  by: dt.rum.session.id\n| summarize p90DnsLookups = round(percentile(dnsLookups, 90))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "P90 DNS Lookups per Session",
              "prefixIcon": "",
              "recordField": "p90DnsLookups",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1729067308792,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Dns",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1729067320067,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianDns",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_request\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| summarize c=count(),\n  connects = countIf(\n      isNotNull(performance.connect_start) and (performance.connect_end - performance.connect_start \u003e 0ns)\n    ),\n  by: dt.rum.session.id\n| summarize p90Connects = round(percentile(connects, 90))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "P90 Connects per Session",
              "prefixIcon": "",
              "recordField": "p90Connects",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1729067308792,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90Dns",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1729067320067,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianDns",
                "suffix": "",
                "unitCategory": "time"
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
          "query": "fetch user.events\n| filter characteristics.has_page_summary\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries  \n  p75LCP = percentile(web_vitals.largest_contentful_paint, 75),\n  p75LCP_scalar = percentile(web_vitals.largest_contentful_paint, 75, scalar:true)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "LCP - p75",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "downward": "#2A7453",
                "upward": "#AE132D"
              }
            },
            "thresholds": [
              {
                "field": "p75LCP_scalar",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": "#ECA440",
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 2500000000
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 4000000000
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1766416487954,
                "baseUnit": "nanosecond",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p75LCP_scalar",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_page_summary\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries  \n  p75CLS = percentile(web_vitals.cumulative_layout_shift, 75),\n  p75CLS_scalar = percentile(web_vitals.cumulative_layout_shift, 75, scalar: true)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CLS - p75",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "downward": "#2A7453",
                "upward": "#AE132D"
              }
            },
            "thresholds": [
              {
                "field": "p75CLS_scalar",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": "#ECA440",
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 0.1
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 0.25
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": []
          }
        },
        "53": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_page_summary\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries  \n  p75INP = percentile(web_vitals.interaction_to_next_paint, 75),\n  p75INP_scalar = percentile(web_vitals.interaction_to_next_paint, 75, scalar:true)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "INP - p75",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "p75INP_scalar",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#2F6863",
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": "#ECA440",
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 200000000
                  },
                  {
                    "color": "#C4233B",
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 500000000
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1765386563524,
                "baseUnit": "nanosecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p75INP_scalar",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "54": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_navigation\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries  \n  medianPageLoad = percentile(performance.load_event_end, 50),\n  medianPageLoad_scalar = percentile(performance.load_event_end, 50, scalar:true)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Page load time - median",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "downward": "#2A7453",
                "upward": "#AE132D"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1765386563524,
                "baseUnit": "nanosecond",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianPageLoad_scalar",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "55": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_error\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries count = count()\n| fieldsAdd errors = arraySum(count)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Error count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "downward": "#2A7453",
                "upward": "#AE132D"
              }
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
          "query": "fetch user.events\n| filter characteristics.has_navigation \n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries Count = count()\n| fieldsAdd navigations = arraySum(Count)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Navigations",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              }
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch user.events\n| filter characteristics.has_page_summary\n\n| fieldsAdd appId = substring($Frontend, from: 0, to: indexOf($Frontend,\":\"))\n| filter $Frontend == \"*\" or dt.rum.application.entity == appId\n| filter $Page == \"*\" or page.name == $Page\n\n| makeTimeseries  \n  medianLCP = percentile(web_vitals.largest_contentful_paint,50),\n  p90LCP = percentile(web_vitals.largest_contentful_paint,90)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Largest Contentful paint",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "medianLCP",
                  "p90LCP"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "medianLCP",
                "p90LCP"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1729067308792,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "medianLCP",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1729067320067,
                "baseUnit": "nanosecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p90LCP",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "data record (v=\"*\") \n| append [\nfetch dt.entity.application\n\n| fields v=concat(id,\": \", entity.name)\n ]",
          "key": "Frontend",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "data record (v=\"*\") \n| append [\n  fetch user.events\n  | fieldsAdd appId=substring($Frontend,from:0,to:  indexOf($Frontend,\":\"))\n  | filter $Frontend==\"*\" or dt.rum.application.entity==appId\n  | fields page.name\n  | summarize c=count(),by: page.name\n  | sort c desc\n  | summarize v=collectDistinct(page.name)\n  | limit 100\n]",
          "key": "Page",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.experience.vitals.page-performance-and-errors"
  # private = false
}
