resource "dynatrace_document" "OpenPipeline_usage_overview" {
  name      = "OpenPipeline usage overview"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "100": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 49
        },
        "106": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 22
        },
        "108": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 56
        },
        "109": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "113": {
          "h": 7,
          "w": 12,
          "x": 12,
          "y": 58
        },
        "115": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 58
        },
        "116": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "117": {
          "h": 9,
          "w": 12,
          "x": 12,
          "y": 3
        },
        "122": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 7
        },
        "124": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 65
        },
        "125": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 67
        },
        "126": {
          "h": 6,
          "w": 6,
          "x": 12,
          "y": 67
        },
        "127": {
          "h": 6,
          "w": 6,
          "x": 18,
          "y": 67
        },
        "28": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 18
        },
        "29": {
          "h": 7,
          "w": 12,
          "x": 12,
          "y": 49
        },
        "32": {
          "h": 8,
          "w": 12,
          "x": 0,
          "y": 32
        },
        "49": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "57": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 26
        },
        "60": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 22
        },
        "63": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "70": {
          "h": 8,
          "w": 12,
          "x": 12,
          "y": 32
        },
        "74": {
          "h": 2,
          "w": 4,
          "x": 0,
          "y": 3
        },
        "76": {
          "h": 2,
          "w": 4,
          "x": 4,
          "y": 3
        },
        "77": {
          "h": 2,
          "w": 4,
          "x": 8,
          "y": 3
        },
        "79": {
          "h": 2,
          "w": 12,
          "x": 0,
          "y": 5
        },
        "80": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "83": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 40
        },
        "92": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 42
        },
        "94": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 73
        },
        "95": {
          "h": 7,
          "w": 12,
          "x": 12,
          "y": 42
        }
      },
      "settings": {},
      "tiles": {
        "100": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "See through which pipelines records come into OpenPipeline.",
          "query": "// Calculate the total number of routing records, filtered by configuration\ntimeseries `Total` = sum(dt.sfm.openpipeline.routing.records), filter: { matchesValue(configuration, $Configuration) }\n| join [\n    // Calculate the total number of records for each pipeline, filtered by configuration\n    timeseries `Pipeline` = sum(dt.sfm.openpipeline.routing.records),\n    by: {pipeline_id}, filter: { matchesValue(configuration, $Configuration) }\n  ], on: { interval }, fields: {\n    `Pipeline`,\n    pipeline_id\n  }\n  \n// Calculate the share of each pipeline as a percentage of the total  \n| fieldsAdd `PipelineShare` = Pipeline[] / Total[] * 100\n\n// Keep only the desired fields for display\n| fieldsKeep `PipelineShare`, pipeline_id, timeframe, interval",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ratio of records by pipeline",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "PipelineShare"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Pipeline share"
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "pipeline_id"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1738327525835,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "PipelineShare",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "106": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Check the number of discarded records by configuration (logs, spans, metrics, ...).\n\nRecords can be discarded by intentionally dropping them, by not persisting them in storage, or because the data is invalid.",
          "query": "timeseries sum(dt.sfm.openpipeline.not_stored.records), by: { configuration }\n| fieldsAdd not_stored = arrayAvg(`sum(dt.sfm.openpipeline.not_stored.records)`)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "2025-01-13T13:03:30.652Z",
              "to": "2025-01-14T13:13:30.652Z"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Not stored records",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(dt.sfm.openpipeline.not_stored.records)"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Number of records"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "configuration"
              ]
            },
            "legend": {
              "ratio": 20
            },
            "unitsOverrides": []
          }
        },
        "108": {
          "content": "##### Persistence\nRecords can be discarded by dropping them during the ingest phase (pre-processing) or within the pipelines (processing), by not persisting them in storage, or due to the invalidity of the data.",
          "type": "markdown"
        },
        "109": {
          "content": "##### Analysis of yesterday´s ingested data",
          "type": "markdown"
        },
        "113": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "See how many records are persisted in each pipeline during the routing phase. Note that records can also be dropped in the ingest source, which is not visible in this chart.",
          "query": "// Calculate the total number of routed and not stored records for each pipeline, filtered by configuration\ntimeseries {\n  `TotalRouted` = sum(dt.sfm.openpipeline.routing.records),\n  `NotStored` = sum(dt.sfm.openpipeline.not_stored.records)\n  }, by: { pipeline_id }, union: true, \n  filter: { matchesValue(configuration, $Configuration) AND isNotNull(pipeline_id) }\n\n// Compute the percentage of not stored records out of the total routed for each pipeline\n// If no not stored records were detected for any pipeline put 100\n| fieldsAdd `Percentage` = if(isNull(NotStored[]), 0, else: (NotStored[] / TotalRouted[] * 100))\n\n// Remove raw total_routed and not_stored fields to display only the calculated percentage\n| fieldsRemove `TotalRouted`, `NotStored`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Share of not stored records per pipeline",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Percentage"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "% of not stored records",
                "max": {
                  "mode": "data-max"
                },
                "min": {
                  "mode": "data-min"
                }
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "pipeline_id"
              ]
            },
            "legend": {
              "ratio": 11
            },
            "unitsOverrides": [
              {
                "added": 1744881386084,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Percentage",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "See the ratio of records not stored to records ingested, split by the reason for not storing. The reason can be not_persisted, intentionally_dropped, not_valid, internal_error, or buffer_overflow if the record is too large.",
          "query": "// Calculate the total number of ingested records, filtered by configuration\ntimeseries `Total` = sum(dt.sfm.openpipeline.ingest_sources_in.records),\n            filter: { matchesValue(configuration, $Configuration) }\n| join [\n    // Calculate the total number of not stored records for each reason, filtered by configuration\n    timeseries `Reason` = sum(dt.sfm.openpipeline.not_stored.records),\n                by: { reason }, default: 0, nonempty: true, \n                filter: { matchesValue(configuration, $Configuration) }\n  ], on: { interval }, fields: {\n    `Reason`, \n    reason\n  }\n\n//Provide default value if no not stored data was detected  \n| fieldsAdd reason = if(isNull(reason), \"No records were 'not stored'\", else: reason)\n\n// Calculate the share of each reason as a percentage of the total ingested\n| fieldsAdd `ReasonShare` =  if(isNull(Reason[] / Total[]), 0, else: (Reason[] / Total[] * 100))\n\n// Keep only the desired fields for display\n| fieldsKeep `ReasonShare`, reason, timeframe, interval",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Share of not stored records by reason",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "ReasonShare"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "% of not stored records",
                "max": {
                  "mode": "data-max"
                },
                "min": {
                  "mode": "data-min"
                }
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "reason"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1745400535403,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "ReasonShare",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "116": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), by: { configuration }\n| fieldsAdd ingest_in = arrayAvg(ingest_series)\n| fieldsAdd ingest_total = arraySum(ingest_series)\n//timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*logs*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"Logs\"\n//| append [timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*metrics*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"Metrics\"]\n//| append [timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*spans*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"Spans\"]\n//| append [timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*events*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"Events\"]\n//| append[timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*bizevents*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"Business events\"] \n//| append [timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*system.events*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"System events\"]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Ingested records per configuration",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "min": {
                  "mode": "data-min"
                }
              }
            }
          }
        },
        "117": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), by: { configuration }\n| fieldsAdd ingest_in = arrayAvg(ingest_series)\n| fieldsAdd ingest_total = arraySum(ingest_series)\n//timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*logs*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"Logs\"\n//| append [timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*metrics*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"Metrics\"]\n//| append [timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*spans*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"Spans\"]\n//| append [timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*events*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"Events\"]\n//| append[timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*bizevents*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"Business events\"] \n//| append [timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*system.events*\") }\n//| fieldsAdd ingest_total = arraySum(ingest_series)\n//| fieldsAdd ingest_series_name = \"System events\"]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Total ingested records per configuration",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "leftYAxisSettings": {
                "min": {
                  "mode": "data-min"
                }
              }
            }
          }
        },
        "122": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), by: { configuration }\n| filter matchesValue(configuration, \"*events*\")\n| fieldsAdd ingest_total = arraySum(ingest_series)\n| fields configuration, ingest_total\n| sort ingest_total asc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Total events per type",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "yellow",
                  "comparator": "= *value*",
                  "field": "",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "honeycomb": {
              "labels": {
                "showLabels": true
              }
            }
          }
        },
        "124": {
          "content": "##### Data Forwarding\nThe following table describes the billing‑relevant usage events generated when the Data Forwarding feature exports data to your external cloud storage. These events help you track consumption and understand charges associated with data movement.",
          "type": "markdown"
        },
        "125": {
          "customLinkSettings": {
            "customLinks": [
              {
                "added": 1772535707485,
                "icon": "LinkIcon",
                "name": "Review configuration",
                "urlPattern": "/ui/apps/dynatrace.settings/settings/openpipeline-logs/log-forwarding/{{dt.openpipeline.forwarding.config_id}}"
              }
            ],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events | filter event.type == \"Data Egress\" \n| fieldsAdd config_id = concat(\"[\", dt.openpipeline.forwarding.config_id, \"](\", \"/ui/apps/dynatrace.settings/settings/openpipeline-logs/forwarding/\", dt.openpipeline.forwarding.config_id, \")\") \n| fieldsAdd datatype = dt.openpipeline.forwarding.datatype \n| fieldsRemove dt.openpipeline.forwarding.datatype \n| fieldsRemove dt.openpipeline.forwarding.config_id \n| fieldsRemove event.version \n| fieldsRemove event.provider \n| fieldsRemove dt.security_context\n| filter matchesValue(datatype, $Configuration)\n",
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
            "autoSelectVisualization": true,
            "table": {
              "columnOrder": [
                "[\"timestamp\"]",
                "[\"billed_bytes\"]",
                "[\"config_id\"]",
                "[\"datatype\"]",
                "[\"event.kind\"]",
                "[\"event.type\"]",
                "[\"event.id\"]",
                "[\"usage.start\"]",
                "[\"usage.end\"]"
              ],
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "config_id"
                  ],
                  "id": 114921,
                  "value": "markdown"
                }
              ],
              "hiddenColumns": [],
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"event.provider\"]",
                  "direction": "ascending"
                }
              ]
            },
            "unitsOverrides": []
          }
        },
        "126": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Successfully forwarded records",
          "query": "timeseries { `Forwarded records` = sum(dt.sfm.openpipeline.forwarding.successful_records), value.A = sum(dt.sfm.openpipeline.forwarding.successful_records, scalar: true) }, filter: { matchesValue(configuration, $Configuration) }",
          "queryConfig": {
            "subQueries": [
              {
                "convertToValue": "Sum",
                "datatype": "metrics",
                "filter": "configuration = $Configuration ",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "sum",
                  "alias": "Forwarded records",
                  "key": "dt.sfm.openpipeline.forwarding.successful_records"
                }
              }
            ],
            "version": 20
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Successfully forwarded records",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "127": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Successfully forwarded records",
          "query": "timeseries { `Not forwarded records` = sum(dt.sfm.openpipeline.forwarding.failed_records), value.A = sum(dt.sfm.openpipeline.forwarding.failed_records, scalar: true) }, by: { reason }, filter: { matchesValue(configuration, $Configuration) }",
          "queryConfig": {
            "globalCommands": {},
            "subQueries": [
              {
                "by": [
                  "reason"
                ],
                "convertToValue": "Sum",
                "datatype": "metrics",
                "filter": "configuration = $Configuration ",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "sum",
                  "alias": "Not forwarded records",
                  "key": "dt.sfm.openpipeline.forwarding.failed_records"
                }
              }
            ],
            "version": 20
          },
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "subType": "dql-builder-metrics",
          "title": "Not forwarded records",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "fireplace",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            }
          }
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Check number of incoming records by configuration (logs, spans, metrics,...).\n\nIdentify unexpected increases or decreases in incoming data.",
          "query": "timeseries sum(dt.sfm.openpipeline.ingest_sources_in.records), by: { configuration }\n| fieldsAdd ingest_in = arrayAvg(`sum(dt.sfm.openpipeline.ingest_sources_in.records)`)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "2025-01-13T13:03:30.652Z",
              "to": "2025-01-14T13:13:30.652Z"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Incoming records",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum(dt.sfm.openpipeline.ingest_sources_in.records)"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Number of records"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "configuration"
              ]
            },
            "legend": {
              "ratio": 21
            },
            "unitsOverrides": [
              {
                "added": 1736348044549,
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
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "See where records are stored within Grail.",
          "query": "// Calculate the total number of outcoming records, filtered by configuration\ntimeseries `Total` = sum(dt.sfm.openpipeline.pipelines_out.records), filter: { matchesValue(configuration, $Configuration) }\n| join [\n    // Calculate the total number of records for each bucket, filtered by configuration\n    timeseries `Bucket` = sum(dt.sfm.openpipeline.pipelines_out.records),\n    by: { bucket_name }, filter: { matchesValue(configuration, $Configuration) }\n  ], on: { interval }, fields: {\n    `Bucket`,\n    bucket_name\n  }\n\n// Calculate the share of each bucket as a percentage of the total  \n| fieldsAdd `BucketShare` = Bucket[] / Total[] * 100\n\n// Keep only the desired fields for display\n| fieldsKeep `BucketShare`, bucket_name, timeframe, interval",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-24h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Ratio of records by Grail bucket",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "BucketShare"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Bucket share"
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "bucket_name"
              ]
            },
            "legend": {
              "ratio": 10
            },
            "unitsOverrides": [
              {
                "added": 1738327731409,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "BucketShare",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "// Calculate the total number of routing records and filter by logs configuration\ntimeseries \n`Total` = sum(dt.sfm.openpipeline.routing.records), \nfilter: { matchesValue(configuration, \"logs\")}\n\n// Join with the timeseries data for the default route (Classic pipeline), filtered by logs configuration \n| join [\n    timeseries `DefaultRoute` = sum(dt.sfm.openpipeline.routing.records),\n    by: { route_name },\n    filter: { matchesValue(configuration, \"logs\")  and matchesValue(route_name, \"default\") }\n  ], on: { interval }, fields: {\n    `DefaultRoute`\n  }\n\n// Calculate the percentage of OpenPipeline records\n| fieldsAdd `OpenPipeline` = (Total[] - DefaultRoute[]) * 100 / Total[]\n\n// Remove the Total and DefaultRoute fields to display only the OpenPipeline field\n| fieldsRemove Total, DefaultRoute",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "2025-01-13T10:18:42.286Z",
              "to": "2025-01-14T13:09:48.953Z"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Logs OpenPipeline vs. classic processing pipeline",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "OpenPipeline"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "% of OpenPipeline records",
                "max": {
                  "mode": "custom",
                  "value": 100
                }
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
                "OpenPipeline"
              ]
            },
            "legend": {
              "ratio": 12
            },
            "unitsOverrides": [
              {
                "added": 1736348044549,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "OpenPipeline",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "49": {
          "content": "### Data Ingest via OpenPipeline\nGet broad visibility into key information about data ingest via OpenPipeline. If you don´t see data, [ingest data via OpenPipeline](https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline) or explore this dashboard in our [playground](https://wkf10640.apps.dynatrace.com/ui/document/dynatrace.openpipeline.openpipeline-usage-overview).",
          "type": "markdown"
        },
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.system.events\n\n// Filter for audit events where the resource starts with the specified configuration path and the event type is PUT\n| filter event.kind == \"AUDIT_EVENT\" and startsWith(resource, \"/platform/openpipeline/v1/configurations\") and event.type == \"PUT\"\n\n// Extract the last segment of the resource path as the configuration field\n| fieldsAdd configuration = arrayLast(splitString(resource, \"/\"))\n\n// Categorize the client type based on the application ID\n| fieldsAdd client_type = if(dt.app.id == \"dynatrace.openpipeline\", \"App\", else: \"API\")\n\n// Add a constant value field for counting purposes\n| fieldsAdd value = 1\n\n// Create a timeseries count of events gouped by configuration\n| makeTimeseries count(), by:{configuration} ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Config changes",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "60": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Understand if a configuration change resulted in an unexpected increase or decrease in stored records.",
          "query": "timeseries {input = sum(dt.sfm.openpipeline.ingest_sources_in.records),\n            output = sum(dt.sfm.openpipeline.pipelines_out.records)}, by: { configuration }\n\n// Compute the percentage ratio of output to input for each data point\n| fieldsAdd ratio = iCollectArray(output[]/input[]*100)\n\n// Remove raw input and output fields to display only the calculated ratio\n| fieldsRemove input, output",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-24h",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Stored records in %",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "ratio"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Output to input records ratio"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "configuration"
              ]
            },
            "legend": {
              "ratio": 28
            },
            "unitsOverrides": []
          }
        },
        "63": {
          "content": "##### Ingest via OpenPipeline vs. classic pipeline\nAnalyze how much of the incoming data (logs and business events) are flowing through OpenPipeline in comparison to the classic pipeline processing.",
          "type": "markdown"
        },
        "70": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "",
          "query": "// Calculate the total number of routing records and filter by bizevents configuration\ntimeseries \n`Total` = sum(dt.sfm.openpipeline.routing.records), \nfilter: { matchesValue(configuration, \"bizevents\")}\n\n// Join with the timeseries data for the default route (Classic pipeline), filtered by bizevents configuration \n| join [\n    timeseries `DefaultRoute` = sum(dt.sfm.openpipeline.routing.records),\n    by: { route_name },\n    filter: { matchesValue(configuration, \"bizevents\")  and matchesValue(route_name, \"default\") }\n  ], on: { interval }, fields: {\n    `DefaultRoute`\n  }\n\n// Calculate the percentage of OpenPipeline records\n| fieldsAdd `OpenPipeline` = (Total[] - DefaultRoute[]) * 100 / Total[]\n\n// Remove the Total and DefaultRoute fields to display only the OpenPipeline field\n| fieldsRemove Total, DefaultRoute",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "2025-01-13T10:18:42.286Z",
              "to": "2025-01-14T13:09:48.953Z"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Business events OpenPipeline vs. classic processing pipeline",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "OpenPipeline"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "% of OpenPipeline records",
                "max": {
                  "mode": "custom",
                  "value": 100
                }
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
                "OpenPipeline"
              ]
            },
            "legend": {
              "ratio": 12
            },
            "unitsOverrides": [
              {
                "added": 1736348044549,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "OpenPipeline",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*logs*\") }\n| fieldsAdd ingest_total = arraySum(ingest_series)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Logs",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "ingest_total",
              "sparklineSettings": {
                "isVisible": false,
                "record": "ingest_series"
              },
              "trend": {
                "isVisible": true,
                "trendType": "custom"
              }
            }
          }
        },
        "76": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*metrics*\") }\n| fieldsAdd ingest_total = arraySum(ingest_series)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Metrics",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Metrics",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "ingest_total",
              "sparklineSettings": {
                "isVisible": false,
                "record": "ingest_series"
              },
              "trend": {
                "isVisible": true,
                "trendType": "custom"
              }
            }
          }
        },
        "77": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*spans*\") }\n| fieldsAdd ingest_total = arraySum(ingest_series)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Spans",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Spans",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "ingest_total",
              "sparklineSettings": {
                "isVisible": false,
                "record": "ingest_series"
              },
              "trend": {
                "isVisible": true,
                "trendType": "custom"
              }
            }
          }
        },
        "79": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries ingest_series = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, \"*events*\") }\n| fieldsAdd ingest_total = arraySum(ingest_series)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "-1d@d",
              "to": "@d"
            },
            "tileTimeframeEnabled": true
          },
          "title": "Total events",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Events",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "ingest_total",
              "sparklineSettings": {
                "isVisible": false,
                "record": "ingest_series"
              },
              "trend": {
                "isVisible": true,
                "trendType": "custom"
              }
            }
          }
        },
        "80": {
          "content": "##### Ingested data over time\nThe number of records ingested by configuration can be used to identify unexpected increases or decreases in incoming data.",
          "type": "markdown"
        },
        "83": {
          "content": "##### Ingest analysis per configuration: $Configuration \n\nGet insights about ingested data for the selected configuration, which can be adjusted using the variable Configuration on top of the screen. See where records come in, how they are routed and in which buckets they are stored.",
          "type": "markdown"
        },
        "92": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "See through which ingest sources records come into OpenPipeline.",
          "query": "// Calculate the total number of incoming records, filtered by configuration\ntimeseries `Total` = sum(dt.sfm.openpipeline.ingest_sources_in.records), filter: { matchesValue(configuration, $Configuration) }\n| join [\n    // Calculate the total number of records for each ingest source, filtered by configuration\n    timeseries  `IngestSource`= sum(dt.sfm.openpipeline.ingest_sources_in.records),\n    by: { dt.openpipeline.source }, filter: { matchesValue(configuration, $Configuration) }\n  ], on: { interval }, fields: {\n    `IngestSource`,\n    dt.openpipeline.source\n  }\n\n// Calculate the share of each ingest source as a percentage of the total\n| fieldsAdd `IngestSourceShare` = IngestSource[] / Total[] * 100\n\n// Provide default value for data points with null dt.openpipeline.source field\n| fieldsAdd dt.openpipeline.source = if(isNull(dt.openpipeline.source), \"Source\", else: dt.openpipeline.source)\n\n// Keep only the desired fields for display\n| fieldsKeep `IngestSourceShare`, dt.openpipeline.source, timeframe, interval",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ratio of records by ingest source",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "IngestSourceShare"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Ingest source share"
              },
              "legend": {
                "position": "bottom"
              },
              "tooltip": {
                "seriesDisplayMode": "multi-line"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "dt.openpipeline.source"
              ]
            },
            "legend": {
              "ratio": 13
            },
            "unitsOverrides": [
              {
                "added": 1738320633302,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "IngestSourceShare",
                "suffix": "%",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "94": {
          "content": "**Data is missing or you want to learn more? Please follow the links below to complete your data onboarding:**\n\n* [Ingest data via OpenPipeline and learn more](https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline)\n* [Buckets and Grail Storage Management](https://docs.dynatrace.com/docs/discover-dynatrace/platform/grail)\n* For log sources (e.g. OneAgent or log API) go to [Log Analytics](https://docs.dynatrace.com/docs/analyze-explore-automate/logs) \n* For ingest sources of tracing go to [Distributed Tracing](https://docs.dynatrace.com/docs/analyze-explore-automate/distributed-tracing)\n* For ingesting events use the [OpenPipeline Ingest API](https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline/reference/openpipeline-ingest-api/generic-events/events-generic-builtin).",
          "type": "markdown"
        },
        "95": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "See where records are routed to. For logs and business events records that go to the classic pipeline go via the route \"default\".",
          "query": "// Calculate the total number of routing records, filtered by configuration\ntimeseries `Total` = sum(dt.sfm.openpipeline.routing.records), filter: { matchesValue(configuration, $Configuration) }\n| join [\n    // Calculate the total number of records for each route, filtered by configuration\n    timeseries `Route` = sum(dt.sfm.openpipeline.routing.records),\n    by: { route_name }, filter: { matchesValue(configuration, $Configuration) }\n  ], on: { interval }, fields: {\n    `Route`,\n    route_name\n  }\n\n// Calculate the share of each route as a percentage of the total  \n| fieldsAdd `RouteShare` = Route[] / Total[] * 100\n\n// Keep only the desired fields for display\n| fieldsKeep `RouteShare`, route_name, timeframe, interval",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ratio of records by route name",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "RouteShare"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Route share"
              },
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "route_name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1738327525835,
                "baseUnit": "percent",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "RouteShare",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        }
      },
      "variables": [
        {
          "defaultValue": "logs",
          "editable": true,
          "input": "timeseries {\n  input=sum(dt.sfm.openpipeline.ingest_sources_in.records)\n  }, by: { \n    configuration\n  } \n| fieldsAdd options = if(isNull(configuration), \"default\", else: configuration)\n| summarize distinct = collectDistinct(options)\n| fieldsAdd distinct",
          "key": "Configuration",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.openpipeline.openpipeline-usage-overview"
  # private = false
}
