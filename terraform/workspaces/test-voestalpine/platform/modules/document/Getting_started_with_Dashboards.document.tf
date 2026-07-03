resource "dynatrace_document" "Getting_started_with_Dashboards" {
  name      = "Getting started with Dashboards"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 3,
          "w": 4,
          "x": 4,
          "y": 2
        },
        "1": {
          "h": 3,
          "w": 4,
          "x": 8,
          "y": 2
        },
        "10": {
          "h": 1,
          "w": 12,
          "x": 0,
          "y": 5
        },
        "11": {
          "h": 3,
          "w": 4,
          "x": 12,
          "y": 2
        },
        "12": {
          "h": 3,
          "w": 4,
          "x": 20,
          "y": 2
        },
        "13": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 17
        },
        "14": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "15": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "16": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 11
        },
        "17": {
          "h": 1,
          "w": 12,
          "x": 12,
          "y": 5
        },
        "18": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 10
        },
        "19": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 28
        },
        "2": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 28
        },
        "20": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 28
        },
        "21": {
          "h": 2,
          "w": 8,
          "x": 0,
          "y": 32
        },
        "22": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "23": {
          "h": 2,
          "w": 8,
          "x": 8,
          "y": 32
        },
        "24": {
          "h": 2,
          "w": 8,
          "x": 16,
          "y": 32
        },
        "25": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 22
        },
        "26": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 23
        },
        "27": {
          "h": 3,
          "w": 6,
          "x": 12,
          "y": 23
        },
        "28": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 23
        },
        "29": {
          "h": 4,
          "w": 6,
          "x": 6,
          "y": 23
        },
        "3": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 6
        },
        "30": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 17
        },
        "4": {
          "h": 3,
          "w": 4,
          "x": 0,
          "y": 2
        },
        "5": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 12
        },
        "6": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 6
        },
        "7": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 11
        },
        "8": {
          "h": 3,
          "w": 4,
          "x": 16,
          "y": 2
        },
        "9": {
          "h": 1,
          "w": 8,
          "x": 0,
          "y": 11
        }
      },
      "settings": {
        "defaultTimeframe": {
          "enabled": true,
          "value": {
            "from": "now()-2h",
            "to": "now()"
          }
        }
      },
      "tiles": {
        "0": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(timeframe = timeframe(from:now()-17h, to:now()), interval = 1h, values = array(0, 1, 0, -1, 0, 1, 0))\n| fieldsAdd icon = \"👋\"",
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
            "singleValue": {
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "icon",
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-categorical-color-03-default, #2a7453)"
                },
                "isVisible": false
              },
              "trend": {
                "isRelative": false,
                "isVisible": false
              }
            },
            "thresholds": []
          }
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(category = \"Category 1\", series = \"Series 1\", value = 10),\nrecord(category = \"Category 1\", series = \"Series 2\", value = 15),\nrecord(category = \"Category 1\", series = \"Series 3\", value = 14),\nrecord(category = \"Category 1\", series = \"Series 4\", value = 15),\nrecord(category = \"Category 1\", series = \"Series 5\", value = 13),\nrecord(category = \"Category 2\", series = \"Series 1\", value = 11),\nrecord(category = \"Category 2\", series = \"Series 2\", value = 12),\nrecord(category = \"Category 2\", series = \"Series 3\", value = 10),\nrecord(category = \"Category 2\", series = \"Series 4\", value = 15)\n// Replace the data command with fetch to get\n| summarize by:{category, series}, totalValue = sum(value)\n| sort category",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "honeycomb": {
              "colorPalette": "blue",
              "dataMappings": {
                "value": "totalValue"
              },
              "displayedFields": [
                "category"
              ],
              "legend": {
                "hidden": true
              }
            },
            "thresholds": []
          }
        },
        "10": {
          "content": "#### Spot trends",
          "type": "markdown"
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(models=42, label=\"Available AI models\")",
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
              "label": "Answer to all questions",
              "labelMode": "none",
              "recordField": "models",
              "recordLabel": "label"
            }
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data\nrecord(timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, industry = \"Finance\", spending = array(3, 4, 5, 7, 9, 12, 15, 18, 22, 27, 33, 40, 48, 57, 69,120), average=99.9)",
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
              "labelMode": "data",
              "recordField": "average",
              "recordLabel": "label",
              "sparklineSettings": {
                "color": {
                  "Default": "var(--dt-colors-charts-loglevel-alert-default, #c73d84)"
                },
                "lineType": "smooth",
                "showContextValues": true,
                "showTicks": true,
                "variant": "bar"
              },
              "trend": {
                "isVisible": false
              }
            },
            "thresholds": [
              {
                "field": "average",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-loglevel-alert-default, #c73d84)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 99
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
                "added": 1765358564026,
                "baseUnit": "count",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "average",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "query": "data\nrecord(industry = \"[Finance](https://www.google.com/search?q=Finance)\", spending_billion_usd = 68, top_driver = \"Regulatory Compliance\", downtime_reduction_percent = 45, roi_percent = 300, adoption_rate_percent = 85, timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, spending = array(2, 3, 4, 5, 7, 9, 12, 15, 18, 22, 27, 33, 40, 48, 57, 68)), // Finance\nrecord(industry = \"[Healthcare](https://www.google.com/search?q=Healthcare)\", spending_billion_usd = 50, top_driver = \"Security \u0026 Compliance\", downtime_reduction_percent = 40, roi_percent = 280, adoption_rate_percent = 75, timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, spending = array(1, 1.5, 2, 2.5, 3.5, 5, 7, 9.5, 12, 15, 19, 23, 28, 34, 41, 50)), // Healthcare spending from 2010 to 2025\nrecord(industry = \"[Tech](https://www.google.com/search?q=Tech)\", spending_billion_usd = 90, top_driver = \"AI Workloads\", downtime_reduction_percent = 50, roi_percent = 350, adoption_rate_percent = 95, timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, spending = array(3, 4, 5.5, 7, 9, 12, 16, 20, 25, 31, 38, 46, 55, 65, 76, 90)),\nrecord(industry = \"[Retail](https://www.google.com/search?q=Retail)\", spending_billion_usd = 25, top_driver = \"Seamless E-commerce\", downtime_reduction_percent = 35, roi_percent = 200, adoption_rate_percent = 70, timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, spending = array(0.8, 1, 1.2, 1.5, 2, 2.7, 3.6, 4.8, 6.3, 8, 10, 12.5, 15, 18, 21, 25)), // Retail spending from 2010 to 2025\nrecord(industry = \"[Government](https://www.google.com/search?q=Government)\", spending_billion_usd = 38, top_driver = \"Cybersecurity\", downtime_reduction_percent = 30, roi_percent = 180, adoption_rate_percent = 60, timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, spending = array(1, 1.2, 1.5, 1.8, 2.5, 3.4, 4.6, 6, 7.8, 10, 12.8, 16, 20, 25, 31, 38)), // Government spending from 2010 to 2025\nrecord(industry = \"[Education](https://www.google.com/search?q=Education)\", spending_billion_usd = 24, top_driver = \"Online Learning Growth\", downtime_reduction_percent = 25, roi_percent = 150, adoption_rate_percent = 55, timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, spending = array(0.5, 0.7, 0.9, 1.2, 1.6, 2.2, 3, 4, 5.3, 7, 9, 11.5, 14, 17, 20, 24)), // Education spending from 2010 to 2025\nrecord(industry = \"[Energy](https://www.google.com/search?q=Energy)\", spending_billion_usd = 28, top_driver = \"Critical Infrastructure\", downtime_reduction_percent = 40, roi_percent = 220, adoption_rate_percent = 65, timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, spending = array(0.6, 0.8, 1, 1.3, 1.7, 2.4, 3.2, 4.3, 5.7, 7.5, 9.8, 12.5, 15.6, 19, 23, 28)) // Energy spending from 2010 to 2025\n| fieldsAdd spending_area = cos(spending[])*-2+sin(spending[])\n| fieldsAdd spending_line = sin(spending[])*0.5+cos(22)\n| fieldsAdd spending_billion_meter = spending_billion_usd*100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Observability spent details",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "colorThresholdTarget": "background",
              "columnOrder": [
                "[\"industry\"]",
                "[\"spending_billion_usd\"]",
                "[\"spending_billion_meter\"]",
                "[\"top_driver\"]",
                "[\"downtime_reduction_percent\"]",
                "[\"roi_percent\"]",
                "[\"adoption_rate_percent\"]",
                "[\"timeframe\",\"start\"]",
                "[\"timeframe\",\"end\"]",
                "[\"interval\"]",
                "[\"spending\"]",
                "[\"spending_area\"]",
                "[\"spending_line\"]"
              ],
              "columnTypeOverrides": [
                {
                  "fields": [
                    "spending"
                  ],
                  "id": 1765360708675,
                  "value": "sparkline-bar"
                },
                {
                  "fields": [
                    "industry"
                  ],
                  "id": 499471.5,
                  "value": "markdown"
                },
                {
                  "fields": [
                    "spending_area"
                  ],
                  "id": 662291.400000006,
                  "value": "sparkline-area"
                },
                {
                  "fields": [
                    "spending_line"
                  ],
                  "id": 764474.900000006,
                  "value": "sparkline"
                },
                {
                  "fields": [
                    "adoption_rate_percent",
                    "downtime_reduction_percent",
                    "roi_percent",
                    "spending_billion_usd"
                  ],
                  "id": 1008657.1999999881,
                  "value": "number"
                },
                {
                  "fields": [
                    "spending_billion_meter"
                  ],
                  "id": 2402734.599999994,
                  "value": "meterbar"
                }
              ],
              "columnWidths": {
                "[\"downtime_reduction_percent\"]": 151.9,
                "[\"industry\"]": 135.7,
                "[\"roi_percent\"]": 59.8,
                "[\"spending_billion_meter\"]": 119,
                "[\"spending_billion_usd\"]": 134.09
              },
              "hiddenColumns": [
                [
                  "timeframe"
                ],
                [
                  "timeframe",
                  "start"
                ],
                [
                  "timeframe",
                  "end"
                ],
                [
                  "interval"
                ]
              ],
              "hideColumnsForLargeResults": false
            },
            "thresholds": [
              {
                "field": "adoption_rate_percent",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-01-default, #006650)"
                    },
                    "comparator": "≤",
                    "id": 0,
                    "label": "",
                    "value": 100
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                    },
                    "comparator": "≤",
                    "id": 1,
                    "label": "",
                    "value": 80
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-loglevel-alert-default, #c73d84)"
                    },
                    "comparator": "≤",
                    "id": 2,
                    "label": "",
                    "value": 65
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1765460301238,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "downtime_reduction_percent",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1765460301814,
                "baseUnit": "none",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "spending_area",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1765460302296,
                "baseUnit": "percent",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "adoption_rate_percent",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "14": {
          "content": "#### Drill into raw data",
          "type": "markdown"
        },
        "15": {
          "content": "### Get started with Dashboards\nExplore the examples below to get inspired for your visualizations, search the `+` menu for more options, or jump-start your dashboard creation with one of our [ready-made dashboards](/ui/apps/dynatrace.dashboards/dashboards?activeTab=ready-made).",
          "type": "markdown"
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data\nrecord(industry = \"Finance\", adoption_rate_percent = 88, roi_percent = 300, downtime_reduction_percent = 45),\nrecord(industry = \"Healthcare\", adoption_rate_percent = 75, roi_percent = 280, downtime_reduction_percent = 40),\nrecord(industry = \"Tech\", adoption_rate_percent = 95, roi_percent = 350, downtime_reduction_percent = 50),\nrecord(industry = \"Retail\", adoption_rate_percent = 73, roi_percent = 200, downtime_reduction_percent = 35),\nrecord(industry = \"Government\", adoption_rate_percent = 51, roi_percent = 180, downtime_reduction_percent = 30),\nrecord(industry = \"Education\", adoption_rate_percent = 64, roi_percent = 150, downtime_reduction_percent = 25),\nrecord(industry = \"Energy\", adoption_rate_percent = 65, roi_percent = 220, downtime_reduction_percent = 40)\n| fieldsRename `Cloud adoption`=adoption_rate_percent\n| fieldsRename `Return on invest (ROI)`=roi_percent\n| fieldsRename `Downtime reduction`=downtime_reduction_percent\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Cloud migration statistics by industry",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "industry"
                ]
              },
              "legend": {
                "position": "bottom"
              }
            },
            "legend": {
              "ratio": 17
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1765376387856,
                "baseUnit": "percent",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Downtime reduction",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1765376388340,
                "baseUnit": "percent",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Return on invest (ROI)",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1765376388799,
                "baseUnit": "percent",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Cloud adoption",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "17": {
          "content": "#### Analyze relationships",
          "type": "markdown"
        },
        "18": {
          "content": "#### Track progress",
          "type": "markdown"
        },
        "19": {
          "content": "##### Discuss\n[![Dynatrace community image](https://dt-cdn.net/images/screenshot-2025-12-11-at-09-42-14-1311-2b7fb8c16b.webp)](https://dt-url.net/dashboards-community-faq)\n",
          "type": "markdown"
        },
        "2": {
          "content": "##### Read\n[![Dashboard documentation image](https://dt-cdn.net/images/screenshot-2025-12-11-at-09-41-06-1309-e8d68fc043.webp)](https://dt-url.net/dashboards)",
          "type": "markdown"
        },
        "20": {
          "content": "##### Watch\n[![YouTube Dynatrace channel for dashboards image](https://dt-cdn.net/images/screenshot-2025-12-11-at-10-20-02-1324-1b5ab8a6a5.webp)](https://dt-url.net/dashboards-youtube-channel)\n",
          "type": "markdown"
        },
        "21": {
          "content": "- [Documentation](https://dt-url.net/dashboards)\n- [Dynatrace University](https://dt-url.net/dynatrace-university)",
          "type": "markdown"
        },
        "22": {
          "content": "#### Learn more",
          "type": "markdown"
        },
        "23": {
          "content": "- [Dynatrace YouTube channel](https://dt-url.net/dashboards-youtube-channel)\n\n",
          "type": "markdown"
        },
        "24": {
          "content": "- [Community Q\u0026A](https://dt-url.net/dashboards-community-faq)\n- [Community feedback channel](https://dt-url.net/dashboards-feedback-channel)\n\n\n\n",
          "type": "markdown"
        },
        "25": {
          "content": "#### Explore more",
          "type": "markdown"
        },
        "26": {
          "content": "##### Try our Playground examples\n[Graph](https://dt-url.net/dashboards-playground-graph), [Single value](https://dt-url.net/dashboards-playground-single-value), [Table](https://dt-url.net/dashboards-playground-table), [Gauge and Meterbar](https://dt-url.net/dashboards-playground-gauge-meterbar), [Pie and Donut](https://dt-url.net/dashboards-playground-pie), [Categorical bar chart](https://dt-url.net/dashboards-playground-categorical), [Honeycomb](https://dt-url.net/dashboards-playground-honeycomb), [Maps (Choropleth, Dot, Bubble)](https://dt-url.net/dashboards-playground-maps), [Heatmap](https://dt-url.net/dashboards-playground-heatmap), [Scatterplot \u0026 Histogram](https://dt-url.net/dashboards-playground-scatterplot-and-histogram), [Treemap](https://dt-url.net/dashboards-playground-treemap), [Formats and colors](https://dt-url.net/dashboards-playground-formats-and-color), [Variables](https://dt-url.net/dashboards-playground-variables), [Annotations](https://dt-url.net/dashboards-playground-annotations)",
          "type": "markdown"
        },
        "27": {
          "content": "[![Playground examples image](https://dt-cdn.net/images/screenshot-2025-12-11-at-09-41-38-1311-7821daf139.webp)](https://dt-url.net/dashboards-playground-graph)",
          "type": "markdown"
        },
        "28": {
          "content": "[![Ready-made dashboards playground](https://dt-cdn.net/images/dashboards-dynatrace-playground-dynatrace-3024-fcee702f16.webp)](/ui/apps/dynatrace.dashboards/dashboards?activeTab=ready-made)\n",
          "type": "markdown"
        },
        "29": {
          "content": "##### Jump-start with Ready-made dashboards!\nUse preconfigured visualizations and filters for common scenarios such as troubleshooting or performance optimization right away. \n\n[Ready-made dashboards](/ui/apps/dynatrace.dashboards/dashboards?activeTab=ready-made)",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data \nrecord(timeframe=timeframe(from:toTimestamp(\"2005-02-02T00:00:00.000-0400\"),to:toTimestamp(\"2005-02-02T23:59:59.999-0400\")),interval=1h,series=\"Sin 1\",value=array(0, 0.13, 0.26, 0.38, 0.5, 0.61, 0.71, 0.81, 0.9, 0.98, 1, 0.98, 0.9, 0.81, 0.71, 0.61, 0.5, 0.38, 0.26, 0.13, 0, -0.13, -0.26, -0.38, -0.5, -0.61, -0.71, -0.81, -0.9, -0.98, -1, -0.98, -0.9, -0.81, -0.71, -0.61, -0.5, -0.38, -0.26, -0.13, 0, 0.13, 0.26, 0.38, 0.5, 0.61, 0.71, 0.81, 0.9, 0.98, 1, 0.98, 0.9, 0.81, 0.71, 0.61, 0.5, 0.38, 0.26, 0.13, 0, -0.13, -0.26, -0.38, -0.5, -0.61, -0.71, -0.81, -0.9, -0.98, -1, -0.98, -0.9, -0.81, -0.71, -0.61, -0.5, -0.38, -0.26, -0.13, 0, 0.13, 0.26, 0.38, 0.5, 0.61, 0.71, 0.81)),\nrecord(timeframe=timeframe(from:toTimestamp(\"2005-02-02T02:00:00.000-0400\"),to:toTimestamp(\"2005-02-02T23:59:59.999-0400\")),interval=1h,series=\"Sin 2\",value=array(0.05, 0.18, 0.31, 0.43, 0.55, 0.66, 0.76, 0.86, 0.95, 1.03, 1.05, 1.03, 0.95, 0.86, 0.76, 0.66, 0.55, 0.43, 0.31, 0.18, 0.05, -0.08, -0.21, -0.33, -0.45, -0.56, -0.66, -0.76, -0.85, -0.93, -0.95, -0.93, -0.85, -0.76, -0.66, -0.56, -0.45, -0.33, -0.21, -0.08, 0.05, 0.18, 0.31, 0.43, 0.55, 0.66, 0.76, 0.86,0.95, 1.03, 1.05, 1.03, 0.95, 0.86, 0.76, 0.66, 0.55, 0.43, 0.31, 0.18, 0.05, -0.08, -0.21, -0.33, -0.45, -0.56, -0.66, -0.76, -0.85, -0.93, -0.95, -0.93, -0.85, -0.76, -0.66, -0.56, -0.45, -0.33, -0.21, -0.08, 0.05, 0.18, 0.31, 0.43, 0.55, 0.66, 0.76, 0.86)),\nrecord(timeframe=timeframe(from:toTimestamp(\"2005-02-02T04:00:00.000-0400\"),to:toTimestamp(\"2005-02-02T23:59:59.999-0400\")),interval=1h,series=\"Sin 3\",value=array(0.1, 0.23, 0.36, 0.48, 0.6, 0.71, 0.81, 0.91, 1, 1.08, 1.1, 1.08, 1, 0.91, 0.81, 0.71, 0.6, 0.48, 0.36, 0.23, 0.1, -0.03, -0.16, -0.28, -0.4, -0.51, -0.61, -0.71, -0.8, -0.88, -0.9, -0.88, -0.8, -0.71, -0.61, -0.51, -0.4, -0.28, -0.16, -0.03, 0.1, 0.23, 0.36, 0.48, 0.6, 0.71, 0.81, 0.91,1, 1.08, 1.1, 1.08, 1, 0.91, 0.81, 0.71, 0.6, 0.48, 0.36, 0.23, 0.1, -0.03, -0.16, -0.28, -0.4, -0.51, -0.61, -0.71, -0.8, -0.88, -0.9, -0.88, -0.8, -0.71, -0.61, -0.51, -0.4, -0.28, -0.16, -0.03, 0.1, 0.23, 0.36, 0.48, 0.6, 0.71, 0.81, 0.91)),\nrecord(timeframe=timeframe(from:toTimestamp(\"2005-02-02T06:00:00.000-0400\"),to:toTimestamp(\"2005-02-02T23:59:59.999-0400\")),interval=1h,series=\"Sin 4\",value=array(0.15, 0.28, 0.41, 0.53, 0.65, 0.76, 0.86, 0.96, 1.05, 1.13, 1.15, 1.13, 1.05, 0.96, 0.86, 0.76, 0.65, 0.53, 0.41, 0.28, 0.15, 0.02, -0.11, -0.23, -0.35, -0.46, -0.56, -0.66, -0.75, -0.83, -0.85, -0.83, -0.75, -0.66, -0.56, -0.46, -0.35, -0.23, -0.11, 0.02, 0.15, 0.28, 0.41, 0.53, 0.65, 0.76, 0.86, 0.96, 1.05, 1.13, 1.15, 1.13, 1.05, 0.96, 0.86, 0.76, 0.65, 0.53, 0.41, 0.28, 0.15, 0.02, -0.11, -0.23, -0.35, -0.46, -0.56, -0.66, -0.75, -0.83, -0.85, -0.83, -0.75, -0.66, -0.56, -0.46, -0.35, -0.23, -0.11, 0.02, 0.15, 0.28, 0.41, 0.53, 0.65, 0.76, 0.86, 0.96)),\nrecord(timeframe=timeframe(from:toTimestamp(\"2005-02-02T08:00:00.000-0400\"),to:toTimestamp(\"2005-02-02T23:59:59.999-0400\")),interval=1h,series=\"Sin 5\",value=array(0.2, 0.33, 0.46, 0.58, 0.7, 0.81, 0.91, 1.01, 1.1, 1.18, 1.2, 1.18, 1.1, 1.01, 0.91, 0.81, 0.7, 0.58, 0.46, 0.33, 0.2, 0.07, -0.06, -0.18, -0.3, -0.41, -0.51, -0.61, -0.7, -0.78, -0.8, -0.78, -0.7, -0.61, -0.51, -0.41, -0.3, -0.18, -0.06, 0.07, 0.2, 0.33, 0.46, 0.58, 0.7, 0.81, 0.91, 1.01,1.1, 1.18, 1.2, 1.18, 1.1, 1.01, 0.91, 0.81, 0.7, 0.58, 0.46, 0.33, 0.2, 0.07, -0.06, -0.18, -0.3, -0.41, -0.51, -0.61, -0.7, -0.78, -0.8, -0.78, -0.7, -0.61, -0.51, -0.41, -0.3, -0.18, -0.06, 0.07, 0.2, 0.33, 0.46, 0.58, 0.7, 0.81, 0.91, 1.01)),\nrecord(timeframe=timeframe(from:toTimestamp(\"2005-02-02T10:00:00.000-0400\"),to:toTimestamp(\"2005-02-02T23:59:59.999-0400\")),interval=1h,series=\"Sin 6\",value=array(0.25, 0.38, 0.51, 0.63, 0.75, 0.86, 0.96, 1.06, 1.15, 1.23, 1.25, 1.23, 1.15, 1.06, 0.96, 0.86, 0.75, 0.63, 0.51, 0.38, 0.25, 0.12, -0.01, -0.13, -0.25, -0.36, -0.46, -0.56, -0.65, -0.73, -0.75, -0.73, -0.65, -0.56, -0.46, -0.36, -0.25, -0.13, -0.01, 0.12, 0.25, 0.38, 0.51, 0.63, 0.75, 0.86, 0.96, 1.06,1.15, 1.23, 1.25, 1.23, 1.15, 1.06, 0.96, 0.86, 0.75, 0.63, 0.51, 0.38, 0.25, 0.12, -0.01, -0.13, -0.25, -0.36, -0.46, -0.56, -0.65, -0.73, -0.75, -0.73, -0.65, -0.56, -0.46, -0.36, -0.25, -0.13, -0.01, 0.12, 0.25, 0.38, 0.51, 0.63, 0.75, 0.86, 0.96, 1.06)),\nrecord(timeframe=timeframe(from:toTimestamp(\"2005-02-02T12:00:00.000-0400\"),to:toTimestamp(\"2005-02-02T23:59:59.999-0400\")),interval=1h,series=\"Sin 7\",value=array(0.3, 0.43, 0.56, 0.68, 0.8, 0.91, 1.01, 1.11, 1.2, 1.28, 1.3, 1.28, 1.2, 1.11, 1.01, 0.91, 0.8, 0.68, 0.56, 0.43, 0.3, 0.17, 0.04, -0.08, -0.2, -0.31, -0.41, -0.51, -0.6, -0.68, -0.7, -0.68, -0.6, -0.51, -0.41, -0.31, -0.2, -0.08, 0.04, 0.17, 0.3, 0.43, 0.56, 0.68, 0.8, 0.91, 1.01, 1.11,1.2, 1.28, 1.3, 1.28, 1.2, 1.11, 1.01, 0.91, 0.8, 0.68, 0.56, 0.43, 0.3, 0.17, 0.04, -0.08, -0.2, -0.31, -0.41, -0.51, -0.6, -0.68, -0.7, -0.68, -0.6, -0.51, -0.41, -0.31, -0.2, -0.08, 0.04, 0.17, 0.3, 0.43, 0.56, 0.68, 0.8, 0.91, 1.01, 1.11)),\nrecord(timeframe=timeframe(from:toTimestamp(\"2005-02-02T14:00:00.000-0400\"),to:toTimestamp(\"2005-02-02T23:59:59.999-0400\")),interval=1h,series=\"Sin 8\",value=array(0.35, 0.48, 0.61, 0.73, 0.85, 0.96, 1.06, 1.16, 1.25, 1.33, 1.35, 1.33, 1.25, 1.16, 1.06, 0.96, 0.85, 0.73, 0.61, 0.48, 0.35, 0.22, 0.09, -0.03, -0.15, -0.26, -0.36, -0.46, -0.55, -0.63, -0.65, -0.63, -0.55, -0.46, -0.36, -0.26, -0.15, -0.03, 0.09, 0.22, 0.35, 0.48, 0.61, 0.73, 0.85, 0.96, 1.06, 1.16,1.25, 1.33, 1.35, 1.33, 1.25, 1.16, 1.06, 0.96, 0.85, 0.73, 0.61, 0.48, 0.35, 0.22, 0.09, -0.03, -0.15, -0.26, -0.36, -0.46, -0.55, -0.63, -0.65, -0.63, -0.55, -0.46, -0.36, -0.26, -0.15, -0.03, 0.09, 0.22, 0.35, 0.48, 0.61, 0.73, 0.85, 0.96, 1.06, 1.16))\n//record(timeframe=timeframe(from:toTimestamp(\"2005-02-02T16:00:00.000-0400\"),to:toTimestamp(\"2005-02-02T23:59:59.999-0400\")),interval=1h,series=\"Sin 9\",value=array(0.4, 0.53, 0.66, 0.78, 0.9, 1.01, 1.11, 1.21, 1.3, 1.38, 1.4, 1.38, 1.3, 1.21, 1.11, 1.01, 0.9, 0.78, 0.66, 0.53, 0.4, 0.27, 0.14, 0.01, -0.1, -0.21, -0.31, -0.41, -0.5, -0.58, -0.6, -0.58, -0.5, -0.41, -0.31, -0.21, -0.1, 0.01, 0.14, 0.27, 0.4, 0.53, 0.66, 0.78, 0.9, 1.01, 1.11, 1.21,1.3, 1.38, 1.4, 1.38, 1.3, 1.21, 1.11, 1.01, 0.9, 0.78, 0.66, 0.53, 0.4, 0.27, 0.14, 0.01, -0.1, -0.21, -0.31, -0.41, -0.5, -0.58, -0.6, -0.58, -0.5, -0.41, -0.31, -0.21, -0.1, 0.01, 0.14, 0.27, 0.4, 0.53, 0.66, 0.78, 0.9, 1.01, 1.11, 1.21)),\n//record(timeframe=timeframe(from:toTimestamp(\"2005-02-02T18:00:00.000-0400\"),to:toTimestamp(\"2005-02-02T23:59:59.999-0400\")),interval=1h,series=\"Sin 10\",value=array(0.45, 0.58, 0.71, 0.83, 0.95, 1.06, 1.16, 1.26, 1.35, 1.43, 1.45, 1.43, 1.35, 1.26, 1.16, 1.06, 0.95, 0.83, 0.71, 0.58, 0.45, 0.32, 0.19, 0.06, -0.05, -0.16, -0.26, -0.36, -0.45, -0.53, -0.55, -0.53, -0.45, -0.36, -0.26, -0.16, -0.05, 0.06, 0.19, 0.32, 0.45, 0.58, 0.71, 0.83, 0.95, 1.06, 1.16, 1.26,1.35, 1.43, 1.45, 1.43, 1.35, 1.26, 1.16, 1.06, 0.95, 0.83, 0.71, 0.58, 0.45, 0.32, 0.19, 0.06, -0.05, -0.16, -0.26, -0.36, -0.45, -0.53, -0.55, -0.53, -0.45, -0.36, -0.26, -0.16, -0.05, 0.06, 0.19, 0.32, 0.45, 0.58, 0.71, 0.83, 0.95, 1.06, 1.16, 1.26))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Trends in motion",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "value"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "legend": {
                "hidden": true
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-11-default, #627cfe)"
                    }
                  },
                  "seriesId": [
                    "Sin 1"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    }
                  },
                  "seriesId": [
                    "Sin 2"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-15-default, #9033a3)"
                    }
                  },
                  "seriesId": [
                    "Sin 3"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-08-default, #8b6ecf)"
                    }
                  },
                  "seriesId": [
                    "Sin 4"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-04-default, #d85a9f)"
                    }
                  },
                  "seriesId": [
                    "Sin 5"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-vulnerability-status-resolved-default, #3e8e6a)"
                    }
                  },
                  "seriesId": [
                    "Sin 6"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-03-default, #2a7453)"
                    }
                  },
                  "seriesId": [
                    "Sin 7"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-themed-swamps-color-01-default, #006650)"
                    }
                  },
                  "seriesId": [
                    "Sin 8"
                  ]
                }
              ],
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data\nrecord(page = \"/product\", action = \"/product/detail\", requests = 3221),\nrecord(page = \"/product\", action = \"/product/reviews\", requests = 1580),\nrecord(page = \"/product\", action = \"/product/images\", requests = 1120),\nrecord(page = \"/product\", action = \"/product/add-to-cart\", requests = 870),\nrecord(page = \"/product\", action = \"/product/compare\", requests = 340),\nrecord(page = \"/cart\", action = \"/cart/view\", requests = 1450),\nrecord(page = \"/cart\", action = \"/cart/update\", requests = 620),\nrecord(page = \"/cart\", action = \"/cart/remove\", requests = 310),\nrecord(page = \"/checkout\", action = \"/checkout/shipping\", requests = 890),\nrecord(page = \"/checkout\", action = \"/checkout/payment\", requests = 720),\nrecord(page = \"/checkout\", action = \"/checkout/confirm\", requests = 407),\nrecord(page = \"/home\", action = \"/home/landing\", requests = 4100),\nrecord(page = \"/home\", action = \"/home/banner-click\", requests = 1250),\nrecord(page = \"/home\", action = \"/home/featured\", requests = 980),\nrecord(page = \"/search\", action = \"/search/query\", requests = 2200),\nrecord(page = \"/search\", action = \"/search/filter\", requests = 1340),\nrecord(page = \"/search\", action = \"/search/sort\", requests = 560),\nrecord(page = \"/account\", action = \"/account/profile\", requests = 680),\nrecord(page = \"/account\", action = \"/account/orders\", requests = 540),\nrecord(page = \"/account\", action = \"/account/settings\", requests = 290),\nrecord(page = \"/account\", action = \"/account/wishlist\", requests = 410)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "User interactions by page and action",
          "type": "data",
          "visualization": "treemap",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "nodes": "action"
            },
            "legend": {
              "showLegend": false
            }
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data \nrecord(timeframe = timeframe(from:now()-17h, to:now()), interval = 1h, values = array(0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0), name = \"sin1\"),\nrecord(timeframe = timeframe(from:now()-18h, to:now()-1h), interval = 1h, values = array(0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0), name = \"sin2\"),\nrecord(timeframe = timeframe(from:now()-19h, to:now()-2h), interval = 1h, values = array(0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0), name = \"sin3\"),\nrecord(timeframe = timeframe(from:now()-19h, to:now()-3h), interval = 1h, values = array(0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0, 1, 0, -1, 0), name = \"sin4\")",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-2h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "name",
                "categoryAxisLabel": "name",
                "valueAxis": "interval",
                "valueAxisLabel": "interval"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "legend": {
                "hidden": true
              }
            },
            "thresholds": []
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data\n    record(length_km = 5.891, length_miles = 3.660, most_wins = \"Lewis Hamilton\", country = \"United Kingdom\", track_name = \"Silverstone Circuit\", first_race_year = 1950, best_lap_time = \"1:27.097\", best_overall_time = \"1:37:15.735\", latitude = 52.071, longitude = -1.016), // Silverstone Circuit, UK\n    record(length_km = 7.004, length_miles = 4.352, most_wins = \"Michael Schumacher\", country = \"Belgium\", track_name = \"Circuit de Spa-Francorchamps\", first_race_year = 1950, best_lap_time = \"1:46.286\", best_overall_time = \"1:25:22.601\", latitude = 50.437222, longitude = 5.971389), // Spa-Francorchamps, Belgium\n    record(length_km = 4.381, length_miles = 2.722, most_wins = \"Lewis Hamilton\", country = \"Hungary\", track_name = \"Hungaroring\", first_race_year = 1986, best_lap_time = \"1:16.627\", best_overall_time = \"1:35:21.231\", latitude = 47.578889, longitude = 19.248611), // Hungaroring, Hungary\n    record(length_km = 5.793, length_miles = 3.600, most_wins = \"Michael Schumacher\", country = \"Italy\", track_name = \"Autodromo Nazionale Monza\", first_race_year = 1950, best_lap_time = \"1:21.046\", best_overall_time = \"1:13:24.325\", latitude = 45.620556, longitude = 9.289444), // Monza, Italy\n    record(length_km = 6.003, length_miles = 3.730, most_wins = \"Lewis Hamilton\", country = \"Azerbaijan\", track_name = \"Baku City Circuit\", first_race_year = 2016, best_lap_time = \"1:43.009\", best_overall_time = \"1:33:26.408\", latitude = 40.3725, longitude = 49.853333), // Baku City Circuit, Azerbaijan\n    record(length_km = 5.063, length_miles = 3.146, most_wins = \"Sebastian Vettel\", country = \"Singapore\", track_name = \"Marina Bay Street Circuit\", first_race_year = 2008, best_lap_time = \"1:41.905\", best_overall_time = \"1:58:33.667\", latitude = 1.291403, longitude = 103.864147), // Marina Bay, Singapore\n    record(length_km = 5.513, length_miles = 3.426, most_wins = \"Lewis Hamilton\", country = \"United States\", track_name = \"Circuit of the Americas\", first_race_year = 2012, best_lap_time = \"1:36.169\", best_overall_time = \"1:34:21.295\", latitude = 30.132778, longitude = -97.641111), // Circuit of the Americas, USA\n    record(length_km = 4.304, length_miles = 2.674, most_wins = \"Max Verstappen\", country = \"Mexico\", track_name = \"Autódromo Hermanos Rodríguez\", first_race_year = 1963, best_lap_time = \"1:17.774\", best_overall_time = \"1:36:54.645\", latitude = 19.404167, longitude = -99.090833), // Autódromo Hermanos Rodríguez, Mexico\n    record(length_km = 4.309, length_miles = 2.677, most_wins = \"Michael Schumacher\", country = \"Brazil\", track_name = \"Autódromo José Carlos Pace\", first_race_year = 1973, best_lap_time = \"1:10.540\", best_overall_time = \"1:31:26.262\", latitude = -23.703611, longitude = -46.699722), // Interlagos, Brazil\n    record(length_km = 6.201, length_miles = 3.853, most_wins = \"Max Verstappen\", country = \"United States\", track_name = \"Las Vegas Grand Prix\", first_race_year = 2023, best_lap_time = \"1:34.015\", best_overall_time = \"1:40:33.843\", latitude = 36.1699, longitude = -115.1398), // Las Vegas, USA\n    record(length_km = 5.419, length_miles = 3.367, most_wins = \"Lewis Hamilton\", country = \"Qatar\", track_name = \"Lusail International Circuit\", first_race_year = 2021, best_lap_time = \"1:20.827\", best_overall_time = \"1:28:33.667\", latitude = 25.490833, longitude = 51.454167), // Lusail Circuit, Qatar\n    record(length_km = 4.326, length_miles = 2.688, most_wins = \"Max Verstappen\", country = \"Austria\", track_name = \"Red Bull Ring\", first_race_year = 1970, best_lap_time = \"1:07.924\", best_overall_time = \"1:23:47.693\", latitude = 47.219722, longitude = 14.764722), // Red Bull Ring, Austria\n    record(length_km = 5.451, length_miles = 3.388, most_wins = \"Lewis Hamilton\", country = \"Japan\", track_name = \"Suzuka Circuit\", first_race_year = 1987, best_lap_time = \"1:30.983\", best_overall_time = \"1:38:22.052\", latitude = 34.843056, longitude = 136.540556), // Suzuka Circuit, Japan\n    record(length_km = 5.412, length_miles = 3.364, most_wins = \"Lewis Hamilton\", country = \"China\", track_name = \"Shanghai International Circuit\", first_race_year = 2004, best_lap_time = \"1:32.238\", best_overall_time = \"1:34:06.078\", latitude = 31.338889, longitude = 121.219722), // Shanghai International Circuit, China\n    record(length_km = 5.412, length_miles = 3.364, most_wins = \"Max Verstappen\", country = \"Australia\", track_name = \"Albert Park Circuit\", first_race_year = 1996, best_lap_time = \"1:19.813\", best_overall_time = \"1:33:43.734\", latitude = -37.849722, longitude = 144.968333), // Albert Park Circuit, Australia\n    record(length_km = 6.175, length_miles = 3.837, most_wins = \"Ayrton Senna\", country = \"Monaco\", track_name = \"Circuit de Monaco\", first_race_year = 1950, best_lap_time = \"1:14.820\", best_overall_time = \"1:50:13.436\", latitude = 43.734722, longitude = 7.420556), // Circuit de Monaco, Monaco\n    record(length_km = 5.412, length_miles = 3.364, most_wins = \"Sebastian Vettel\", country = \"Malaysia\", track_name = \"Sepang International Circuit\", first_race_year = 1999, best_lap_time = \"1:34.080\", best_overall_time = \"1:37:19.025\", latitude = 2.760556, longitude = 101.7375), // Sepang International Circuit, Malaysia\n    record(length_km = 5.412, length_miles = 3.364, most_wins = \"Max Verstappen\", country = \"Saudi Arabia\", track_name = \"Jeddah Corniche Circuit\", first_race_year = 2021, best_lap_time = \"1:27.511\", best_overall_time = \"1:39:47.567\", latitude = 21.631944, longitude = 39.104167), // Jeddah, Saudi Arabia\n    record(length_km = 4.259, length_miles = 2.647, most_wins = \"Max Verstappen\", country = \"Netherlands\", track_name = \"Circuit Zandvoort\", first_race_year = 1952, best_lap_time = \"1:11.097\", best_overall_time = \"1:30:05.395\", latitude = 52.388889, longitude = 4.540278), // Circuit Zandvoort, Netherlands\n    record(length_km = 5.412, length_miles = 3.364, most_wins = \"Lewis Hamilton\", country = \"France\", track_name = \"Paul Ricard Circuit\", first_race_year = 1971, best_lap_time = \"1:32.740\", best_overall_time = \"1:34:17.567\", latitude = 43.250556, longitude = 5.791667), // Paul Ricard Circuit, France\n    record(length_km = 4.655, length_miles = 2.893, most_wins = \"Michael Schumacher\", country = \"Germany\", track_name = \"Hockenheimring\", first_race_year = 1970, best_lap_time = \"1:13.780\", best_overall_time = \"1:30:47.456\", latitude = 49.327778, longitude = 8.565833), // Hockenheimring, Germany\n    record(length_km = 4.381, length_miles = 2.722, most_wins = \"Lewis Hamilton\", country = \"Canada\", track_name = \"Circuit Gilles Villeneuve\", first_race_year = 1978, best_lap_time = \"1:13.078\", best_overall_time = \"1:35:22.456\", latitude = 45.505833, longitude = -73.526667), // Circuit Gilles Villeneuve, Canada\n    record(length_km = 5.148, length_miles = 3.199, most_wins = \"Lewis Hamilton\", country = \"Spain\", track_name = \"Circuit de Barcelona-Catalunya\", first_race_year = 1991, best_lap_time = \"1:18.149\", best_overall_time = \"1:32:23.567\", latitude = 41.57, longitude = 2.261111), // Circuit de Barcelona-Catalunya, Spain\n    record(length_km = 6.003, length_miles = 3.730, most_wins = \"Lewis Hamilton\", country = \"United Arab Emirates\", track_name = \"Yas Marina Circuit\", first_race_year = 2009, best_lap_time = \"1:39.283\", best_overall_time = \"1:34:21.295\", latitude = 24.467222, longitude = 54.603056) // Yas Marina Circuit, Abu Dhabi\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "F1 races",
          "type": "data",
          "visualization": "dotMap",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "dataMapping": {
              "displayedFields": [
                "most_wins",
                "country",
                "track_name",
                "best_lap_time",
                "best_overall_time",
                "length_km",
                "length_miles",
                "first_race_year"
              ]
            },
            "emoji": "🏁",
            "mapShape": {
              "shapeStyle": "emoji"
            },
            "tooltip": {
              "showCustomFields": true
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
          "query": "data\nrecord(country = \"Finland\", coffee_cups_per_day = 4.5, commits_per_month = 120), // Finland\nrecord(country = \"Sweden\", coffee_cups_per_day = 3.8, commits_per_month = 115), // Sweden\nrecord(country = \"Norway\", coffee_cups_per_day = 4.1, commits_per_month = 118), // Norway\nrecord(country = \"Denmark\", coffee_cups_per_day = 3.9, commits_per_month = 112), // Denmark\nrecord(country = \"Netherlands\", coffee_cups_per_day = 2.9, commits_per_month = 110), // Netherlands\nrecord(country = \"Switzerland\", coffee_cups_per_day = 3.6, commits_per_month = 100), // Switzerland\nrecord(country = \"Germany\", coffee_cups_per_day = 3.0, commits_per_month = 95), // Germany\nrecord(country = \"France\", coffee_cups_per_day = 3.1, commits_per_month = 92), // France\nrecord(country = \"Italy\", coffee_cups_per_day = 3.5, commits_per_month = 85), // Italy\nrecord(country = \"United Kingdom\", coffee_cups_per_day = 2.9, commits_per_month = 98), // United Kingdom\nrecord(country = \"United States\", coffee_cups_per_day = 3.2, commits_per_month = 100), // United States\nrecord(country = \"Canada\", coffee_cups_per_day = 2.7, commits_per_month = 105), // Canada\nrecord(country = \"Australia\", coffee_cups_per_day = 2.6, commits_per_month = 88), // Australia\nrecord(country = \"New Zealand\", coffee_cups_per_day = 2.8, commits_per_month = 90), // New Zealand\nrecord(country = \"Israel\", coffee_cups_per_day = 3.4, commits_per_month = 105), // Israel\nrecord(country = \"Japan\", coffee_cups_per_day = 2.0, commits_per_month = 90), // Japan\nrecord(country = \"South Korea\", coffee_cups_per_day = 1.2, commits_per_month = 85), // South Korea\nrecord(country = \"China\", coffee_cups_per_day = 0.8, commits_per_month = 70), // China\nrecord(country = \"India\", coffee_cups_per_day = 1.5, commits_per_month = 80), // India\nrecord(country = \"Brazil\", coffee_cups_per_day = 2.8, commits_per_month = 92), // Brazil\nrecord(country = \"Argentina\", coffee_cups_per_day = 1.9, commits_per_month = 78), // Argentina\nrecord(country = \"Mexico\", coffee_cups_per_day = 1.6, commits_per_month = 75), // Mexico\nrecord(country = \"Colombia\", coffee_cups_per_day = 2.5, commits_per_month = 85), // Colombia\nrecord(country = \"South Africa\", coffee_cups_per_day = 1.4, commits_per_month = 72), // South Africa\nrecord(country = \"Russia\", coffee_cups_per_day = 2.5, commits_per_month = 90), // Russia\nrecord(country = \"Poland\", coffee_cups_per_day = 2.3, commits_per_month = 88), // Poland\nrecord(country = \"Czech Republic\", coffee_cups_per_day = 2.4, commits_per_month = 90), // Czech Republic\nrecord(country = \"Turkey\", coffee_cups_per_day = 1.8, commits_per_month = 80), // Turkey\nrecord(country = \"Indonesia\", coffee_cups_per_day = 0.7, commits_per_month = 65), // Indonesia\nrecord(country = \"Vietnam\", coffee_cups_per_day = 0.9, commits_per_month = 68), // Vietnam\nrecord(country = \"Thailand\", coffee_cups_per_day = 0.6, commits_per_month = 60), // Thailand\nrecord(country = \"Malaysia\", coffee_cups_per_day = 0.8, commits_per_month = 65), // Malaysia\nrecord(country = \"Singapore\", coffee_cups_per_day = 1.8, commits_per_month = 88), // Singapore\nrecord(country = \"Philippines\", coffee_cups_per_day = 0.9, commits_per_month = 62), // Philippines\nrecord(country = \"Chile\", coffee_cups_per_day = 1.7, commits_per_month = 82), // Chile\nrecord(country = \"Peru\", coffee_cups_per_day = 1.5, commits_per_month = 75), // Peru\nrecord(country = \"Ethiopia\", coffee_cups_per_day = 1.2, commits_per_month = 70), // Ethiopia\nrecord(country = \"Kenya\", coffee_cups_per_day = 1.1, commits_per_month = 72), // Kenya\nrecord(country = \"Ghana\", coffee_cups_per_day = 0.9, commits_per_month = 65), // Ghana\nrecord(country = \"Nigeria\", coffee_cups_per_day = 0.7, commits_per_month = 60), // Nigeria\nrecord(country = \"Austria\", coffee_cups_per_day = 3.2, commits_per_month = 95) // Austria\n| fieldsAdd sortOrder = (commits_per_month*coffee_cups_per_day)\n| sort sortOrder desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Coffee cups vs. Git commits per day",
          "type": "data",
          "visualization": "scatterplot",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "axes": {
              "xAxis": {
                "label": "Coffee cups",
                "showLabel": true
              },
              "yAxis": {
                "label": "Ccommits",
                "min": {
                  "mode": "custom",
                  "value": 40
                },
                "showLabel": true
              }
            }
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data\nrecord(timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, industry = \"Finance\", spending = array(2.0, 3.0, 4.0, 5.0, 7.0, 9.0, 12.0, 15.0, 18.0, 22.0, 27.0, 33.0, 40.0, 48.0, 57.0, 68.0)), // Finance spending from 2010 to 2025 (in billion USD)\nrecord(timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, industry = \"Healthcare\", spending = array(1.0, 1.5, 2.0, 2.5, 3.5, 5.0, 7.0, 9.5, 12.0, 15.0, 19.0, 23.0, 28.0, 34.0, 41.0, 50.0)), // Healthcare spending from 2010 to 2025\nrecord(timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, industry = \"Tech\", spending = array(3.0, 4.0, 5.5, 7.0, 9.0, 12.0, 16.0, 20.0, 25.0, 31.0, 38.0, 46.0, 55.0, 65.0, 76.0, 90.0)), // Tech spending from 2010 to 2025\nrecord(timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, industry = \"Retail\", spending = array(0.8, 1.0, 1.2, 1.5, 2.0, 2.7, 3.6, 4.8, 6.3, 8.0, 10.0, 12.5, 15.0, 18.0, 21.0, 25.0)), // Retail spending from 2010 to 2025\nrecord(timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, industry = \"Government\", spending = array(1.0, 1.2, 1.5, 1.8, 2.5, 3.4, 4.6, 6.0, 7.8, 10.0, 12.8, 16.0, 20.0, 25.0, 31.0, 38.0)), // Government spending from 2010 to 2025\nrecord(timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, industry = \"Education\", spending = array(0.5, 0.7, 0.9, 1.2, 1.6, 2.2, 3.0, 4.0, 5.3, 7.0, 9.0, 11.5, 14.0, 17.0, 20.0, 24.0)), // Education spending from 2010 to 2025\nrecord(timeframe = timeframe(from: \"2010-01-01T00:00:00Z\", to: \"2025-12-31T23:59:59Z\"), interval = 365d, industry = \"Energy\", spending = array(0.6, 0.8, 1.0, 1.3, 1.7, 2.4, 3.2, 4.3, 5.7, 7.5, 9.8, 12.5, 15.6, 19.0, 23.0, 28.0)) // Energy spending from 2010 to 2025",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Observability spent (in Billion USD) by industry",
          "type": "data",
          "visualization": "heatmap",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "colorModeType": {
              "numericColorPalette": "turquoise-inverted"
            },
            "dataMapping": {
              "bucketValue": "spending"
            },
            "legend": {
              "showLegend": false
            },
            "unitsOverrides": [
              {
                "added": 1765357315109,
                "baseUnit": "usd",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "spending",
                "suffix": "",
                "unitCategory": "currency"
              }
            ]
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(website=\"OnlineStore.com\", rage_quit_probability = 61.8) // OnlineStore.com",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "gauge",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "colorModeType": {
              "color": "#2F6F57"
            },
            "icon": {
              "icon": "UserEventsIcon"
            },
            "label": {
              "label": "of 100"
            },
            "unitsOverrides": [
              {
                "added": 1765354745805,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "rage_quit_probability",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "data record(signal=17)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "meterBar",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "colorModeType": {
              "color": {
                "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
              }
            },
            "label": {
              "label": "Finished races in season"
            },
            "valueBoundaries": {
              "max": {
                "mode": "custom",
                "value": 24
              }
            }
          }
        }
      },
      "variables": [],
      "version": 21
    })
  custom_id = "dynatrace.dashboards.getting-started"
  # private = false
}
