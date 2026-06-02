resource "dynatrace_document" "Full-Stack_Adaptive_Traffic_Management_and_trace_capture" {
  name      = "Full-Stack Adaptive Traffic Management and trace capture"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 3,
          "w": 3,
          "x": 0,
          "y": 3
        },
        "1": {
          "h": 3,
          "w": 3,
          "x": 0,
          "y": 6
        },
        "10": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 15
        },
        "11": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 15
        },
        "12": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 9
        },
        "2": {
          "h": 6,
          "w": 21,
          "x": 3,
          "y": 3
        },
        "21": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 28
        },
        "26": {
          "h": 3,
          "w": 3,
          "x": 12,
          "y": 34
        },
        "27": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 27
        },
        "28": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 28
        },
        "29": {
          "h": 3,
          "w": 3,
          "x": 21,
          "y": 34
        },
        "3": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 9
        },
        "30": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "33": {
          "h": 3,
          "w": 3,
          "x": 0,
          "y": 34
        },
        "4": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 21
        }
      },
      "settings": {
        "defaultTimeframe": {
          "enabled": true,
          "value": {
            "from": "now()-7d",
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
          "description": "The **average Full-Stack adaptive capture rate** over the selected timeframe. A capture rate of 100% means all spans were captured. If the rate is lower, Adaptive Traffic Management is reducing the adaptive trace sampling rate to keep ingested trace data within the Full-Stack included trace volume.",
          "query": "// 1. Create timeseries of captured and estimated span counts for fullstack-adaptive\ntimeseries {\n  spans_sampled = sum(dt.sfm.spans.ingest.count),\n  spans_processed = sum(dt.sfm.spans.ingest.estimated_count)\n}, nonempty:true, filter:licensing_type == \"fullstack-adaptive\"\n\n// 2. Compute the capture rate and cap it at 100%\n| fieldsAdd capture_rate = spans_sampled[] / spans_processed[] * 100\n| fieldsAdd capture_rate = if(capture_rate[] \u003e 100, 100, else: capture_rate[])\n\n// 3. Compute the average capture rate\n| fieldsAdd average = arrayAvg(capture_rate)\n| fields average",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Avg. capture rate",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Average capture rate",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "average",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1732537313352,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "average",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The **minimum Full-Stack adaptive capture rate** over the selected timeframe. A capture rate of 100% means all spans were captured. If the rate is lower, Adaptive Traffic Management is reducing the adaptive trace sampling rate to keep ingested trace data within the Full-Stack included trace volume.",
          "query": "// 1. Create timeseries of captured and estimated span counts for fullstack-adaptive\ntimeseries {\n  spans_sampled = sum(dt.sfm.spans.ingest.count),\n  spans_processed = sum(dt.sfm.spans.ingest.estimated_count)\n}, nonempty:true, filter:licensing_type == \"fullstack-adaptive\"\n\n// 2. Compute the capture rate and cap it at 100%\n| fieldsAdd capture_rate = spans_sampled[] / spans_processed[] * 100\n| fieldsAdd capture_rate = if(capture_rate[] \u003e 100, 100, else: capture_rate[])\n\n// 3. Compute the minimum capture rate\n| fieldsAdd minimum = arrayMin(capture_rate)\n| fields minimum",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Min. capture rate",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Minimum capture rate",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "minimum",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1732537313352,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "minimum",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Ingested trace volume as a percentage of the Full-Stack included trace volume (`volume_used`). Adaptive Traffic Management keeps this around the limit. The algorithm allows for a degree of fluctuation, so the used volume may temporarily exceed 100% without extra charges.\n\n* Can exceed 100% if you opted for Extended trace ingest for Full-Stack Monitoring; the excess is charged.\n* Can exceed 100% if fixed-rate span data (e.g. OpenTelemetry) from Full-Stack monitored sources exceeds the Full-Stack included trace volume; the excess is charged.",
          "query": "// 1. Create timeseries of the configured Full-Stack trace volume limit\ntimeseries {\n  configured_limit = avg(dt.billing.traces.maximum_configured_fullstack_volume_per_minute)\n}, interval:15m, nonempty:true\n\n// 2. Scale per-minute limit to interval\n| fieldsAdd intervalInMinutes = toLong(interval) / 60000000000\n| fieldsAdd configured_limit = configured_limit[] * intervalInMinutes\n\n// 3. Join Full-Stack ingest events\n| join [\n  fetch dt.system.events\n  | filter event.type == \"Traces - Ingest \u0026 Process\"\n  | filter licensing_type == \"fullstack-adaptive\" or licensing_type == \"fullstack-fixed-rate\"\n  | makeTimeseries ingested_bytes_sum = sum(ingested_bytes), time: usage.start, interval:15m, nonempty:true\n], on:{timeframe}, fields:{ingested_bytes_sum}\n\n// 4. Compute volume used percentage\n| fieldsAdd volume_used = ingested_bytes_sum[] / configured_limit[] * 100\n| fieldsRemove configured_limit, ingested_bytes_sum",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Full-Stack trace volume used",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "volume_used"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "(DPS) Maximum included Full-Stack trace volume • (DPS) Maximum configured Full-Stack trace volume"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": "var(--dt-colors-charts-status-warning-default, #eca440)",
                  "colorMode": "single-color",
                  "max": null,
                  "min": 100,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "volume_used"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1732542996496,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "volume_used",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Average size of spans ingested from Full-Stack monitored applications or hosts. Typical values are in the 1.5–2 KiB range. If the span size is larger and trace volume is high (or the capture rate is low), you may be capturing a lot of data per span. The green line shows spans from `fullstack-adaptive` sources (`avg_span_size`), and the blue line shows spans from `fullstack-fixed-rate` sources (`avg_span_size`).",
          "query": "// 1. Fetch Full-Stack trace ingest events\nfetch dt.system.events\n\n// 2. Filter to Full-Stack ingest events\n| filter event.type == \"Traces - Ingest \u0026 Process\"\n| filter licensing_type == \"fullstack-adaptive\" or licensing_type == \"fullstack-fixed-rate\"\n\n// 3. Create timeseries of bytes and spans by licensing type\n| makeTimeseries {\n  ingested_bytes_sum = sum(ingested_bytes),\n  ingested_spans_sum = sum(ingested_spans)\n}, time: usage.start, interval:15m, by:{licensing_type}, nonempty:true\n\n// 4. Compute average span size\n| fieldsAdd avg_span_size = ingested_bytes_sum[] / ingested_spans_sum[]\n| fieldsRemove ingested_bytes_sum, ingested_spans_sum",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average size of Full-Stack spans",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg_span_size"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "(DPS) Maximum included Full-Stack trace volume • (DPS) Maximum configured Full-Stack trace volume"
              },
              "legend": {
                "hidden": true
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "fullstack-adaptive"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "fullstack-fixed-rate"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "licensing_type"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1732542996496,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "kibibyte",
                "identifier": "avg_span_size",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "**Contributing Full-Stack memory-gibibytes** from monitored hosts and applications. The blue line (`contributing_gib`) is derived from `dt.billing.full_stack_monitoring.usage` and normalized to represent contributing GiB per hour. This value determines your Full-Stack included trace volume (200 KiB of trace data per minute, or 3000 KiB per 15-minute interval, for each contributing GiB).",
          "query": "// 1. Create timeseries of Full-Stack Monitoring usage\ntimeseries contributing_gib = sum(dt.billing.full_stack_monitoring.usage), interval:15m, nonempty:true\n\n// 2. Normalize to contributing GiB per hour\n| fieldsAdd intervalInMinutes = toLong(interval) / 60000000000\n| fieldsAdd contributing_gib = contributing_gib[] * (60 / intervalInMinutes)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Contributing Full-Stack memory-gibibyte",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "contributing_gib"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "(DPS) Full-Stack Monitoring billing usage"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "contributing_gib"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1732796275900,
                "baseUnit": "gibibyte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sum(dt.billing.full_stack_monitoring.usage)",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "The **Full-Stack adaptive span capture rate** shows the ratio of captured spans (`dt.sfm.spans.ingest.count`) to the total estimated span count (`dt.sfm.spans.ingest.estimated_count`) from Full-Stack adaptive sources (`capture_rate`; blue line). A rate of 100% means all spans were captured. Adaptive Traffic Management reduces the rate when ingested trace data volume approaches the Full-Stack included trace volume.",
          "query": "// 1. Create timeseries of captured and estimated span counts for fullstack-adaptive\ntimeseries {\n  spans_sampled = sum(dt.sfm.spans.ingest.count, filter:licensing_type==\"fullstack-adaptive\"),\n  spans_processed = sum(dt.sfm.spans.ingest.estimated_count, filter:licensing_type==\"fullstack-adaptive\")\n}, nonempty:true\n\n// 2. Compute capture rate and cap it at 100%\n| fieldsAdd capture_rate = spans_sampled[] / spans_processed[] * 100\n| fieldsAdd capture_rate = if(capture_rate[] \u003e 100, 100, else: capture_rate[])\n\n// 3. Remove intermediate fields\n| fieldsRemove spans_sampled, spans_processed",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Full-Stack adaptive span capture rate",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "capture_rate"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Full-Stack adaptive span capture rate"
              },
              "legend": {
                "hidden": true
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "capture_rate"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "capture_rate"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1732539350280,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "capture_rate",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "The relationship between ingested adaptive trace data (`included_ingested_byte_sum`; green bar) and the Full-Stack included trace volume (`included_limit`; blue line). If you opted for Extended trace ingest for Full-Stack Monitoring, Adaptive Traffic Management adjusts trace ingest against the configured limit (`configured_limit`; red line), and the extended trace volume charged as billable extended ingest is shown as `billing_amount` (orange bar).",
          "query": "// 1. Fetch Full-Stack adaptive trace ingest events\nfetch dt.system.events\n\n// 2. Filter to fullstack-adaptive ingest events\n| filter event.type == \"Traces - Ingest \u0026 Process\"\n| filter licensing_type == \"fullstack-adaptive\"\n\n// 3. Create timeseries of ingested bytes\n| makeTimeseries ingested_bytes_sum = sum(ingested_bytes), time: usage.start, interval:15m, nonempty:true\n\n// 4. Join with billing limits\n| join [\n  timeseries {\n    included_limit = avg(dt.billing.traces.maximum_included_fullstack_volume_per_minute),\n    configured_limit = avg(dt.billing.traces.maximum_configured_fullstack_volume_per_minute)\n  }, interval:15m, nonempty:true\n  | fieldsAdd intervalInMinutes = toLong(interval) / 60000000000\n  | fieldsAdd included_limit = included_limit[] * intervalInMinutes\n  | fieldsAdd configured_limit = configured_limit[] * intervalInMinutes\n  | fieldsAdd billable = if(configured_limit[] - included_limit[] \u003e 0, true, else: false)\n], kind:outer, on:{timeframe}, fields:{included_limit, configured_limit, billable}\n\n// 5. Compute included ingest and billing amount\n| fieldsAdd included_ingested_byte_sum = if(billable[], included_limit[], else: ingested_bytes_sum[])\n| fieldsAdd billing_amount = if(billable[], ingested_bytes_sum[] - included_limit[], else: 0)\n| fieldsRemove billable, ingested_bytes_sum",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Current Full-Stack trace ingest and billable extended ingest",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "included_limit",
                  "configured_limit",
                  "included_ingested_byte_sum",
                  "billing_amount"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "(DPS) Maximum included Full-Stack trace volume • (DPS) Maximum configured Full-Stack trace volume",
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              },
              "legend": {
                "hidden": true
              },
              "seriesOverrides": [
                {
                  "override": {
                    "geometry": "bar"
                  },
                  "seriesId": [
                    "included_ingested_byte_sum"
                  ]
                },
                {
                  "override": {
                    "geometry": "bar"
                  },
                  "seriesId": [
                    "billing_amount"
                  ]
                }
              ],
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "included_limit"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "configured_limit"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-severe-default, #d56b1a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "billing_amount"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "included_ingested_byte_sum"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "included_limit",
                "configured_limit",
                "included_ingested_byte_sum",
                "billing_amount"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1737466886698,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "included_ingested_byte_sum",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1737466904141,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "included_limit",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1737466908720,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "configured_limit",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1737466911292,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "billing_amount",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "26": {
          "content": "# Calculator Factor: $CalculatorExtraIngestFactor",
          "type": "markdown"
        },
        "27": {
          "content": "### Extended trace ingest for Full-Stack Monitoring",
          "type": "markdown"
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Use this chart to simulate Extended trace ingest for Full-Stack Monitoring. Set the `CalculatorExtraIngestFactor` dashboard variable to specify how many times above the Full-Stack included trace volume you want to configure. The chart shows the Full-Stack included limit (`included_limit`; blue line), the predicted configured limit (`predicted_configured_limit`; red line), the trace volume covered by the included limit (`included_ingested_byte_sum`; green bar), and the predicted billable extended ingest (`predicted_billing_amount`; orange bar).",
          "query": "// 1. Create timeseries with billing limits\ntimeseries {\n  included_limit_min = avg(dt.billing.traces.maximum_included_fullstack_volume_per_minute)\n}, interval:15m, nonempty:true\n\n// 2. Scale limits to interval and apply calculator factor\n| fieldsAdd intervalInMinutes = toLong(interval) / 60000000000\n| fieldsAdd included_limit = included_limit_min[] * intervalInMinutes\n| fieldsAdd predicted_configured_limit = included_limit_min[] * intervalInMinutes * toDouble($CalculatorExtraIngestFactor)\n| fieldsRemove included_limit_min\n\n// 3. Join with fullstack-adaptive span data\n| join [\n  timeseries {\n    spans_sampled = sum(dt.sfm.spans.ingest.count),\n    spans_processed = sum(dt.sfm.spans.ingest.estimated_count),\n    ingested_bytes_sum = sum(dt.sfm.spans.ingest.size)\n  }, filter:licensing_type==\"fullstack-adaptive\", interval:15m, nonempty:true\n], on:{timeframe}, kind:outer, fields:{spans_sampled, spans_processed, ingested_bytes_sum}\n\n// 4. Compute capture rate\n| fieldsAdd captureRate = spans_sampled[] / spans_processed[]\n| fieldsAdd captureRate = if(captureRate[] \u003e 1, 1, else: captureRate[])\n| fieldsRemove spans_sampled, spans_processed\n\n// 5. Compute predicted billing amount with Extended trace ingest simulation\n| fieldsAdd maximum_potential_ingestable_trace_data = ingested_bytes_sum[] / captureRate[]\n| fieldsAdd min_overage = ingested_bytes_sum[] - included_limit[]\n| fieldsAdd min_overage = if(min_overage[] \u003e 0, min_overage[], else: 0)\n| fieldsAdd extra_ingest_volume = predicted_configured_limit[] - included_limit[]\n| fieldsAdd predicted_billing_amount = maximum_potential_ingestable_trace_data[] - included_limit[]\n| fieldsAdd predicted_billing_amount = if(predicted_billing_amount[] \u003e 0, predicted_billing_amount[], else: 0)\n| fieldsAdd predicted_billing_amount = if(predicted_billing_amount[] \u003e extra_ingest_volume[], extra_ingest_volume[], else: predicted_billing_amount[])\n| fieldsAdd predicted_billing_amount = if(min_overage[] \u003e predicted_billing_amount[], min_overage[], else: predicted_billing_amount[])\n| fieldsAdd predicted_billing_amount = if(toDouble($CalculatorExtraIngestFactor) \u003e 1.0, predicted_billing_amount[], else: 0)\n| fieldsAdd included_ingested_byte_sum = if(predicted_billing_amount[] \u003e 0, included_limit[], else: ingested_bytes_sum[])\n\n// 6. Compute predicted capture rate\n| fieldsAdd predicted_capture_rate = if(((included_ingested_byte_sum[] + predicted_billing_amount[]) / maximum_potential_ingestable_trace_data[] * 100) \u003c 100,\n  (included_ingested_byte_sum[] + predicted_billing_amount[]) / maximum_potential_ingestable_trace_data[] * 100, else: 100)\n| fields predicted_configured_limit, included_limit, included_ingested_byte_sum, predicted_capture_rate, predicted_billing_amount, timeframe, interval",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Full-Stack extended trace ingest calculator",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "predicted_configured_limit",
                  "included_limit",
                  "included_ingested_byte_sum",
                  "predicted_capture_rate",
                  "predicted_billing_amount"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "(DPS) Maximum included Full-Stack trace volume • (DPS) Maximum configured Full-Stack trace volume",
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "never",
              "seriesOverrides": [
                {
                  "override": {
                    "geometry": "bar"
                  },
                  "seriesId": [
                    "included_ingested_byte_sum"
                  ]
                },
                {
                  "override": {
                    "geometry": "bar"
                  },
                  "seriesId": [
                    "predicted_billing_amount"
                  ]
                }
              ],
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "included_limit"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-11-default, #627cfe)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "predicted_capture_rate"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "included_ingested_byte_sum"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "predicted_billing_amount"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "predicted_configured_limit"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "predicted_configured_limit",
                "included_limit",
                "included_ingested_byte_sum",
                "predicted_capture_rate"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1737467085192,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "predicted_capture_rate",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1737467092196,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "included_limit",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1737467095571,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "predicted_configured_limit",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1737467101279,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "predicted_billing_amount",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1737702822883,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "included_ingested_byte_sum",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Total predicted Extended trace ingest billable amount for the selected timeframe, based on the configured `CalculatorExtraIngestFactor` ($CalculatorExtraIngestFactor). This is the sum of `predicted_billing_amount` from the calculator chart.",
          "query": "// 1. Create timeseries with billing limits\ntimeseries {\n  included_limit_min = avg(dt.billing.traces.maximum_included_fullstack_volume_per_minute)\n}, interval:15m, nonempty:true\n\n// 2. Scale limits to interval and apply calculator factor\n| fieldsAdd intervalInMinutes = toLong(interval) / 60000000000\n| fieldsAdd included_limit = included_limit_min[] * intervalInMinutes\n| fieldsAdd predicted_configured_limit = included_limit_min[] * intervalInMinutes * toDouble($CalculatorExtraIngestFactor)\n| fieldsRemove included_limit_min\n\n// 3. Join with fullstack-adaptive span data\n| join [\n  timeseries {\n    spans_sampled = sum(dt.sfm.spans.ingest.count),\n    spans_processed = sum(dt.sfm.spans.ingest.estimated_count),\n    ingested_bytes_sum = sum(dt.sfm.spans.ingest.size)\n  }, filter:licensing_type==\"fullstack-adaptive\", interval:15m, nonempty:true\n], on:{timeframe}, kind:outer, fields:{spans_sampled, spans_processed, ingested_bytes_sum}\n\n// 4. Compute capture rate\n| fieldsAdd captureRate = spans_sampled[] / spans_processed[]\n| fieldsAdd captureRate = if(captureRate[] \u003e 1, 1, else: captureRate[])\n| fieldsRemove spans_sampled, spans_processed\n\n// 5. Compute predicted billing amount\n| fieldsAdd maximum_potential_ingestable_trace_data = ingested_bytes_sum[] / captureRate[]\n| fieldsAdd min_overage = ingested_bytes_sum[] - included_limit[]\n| fieldsAdd min_overage = if(min_overage[] \u003e 0, min_overage[], else: 0)\n| fieldsAdd extra_ingest_volume = predicted_configured_limit[] - included_limit[]\n| fieldsAdd predicted_billing_amount = maximum_potential_ingestable_trace_data[] - included_limit[]\n| fieldsAdd predicted_billing_amount = if(predicted_billing_amount[] \u003e 0, predicted_billing_amount[], else: 0)\n| fieldsAdd predicted_billing_amount = if(predicted_billing_amount[] \u003e extra_ingest_volume[], extra_ingest_volume[], else: predicted_billing_amount[])\n| fieldsAdd predicted_billing_amount = if(min_overage[] \u003e predicted_billing_amount[], min_overage[], else: predicted_billing_amount[])\n| fieldsAdd predicted_billing_amount = if(toDouble($CalculatorExtraIngestFactor) \u003e 1.0, predicted_billing_amount[], else: 0)\n\n// 6. Summarize as total predicted billing amount\n| summarize predict = sum(arraySum(predicted_billing_amount))\n| fieldsAdd predict = if(toDouble($CalculatorExtraIngestFactor) \u003e 1, predict, else: 0)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Predicted extended ingest billable amount",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Predicted extra ingest billable amount",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "predict",
              "trend": {
                "isVisible": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1737468810430,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "predict",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Amount of trace data ingested from Full-Stack monitored applications or hosts. The chart includes\n\n* `ingested_bytes_adaptive` (green bars): trace data captured by OneAgent and regulated by Adaptive Traffic Management.\n* `ingested_bytes_fixed` (blue-steel bars): trace data from Full-Stack monitored sources using fixed-rate sampling (e.g. OpenTelemetry). Not adjusted by ATM; excess above the Full-Stack included trace volume is charged.\n* `potential_bytes_adaptive` (grey bars): estimated additional adaptive trace data that ATM dropped to stay within the limit.\n* `included_limit` (blue line): your Full-Stack included trace volume.\n* `configured_limit` (red line): configured limit if Extended trace ingest is enabled.\n* `adaptive_limit` (orange line): the usable adaptive trace volume per minute.",
          "query": "// 1. Create timeseries with billing limits and usable adaptive volume\ntimeseries {\n  included_limit = avg(dt.billing.traces.maximum_included_fullstack_volume_per_minute),\n  configured_limit = avg(dt.billing.traces.maximum_configured_fullstack_volume_per_minute),\n  adaptive_limit = avg(dt.sfm.atm.usable_adaptive_trace_volume_per_minute)\n}, interval:1h, nonempty:true\n\n// 2. Join adaptive span data\n| join [\n  timeseries {\n    spans_sampled = sum(dt.sfm.spans.ingest.count),\n    spans_processed = sum(dt.sfm.spans.ingest.estimated_count),\n    ingested_bytes_adaptive = sum(dt.sfm.spans.ingest.size)\n  }, interval:1h, nonempty:true, filter:licensing_type==\"fullstack-adaptive\"\n], on:{timeframe}, fields:{spans_sampled, spans_processed, ingested_bytes_adaptive}\n\n// 3. Join fixed-rate span data\n| join [\n  timeseries {\n    ingested_bytes_fixed = sum(dt.sfm.spans.ingest.size, filter:licensing_type==\"fullstack-fixed-rate\", default:0)\n  }, interval:1h, nonempty:true\n], on:{timeframe}, fields:{ingested_bytes_fixed}\n\n// 4. Scale per-minute limits to interval and compute capture rate\n| fieldsAdd intervalInMinutes = toLong(interval) / 60000000000\n| fieldsAdd configured_limit = configured_limit[] * intervalInMinutes\n| fieldsAdd included_limit = included_limit[] * intervalInMinutes\n| fieldsAdd adaptive_limit = adaptive_limit[] * intervalInMinutes\n| fieldsAdd capture_rate = spans_sampled[] / spans_processed[]\n| fieldsAdd capture_rate = if(capture_rate[] \u003e 1, 1, else: capture_rate[])\n| fieldsRemove spans_processed, spans_sampled\n\n// 5. Compute potential (dropped) adaptive bytes\n| fieldsAdd potential_bytes_adaptive = (ingested_bytes_adaptive[] / capture_rate[]) - ingested_bytes_adaptive[]\n| fieldsRemove capture_rate",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Full-Stack trace data volume",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "included_limit",
                  "configured_limit",
                  "ingested_bytes_adaptive",
                  "ingested_bytes_fixed",
                  "potential_bytes_adaptive",
                  "adaptive_limit"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "(DPS) Maximum included Full-Stack trace volume • (DPS) Maximum configured Full-Stack trace volume"
              },
              "legend": {
                "hidden": true
              },
              "seriesOverrides": [
                {
                  "override": {
                    "geometry": "line"
                  },
                  "seriesId": [
                    "included_limit"
                  ]
                },
                {
                  "override": {
                    "geometry": "line"
                  },
                  "seriesId": [
                    "configured_limit"
                  ]
                },
                {
                  "override": {
                    "geometry": "bar"
                  },
                  "seriesId": [
                    "ingested_bytes_adaptive"
                  ]
                },
                {
                  "override": {
                    "geometry": "bar"
                  },
                  "seriesId": [
                    "ingested_bytes_fixed"
                  ]
                },
                {
                  "override": {
                    "geometry": "bar"
                  },
                  "seriesId": [
                    "potential_bytes_adaptive"
                  ]
                }
              ],
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                  "value": "included_limit"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "configured_limit"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "ingested_bytes_adaptive"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-01-default, #438fb1)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "ingested_bytes_fixed"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-02-default, #84859a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "potential_bytes_adaptive"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "included_limit",
                "configured_limit",
                "ingested_bytes_adaptive",
                "ingested_bytes_fixed",
                "potential_bytes_adaptive",
                "adaptive_limit"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1732542996496,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "ingested_bytes_adaptive",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1732542996497,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "ingested_bytes_fixed",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1732542996498,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "potential_bytes_adaptive",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1768937875478,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "configured_limit",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1768937892090,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "included_limit",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1769175544345,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "adaptive_limit",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "30": {
          "content": "### Full-Stack Adaptive Traffic Management and trace capture\nAdaptive Traffic Management (ATM) helps you manage your trace data volume. It keeps the ingested trace data volume within a configured trace volume of Full-Stack monitored hosts and applications. You can further optimize this to your needs via [trace ingest control and trace sampling settings](https://docs.dynatrace.com/docs/ingest-from/dynatrace-oneagent/adaptive-traffic-management/adaptive-traffic-management-saas-dps#options-used-to-control-trace-volume-usage-and-capture-rate). By default, ATM targets the [Full-Stack included trace volume](https://docs.dynatrace.com/docs/license/capabilities/app-infra-observability/full-stack-monitoring#full-stack-traces), which scales with contributing host or application memory. You can [request extended trace ingest](https://docs.dynatrace.com/docs/license/capabilities/app-infra-observability/full-stack-monitoring#extend-trace-ingest) at any time.",
          "type": "markdown"
        },
        "33": {
          "content": "# Current Factor: $CurrentExtraIngestFactor",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Trace data volume ingested from all sources, broken down by `licensing_type`. Dynatrace ingests trace data from multiple sources, which are licensed differently.\n\n* `fullstack-adaptive` (green bars): trace data captured by OneAgent on Full-Stack monitored hosts and applications, regulated by Adaptive Traffic Management.\n* `fullstack-fixed-rate` (blue-steel bars): trace data from Full-Stack monitored sources using fixed-rate sampling (e.g. OpenTelemetry spans or fixed-rate OneAgent settings). This traffic consumes the Full-Stack included trace volume but is not adjusted by Adaptive Traffic Management and can exceed the included limit; the excess is billed.\n* Other series (like `serverless`, `otlp-trace-ingest`, or `mainframe`): trace data that is not part of Full-Stack Monitoring and is not controlled by Adaptive Traffic Management.",
          "query": "// 1. Create timeseries of ingested bytes grouped by licensing type\ntimeseries {\n  ingested_bytes_sum = sum(dt.sfm.spans.ingest.size)\n}, nonempty:true, interval:1h, by:{licensing_type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Trace volume breakdown",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "ingested_bytes_sum"
                ],
                "timestamp": "timeframe"
              },
              "legend": {
                "hidden": true
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
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
                    "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "fullstack-adaptive"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "fullstack-fixed-rate"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#b3007d",
                  "field": "DT.name",
                  "type": "string",
                  "value": "otlp-trace-ingest"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "serverless"
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "licensing_type"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1732603950299,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "gibibyte",
                "identifier": "ingested_bytes_sum",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        }
      },
      "variables": [
        {
          "defaultValue": "1.0",
          "editable": true,
          "key": "CalculatorExtraIngestFactor",
          "type": "text",
          "version": 2,
          "visible": false
        },
        {
          "editable": true,
          "input": "  timeseries { \n    included_limit = sum(dt.billing.traces.maximum_included_fullstack_volume_per_minute), \n    configured_limit = sum(dt.billing.traces.maximum_configured_fullstack_volume_per_minute)\n  }\n  | fields factor = round(arraySum(configured_limit) / arraySum(included_limit), decimals:2)",
          "key": "CurrentExtraIngestFactor",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.distributedtracing.full-stack-atm-and-trace-capture"
  # private = false
}
