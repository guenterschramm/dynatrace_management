resource "dynatrace_document" "OpenTelemetry_Collector-all_Collectors" {
  name      = "OpenTelemetry Collector - all Collectors"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "101": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 33
        },
        "102": {
          "h": 7,
          "w": 12,
          "x": 12,
          "y": 33
        },
        "103": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "104": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 44
        },
        "11": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 32
        },
        "3": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "39": {
          "h": 7,
          "w": 8,
          "x": 0,
          "y": 21
        },
        "42": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "44": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 16
        },
        "6": {
          "h": 6,
          "w": 18,
          "x": 0,
          "y": 3
        },
        "73": {
          "h": 6,
          "w": 3,
          "x": 18,
          "y": 3
        },
        "74": {
          "h": 6,
          "w": 3,
          "x": 21,
          "y": 3
        },
        "75": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 10
        },
        "76": {
          "h": 6,
          "w": 8,
          "x": 8,
          "y": 10
        },
        "77": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 10
        },
        "79": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 16
        },
        "80": {
          "h": 4,
          "w": 8,
          "x": 16,
          "y": 16
        },
        "83": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 40
        },
        "85": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 40
        },
        "88": {
          "h": 7,
          "w": 8,
          "x": 8,
          "y": 21
        },
        "89": {
          "h": 7,
          "w": 8,
          "x": 16,
          "y": 21
        },
        "90": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 20
        },
        "91": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 28
        },
        "95": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 28
        }
      },
      "settings": {},
      "tiles": {
        "101": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the memory consumption of each OpenTelemetry Collector.",
          "query": "// This query retrieves a timeseries of the memory consumption of each OpenTelemetry Collector.\ntimeseries `avg(otelcol_process_memory_rss)` = avg(otelcol_process_memory_rss), \n  by: { service.instance.id, service.name, k8s.pod.name, k8s.namespace.name },\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total physical memory (resident set size)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(otelcol_process_memory_rss)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "legend": {
              "ratio": 33
            },
            "unitsOverrides": [
              {
                "added": 1719570518103,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(process_memory_rss)",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "102": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the CPU user and system time of each OpenTelemetry Collector.",
          "query": "// This query retrieves a timeseries of the CPU user and system time of each OpenTelemetry Collector.\ntimeseries `avg(otelcol_process_cpu_seconds)` = avg(otelcol_process_cpu_seconds), \n  by: { service.name, service.instance.id, k8s.pod.name, k8s.namespace.name },\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total CPU user and system time in seconds",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(otelcol_process_cpu_seconds)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "legend": {
              "ratio": 33
            },
            "unitsOverrides": [
              {
                "added": 1719570588488,
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(process_cpu_seconds)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "103": {
          "content": "### OpenTelemetry Collector overview\nThis dashboard is designed to monitor the health and performance of all of your deployed OpenTelemetry Collectors. [Find out how to set up this dashboard](https://docs.dynatrace.com/docs/shortlink/otel-collector-self-monitoring).",
          "type": "markdown"
        },
        "104": {
          "content": "### Additional resources\n\nLearn more about using the OpenTelemetry Collector with Dynatrace\n* [Dynatrace OpenTelemetry Collector documentation](https://docs.dynatrace.com/docs/ingest-from/opentelemetry/collector)\n* [OpenTelemetry Collector Dynatrace use cases](https://docs.dynatrace.com/docs/ingest-from/opentelemetry/collector/use-cases)\n* [Dynatrace OpenTelemetry Collector Distribution](https://github.com/Dynatrace/dynatrace-otel-collector)",
          "type": "markdown"
        },
        "11": {
          "content": "### Memory and CPU time per collector instance",
          "type": "markdown"
        },
        "3": {
          "content": "### OpenTelemetry Collector status",
          "type": "markdown"
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the HTTP request count of the OpenTelemetry Collectors.\n\nNote: Future versions of this dashboard will not include deprecated semantic conventions such as `rpc.server.duration` and `rpc.client.duration`. Please update your Collector to a version which uses `rpc.server.call.duration` and `rpc.client.call.duration` such as the Dynatrace distribution of the OpenTelemetry Collector v0.45.0 or later.",
          "query": "// Request count totals\n// This query retrieves a timeseries of the HTTP and RPC request count of the OpenTelemetry Collectors.\ntimeseries {\n  `HTTP incoming`=sum(http.server.request.duration, rollup:total),\n  `HTTP outgoing`=sum(http.client.request.duration, rollup:total),\n\n  // These metrics are experimental and subject to change at a later date.\n  `RPC incoming`=avg(rpc.server.call.duration, rollup:total),\n  `RPC outgoing`=avg(rpc.client.call.duration, rollup:total),\n\n  // These metrics are deprecated.\n  // Please update your Collectors to a version which supports stable RPC SemConv\n  // such as the Dynatrace distribution v0.45.0 or later.\n  `RPC incoming (deprecated)`=avg(rpc.server.duration, rollup:total),\n  `RPC outgoing (deprecated)`=avg(rpc.client.duration, rollup:total)\n  },\n  union:true,\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request count totals",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "HTTP incoming",
                  "HTTP outgoing",
                  "RPC incoming",
                  "RPC outgoing",
                  "RPC incoming (deprecated)",
                  "RPC outgoing (deprecated)"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "legend": {
              "ratio": 20
            },
            "unitsOverrides": []
          }
        },
        "42": {
          "content": "### Telemetry data passing through collectors",
          "type": "markdown"
        },
        "44": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows how many spans have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the OpenTelemetry Collectors. ",
          "query": "// This query retrieves how many spans have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the OpenTelemetry Collectors.\n\n// 1. Get total accepted spans per receiver.\ntimeseries { accepted=sum(otelcol_receiver_accepted_spans) }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n| fieldsAdd name=\"accepted\", type=\"receiver\", value=arraySum(accepted)\n| fieldsKeep name, type, value\n\n// 2. Append total refused spans per receiver.\n| append [\n  timeseries { refused=sum(otelcol_receiver_refused_spans) }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"refused\", type=\"receiver\", value=arraySum(refused)\n  | fieldsKeep name, type, value\n]\n\n// 3. Append total failed spans per receiver (failed to receive).\n| append [\n  timeseries { receiver_failed=sum(otelcol_receiver_failed_spans) }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"receiver_failed\", type=\"receiver\", value=arraySum(receiver_failed)\n  | fieldsKeep name, type, value\n]\n\n// 4. Append total filtered spans per processor (e.g. dropped by filter processor).\n| append [\n  timeseries { filtered=sum(otelcol_processor_filter_spans.filtered) }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n    | fieldsAdd name=\"filtered\", type=\"processor\", value=arraySum(filtered)\n  | fieldsKeep name, type, value\n]\n\n// 5. Append total sent spans per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_spans)}, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"sent\", type=\"exporter\", value=arraySum(sent)\n  | fieldsKeep name, type, value\n]\n\n// 6. Append total failed spans per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_spans) }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"failed\", type=\"exporter\", value=arraySum(failed)\n  | fieldsKeep name, type, value\n]\n\n// 7. Select relevant fields for output and convert value to long.\n| fields name, type, value=toLong(value)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Span totals",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"name\"]": 111.89999389648438
              }
            }
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile lists all OpenTelemetry Collector instances that have recently sent data to Dynatrace.",
          "query": "// This query is a tricky one and there are a few things that need to be considered.\n// First, the interval needs to be set to 1m for this query. That is required because otherwise the `end()` and `start()` methods will return the start and end timestamp of the interval for which data is rolled up.\n// That means: if the interval is 1 minute, start() and end() values will be 1m apart.\n// Also means: if the interval is 6 hours, start() and end() values will be 6h apart. \n// The query works by finding the latest bucket that has data in it and taking the start time from it.\n// That means: if the interval is higher than 1m, we cant tell how long ago the data was recorded. \n// E.g., if the interval is 6h, we know that there was data one 6h bucket, but there is no way to tell *when* in the 6h timeframe the data was recorded.\n// With 1m intervals, we can tell that somewhere in that minute bucket, data was recorded.\n// In order to get 1m resolution, this query looks at the last 24h only and forces 1m buckets.\n\n// add the interval start times by using start(). Also fix the timeframe and interval.\ntimeseries \n  {\n    count=count(otelcol_process_uptime), \n    intervalStart=start()\n  }, \n  by: { service.name, service.instance.id, k8s.pod.name, k8s.namespace.name },\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  },\n  from:-24h, to:now(), \n  interval:1m\n| fieldsAdd countIsNull=isNull(count[])                                              // find which buckets have values. null means no value has been recorded into that bucket.\n| fieldsAdd lastNonNullIdx = arrayLastIndexOf(countIsNull, false)                    // find the index of the last bucket that is not null, meaning the last bucket that has a value\n| fieldsAdd startTimesAndIdx=record(index=iIndex(), startTime=intervalStart[])       // create a record that contains the interval start times and and index\n| expand startTimesAndIdx                                                            // expand the records to be able to filter\n| filter startTimesAndIdx[index]==lastNonNullIdx                                     // keep only the interval start time for the last bucket that has a value\n| fieldsAdd lastWrittenAfter = startTimesAndIdx[startTime]                           // extract the start time and add it as a column to the result\n| fieldsAdd `Last Seen`=now()-lastWrittenAfter                                       // calculate how long ago the collector was last seen.\n| sort `Last Seen` asc\n| fieldsKeep service.name, service.instance.id, k8s.pod.name, k8s.namespace.name, `Last Seen`\n| limit 100\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active Collectors (24h)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "Last Seen",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Last Seen"
                    ]
                  },
                  "value": 3600000000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≤",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "Last Seen",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Last Seen"
                    ]
                  },
                  "value": 3600000000000
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≤",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "Last Seen",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "Last Seen"
                    ]
                  },
                  "value": 120000000000
                }
              ]
            },
            "table": {
              "columnWidths": {
                "[\"service.instance.id\"]": 309.5
              },
              "rowDensity": "default",
              "sortBy": {
                "columnId": "[\"lastWrittenWithin\"]",
                "direction": "ascending"
              }
            }
          }
        },
        "73": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This tile shows the number of OpenTelemetry Collectors that have sent data to Dynatrace within the last two minutes, and are therefore considered active.",
          "query": "// This query retrieves the number of OpenTelemetry Collectors that have sent data to Dynatrace within the last two minutes, and are therefore considered active.\ntimeseries {count=count(otelcol_process_uptime), intervalStart=start()},\n  by: { service.name, service.instance.id, k8s.namespace.name },\n  filter: {\n    in(service.name, $CollectorServiceNames) and\n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  },\n  from:-24h, to:now(),\n  interval:1m\n| fieldsAdd countIsNull=isNull(count[])                                              // find which buckets have values. null means no value has been recorded into that bucket.\n| fieldsAdd lastNonNullIdx = arrayLastIndexOf(countIsNull, false)                    // find the index of the last bucket that is not null, meaning the last bucket that has a value\n| fieldsAdd startTimesAndIdx=record(index=iIndex(), startTime=intervalStart[])       // create a record that contains the interval start times and and index\n| expand startTimesAndIdx                                                            // expand the records to be able to filter\n| filter startTimesAndIdx[index]==lastNonNullIdx                                     // keep only the interval start time for the last bucket that has a value\n| fieldsAdd lastWrittenAfter = startTimesAndIdx[startTime]                        // extract the start time and add it as a column to the result\n| fieldsAdd lastWrittenAfterAgo=now()-lastWrittenAfter                                 // calculate how long ago the collector was last seen.\n| fieldsAdd alive=lastWrittenAfterAgo \u003c 2m\n| fieldsKeep service.name, service.instance.id, k8s.namespace.name, alive\n| filter alive\n| summarize count=count(), by: {alive}\n| append [\n  data record(count=0, alive=true)\n]\n| summarize count=sum(count), by: {alive}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active Collectors (2m)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none"
            },
            "unitsOverrides": [
              {
                "added": 1765290229645,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count",
                "suffix": "",
                "unitCategory": "unspecified"
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
          "description": "This tile shows the number of OpenTelemetry Collectors that have sent data to Dynatrace within the last 24 hours.",
          "query": "// This query retrieves the number of OpenTelemetry Collectors that have sent data to Dynatrace within the last 24 hours.\ntimeseries {count=count(otelcol_process_uptime)}, \n  by: { service.name, service.instance.id }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  },\n  from:-24h, to:now(),\n  interval:1m\n| summarize count=count()\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total collectors (24h)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "75": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This tile shows a timeseries of all spans that have passed through the OpenTelemetry Collectors.",
          "query": "// This query retrieves a timeseries of all spans that have passed through the OpenTelemetry Collectors.\n\n// 1. Get accepted spans per receiver.\ntimeseries {accepted=sum(otelcol_receiver_accepted_spans)},\nfilter: {\n  in(service.name, $CollectorServiceNames) and \n  if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n}\n| fieldsAdd type=\"receiver\"\n\n// 2. Append refused spans per receiver.\n| append [\n  timeseries {refused=sum(otelcol_receiver_refused_spans)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"receiver\"\n]\n\n// 3. Append failed spans per receiver (failed to receive).\n| append [\n  timeseries {receiver_failed=sum(otelcol_receiver_failed_spans)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"receiver\"\n]\n\n// 4. Append filtered spans per processor (e.g. dropped by filter processor).\n| append [\n  timeseries {filtered=sum(otelcol_processor_filter_spans.filtered)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"processor\"\n]\n\n// 5. Append sent spans per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_spans)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"exporter\"\n]\n\n// 6. Append failed spans per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_spans)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"exporter\"\n]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Span totals",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "accepted",
                  "refused",
                  "filtered",
                  "sent",
                  "failed"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle"
            },
            "unitsOverrides": []
          }
        },
        "76": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This tile shows a timeseries of all metric datapoints that have passed through the OpenTelemetry Collectors.",
          "query": "// This query retrieves a timeseries of all metric datapoints that have passed through the OpenTelemetry Collectors.\n\n// 1. Get accepted metric datapoints per receiver.\ntimeseries {accepted=sum(otelcol_receiver_accepted_metric_points)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n| fieldsAdd type=\"receiver\"\n\n// 2. Append refused metric datapoints per receiver.\n| append [\n  timeseries {refused=sum(otelcol_receiver_refused_metric_points)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"receiver\"\n]\n\n// 3. Append failed metric datapoints per receiver (failed to receive).\n| append [\n  timeseries {receiver_failed=sum(otelcol_receiver_failed_metric_points)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"receiver\"\n]\n\n// 4. Append filtered metric datapoints per processor (e.g. dropped by filter processor).\n| append [\n  timeseries {filtered=sum(otelcol_processor_filter_datapoints.filtered)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"processor\"\n]\n\n// 5. Append sent metric datapoints per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_metric_points)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"exporter\"\n]\n\n// 6. Append failed metric datapoints per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_metric_points)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"exporter\"\n]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Metric datapoint totals",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "accepted",
                  "refused",
                  "sent",
                  "failed"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": []
          }
        },
        "77": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This tile shows a timeseries of all logs that have passed through the OpenTelemetry Collectors.",
          "query": "// This query retrieves a timeseries of all logs that have passed through the OpenTelemetry Collectors.\n\n// 1. Get accepted log records per receiver.\ntimeseries {accepted=sum(otelcol_receiver_accepted_log_records)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n| fieldsAdd type=\"receiver\"\n\n// 2. Append refused log records per receiver.\n| append [\n  timeseries {refused=sum(otelcol_receiver_refused_log_records)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"receiver\"\n]\n\n// 3. Append failed log records per receiver (failed to receive).\n| append [\n  timeseries {receiver_failed=sum(otelcol_receiver_failed_log_records)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"receiver\"\n]\n\n// 4. Append filtered log records per processor (e.g. dropped by filter processor).\n| append [\n  timeseries {filtered=sum(otelcol_processor_filter_logs.filtered)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"processor\"\n]\n\n// 5. Append sent log records per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_log_records)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"exporter\"\n]\n\n// 6. Append failed log records per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_log_records)},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd type=\"exporter\"\n]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Log totals",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "accepted",
                  "refused",
                  "sent",
                  "failed"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle"
            },
            "unitsOverrides": []
          }
        },
        "79": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows how many metric datapoints have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the OpenTelemetry Collectors. ",
          "query": "// This query retrieves how many metric datapoints have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the OpenTelemetry Collectors.\n\n// 1. Get total accepted metric datapoints per receiver.\ntimeseries { accepted=sum(otelcol_receiver_accepted_metric_points) }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n| fieldsAdd name=\"accepted\", type=\"receiver\", value=arraySum(accepted)\n| fieldsKeep name, type, value\n\n// 2. Append total refused metric datapoints per receiver.\n| append [\n  timeseries { refused=sum(otelcol_receiver_refused_metric_points) }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"refused\", type=\"receiver\", value=arraySum(refused)\n  | fieldsKeep name, type, value\n]\n\n// 3. Append total failed metric datapoints per receiver (failed to receive).\n| append [\n  timeseries { receiver_failed=sum(otelcol_receiver_failed_metric_points) }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"receiver_failed\", type=\"receiver\", value=arraySum(receiver_failed)\n  | fieldsKeep name, type, value\n]\n\n// 4. Append total filtered metric datapoints per processor (e.g. dropped by filter processor).\n| append [\n  timeseries { filtered=sum(otelcol_processor_filter_datapoints.filtered) }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n    | fieldsAdd name=\"filtered\", type=\"processor\", value=arraySum(filtered)\n  | fieldsKeep name, type, value\n]\n\n// 5. Append total sent metric datapoints per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_metric_points)}, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"sent\", type=\"exporter\", value=arraySum(sent)\n  | fieldsKeep name, type, value\n]\n\n// 6. Append total failed metric datapoints per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_metric_points) }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"failed\", type=\"exporter\", value=arraySum(failed)\n  | fieldsKeep name, type, value\n]\n\n// 7. Select relevant fields for output and convert value to long.\n| fields name, type, value=toLong(value)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Metric datapoint totals",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"name\"]": 158.89999389648438
              }
            }
          }
        },
        "80": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows how many logs have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the OpenTelemetry Collectors. ",
          "query": "// This query retrieves how many logs have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the OpenTelemetry Collectors.\n\n// 1. Get total accepted log records per receiver.\ntimeseries { accepted=sum(otelcol_receiver_accepted_log_records) },\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n| fieldsAdd name=\"accepted\", type=\"receiver\", value=arraySum(accepted)\n| fieldsKeep name, type, value\n\n// 2. Append total refused log records per receiver.\n| append [\n  timeseries { refused=sum(otelcol_receiver_refused_log_records) },\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"refused\", type=\"receiver\", value=arraySum(refused)\n  | fieldsKeep name, type, value\n]\n\n// 3. Append total failed log records per receiver (failed to receive).\n| append [\n  timeseries { receiver_failed=sum(otelcol_receiver_failed_log_records) },\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"receiver_failed\", type=\"receiver\", value=arraySum(receiver_failed)\n  | fieldsKeep name, type, value\n]\n\n// 4. Append total filtered log records per processor (e.g. dropped by filter processor).\n| append [\n  timeseries { filtered=sum(otelcol_processor_filter_logs.filtered) },\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n    | fieldsAdd name=\"filtered\", type=\"processor\", value=arraySum(filtered)\n  | fieldsKeep name, type, value\n]\n\n// 5. Append total sent log records per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_log_records)}, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"sent\", type=\"exporter\", value=arraySum(sent)\n  | fieldsKeep name, type, value\n]\n\n// 6. Append total failed log records per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_log_records) }, \n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n  | fieldsAdd name=\"failed\", type=\"exporter\", value=arraySum(failed)\n  | fieldsKeep name, type, value\n]\n\n// 7. Select relevant fields for output and convert value to long.\n| fields name, type, value=toLong(value)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Log record totals",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"name\"]": 158.89999389648438
              }
            }
          }
        },
        "83": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "unit": {
                    "baseUnit": "byte",
                    "unitCategory": "data"
                  }
                }
              },
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2024-07-16T12:03:54.560Z",
                      "startTime": "2024-07-16T11:33:54.560Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries max(process_memory_rss), by: { service.name, service.instance.id }, filter: { in(service.name, \"dynatrace-otel-collector\") }\n| limit 20",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This tile shows the top 5 OpenTelemetry Collectors ordered by their resident set size.",
          "query": "// This query retrieves the top 5 OpenTelemetry Collectors ordered by their resident set size.\ntimeseries sum=sum(otelcol_process_memory_rss), \n    from: now()-10m, to: now(),\n    by: { service.name, service.instance.id, k8s.pod.name, k8s.namespace.name },\n    filter: {\n      in(service.name, $CollectorServiceNames) and \n      if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n    }\n  | fieldsAdd averageMb=arrayAvg(sum)/1e6\n  | sort averageMb desc\n  | fieldsKeep service.name, service.instance.id, k8s.pod.name, k8s.namespace.name, averageMb",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 5 collectors by resident set size (last 10m)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"service.instance.id\"]": 210.4666748046875
              }
            },
            "unitsOverrides": [
              {
                "added": 1719570518103,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(process_memory_rss)",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "85": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "unit": {
                    "baseUnit": "byte",
                    "unitCategory": "data"
                  }
                }
              },
              "inputData": {
                "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                  "alertCondition": "ABOVE",
                  "alertOnMissingData": false,
                  "dealertingSamples": 5,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2024-07-16T12:03:54.560Z",
                      "startTime": "2024-07-16T11:33:54.560Z"
                    }
                  },
                  "numberOfSignalFluctuations": 1,
                  "query": "timeseries max(process_memory_rss), by: { service.name, service.instance.id }, filter: { in(service.name, \"dynatrace-otel-collector\") }\n| limit 20",
                  "slidingWindow": 5,
                  "violatingSamples": 3
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This tile shows the top 5 OpenTelemetry Collectors ordered by their CPU time.",
          "query": "// This query retrieves the top 5 OpenTelemetry Collectors ordered by their CPU time.\ntimeseries sum=sum(otelcol_process_cpu_seconds), \n    from: now()-10m, to: now(),\n    by: { service.name, service.instance.id, k8s.pod.name, k8s.namespace.name },\n    filter: {\n      in(service.name, $CollectorServiceNames) and \n      if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n    }\n  | fieldsAdd averageMillis=arrayAvg(sum) * 1000\n  | sort averageMillis desc\n  | fieldsKeep service.name, service.instance.id, k8s.pod.name, k8s.namespace.name, averageMillis",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 5 collectors by otelcol_process_cpu_seconds (last 10m)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1719570518103,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(process_memory_rss)",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "88": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the average HTTP request size of the OpenTelemetry Collectors.",
          "query": "// This query retrieves a timeseries of the average HTTP request size of the OpenTelemetry Collectors.\ntimeseries {\n  `HTTP incoming`=avg(http.server.request.body.size),\n  `HTTP outgoing`=avg(http.client.request.body.size)\n},\nunion:true,\nfilter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n}\n| fields\n `HTTP incoming`,\n `HTTP outgoing`,\n interval, timeframe\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request size average",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "HTTP incoming",
                  "HTTP outgoing"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "legend": {
              "ratio": 19
            },
            "unitsOverrides": [
              {
                "added": 1721215462564,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "RPC incoming",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1721215476940,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "RPC outgoing",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "89": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the average HTTP request duration of the OpenTelemetry Collectors.\n\nNote: Future versions of this dashboard will not include deprecated semantic conventions such as `rpc.server.duration` and `rpc.client.duration`. Please update your Collector to a version which uses `rpc.server.call.duration` and `rpc.client.call.duration` such as the Dynatrace distribution of the OpenTelemetry Collector v0.45.0 or later.",
          "query": "// This query retrieves a timeseries of the average HTTP and RPC request duration of the OpenTelemetry Collectors.\ntimeseries {\n  `HTTP incoming`=avg(http.server.request.duration),\n  `HTTP outgoing`=avg(http.client.request.duration),\n\n  // These metrics are experimental and subject to change at a later date.\n  `RPC incoming`=avg(rpc.server.call.duration),\n  `RPC outgoing`=avg(rpc.client.call.duration),\n\n  // These metrics are deprecated.\n  // Please update your Collectors to a version which supports stable RPC SemConv\n  // such as the Dynatrace distribution v0.45.0 or later.\n  `RPC incoming (deprecated)`=avg(rpc.server.duration),\n  `RPC outgoing (deprecated)`=avg(rpc.client.duration)\n},\n  union: true,\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request duration average",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "HTTP incoming",
                  "HTTP outgoing",
                  "RPC incoming",
                  "RPC incoming (deprecated)",
                  "RPC outgoing",
                  "RPC outgoing (deprecated)"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "http.server.duration • http.client.duration"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "legend": {
              "ratio": 20
            },
            "unitsOverrides": [
              {
                "added": 1721144587869,
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "millisecond",
                "identifier": "avg(http.server.request.duration)",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1751490025622,
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "millisecond",
                "identifier": "avg(http.client.request.duration)",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1751490025622,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "millisecond",
                "identifier": "avg(http.client.duration)",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1751490025622,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "millisecond",
                "identifier": "avg(http.server.duration)",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1751490025622,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "millisecond",
                "identifier": "avg(rpc.server.duration)",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1751490025622,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "millisecond",
                "identifier": "avg(rpc.client.duration)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "90": {
          "content": "### Network traffic",
          "type": "markdown"
        },
        "91": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows the total incoming and outgoing requests to and from each collector instance.\n\nNote: Future versions of this dashboard will not include deprecated semantic conventions such as `rpc.server.duration` and `rpc.client.duration`. Please update your Collector to a version which uses `rpc.server.call.duration` and `rpc.client.call.duration` such as the Dynatrace distribution of the OpenTelemetry Collector v0.45.0 or later.",
          "query": "timeseries {\n  httpServerRequestDurationCount=sum(http.server.request.duration, rollup:count, default:0),\n  httpClientRequestDurationCount=sum(http.client.request.duration, rollup:count, default:0),\n\n  rpcServerCallDurationCount=sum(rpc.server.call.duration, rollup:count, default:0),\n  rpcClientCallDurationCount=sum(rpc.client.call.duration, rollup:count, default:0),\n\n  // These metrics are deprecated.\n  // Please update your Collectors to a version which supports stable RPC SemConv\n  // such as the Dynatrace distribution v0.45.0 or later.\n  rpcServerDurationCount=sum(rpc.server.duration, rollup:count, default:0),\n  rpcClientDurationCount=sum(rpc.client.duration, rollup:count, default:0)\n},\n  union: true,\n  by: {service.name, service.instance.id, k8s.pod.name, k8s.namespace.name},\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n\n| fields\n  service.name, service.instance.id, k8s.pod.name, k8s.namespace.name,\n  `HTTP incoming`=arraySum(httpServerRequestDurationCount),\n  `HTTP outgoing`=arraySum(httpClientRequestDurationCount),\n  `RPC incoming`=arraySum(rpcServerDurationCount) + arraySum(rpcServerCallDurationCount),\n  `RPC outgoing`=arraySum(rpcClientDurationCount) + arraySum(rpcClientCallDurationCount)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Requests by collector instance",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnOrder": [
                "[\"service.name\"]",
                "[\"service.instance.id\"]",
                "[\"k8s.pod.name\"]",
                "[\"k8s.namespace.name\"]",
                "[\"HTTP incoming\"]",
                "[\"HTTP outgoing\"]",
                "[\"RPC incoming\"]",
                "[\"RPC outgoing\"]"
              ]
            },
            "unitsOverrides": []
          }
        },
        "95": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile lists the number of HTTP requests sent by the OpenTelemetry Collectors by their status code.",
          "query": "// This query retrieves how many HTTP requests have been sent from each OpenTelemetry Collector.\ntimeseries {\n  clientRequestCount=sum(http.client.request.duration, rollup:count, default: 0),\n  serverRequestCount=sum(http.server.request.duration, rollup:count, default: 0)\n},\n  union: true,\n  by: {\n    http.response.status_code\n  },\n  filter: {\n    in(service.name, $CollectorServiceNames) and \n    if(isNull(k8s.namespace.name), in(\"None\", $Namespaces), else: in(k8s.namespace.name, $Namespaces))\n  }\n| fields\n  http.response.status_code,\n  `HTTP incoming`=toLong(arraySum(clientRequestCount)),\n  `HTTP outgoing`=toLong(arraySum(serverRequestCount))\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "HTTP requests from the collector, by status code",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnOrder": [
                "[\"http.response.status_code\"]",
                "[\"HTTP incoming\"]",
                "[\"HTTP outgoing\"]"
              ]
            },
            "unitsOverrides": []
          }
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "timeseries count(otelcol_process_uptime), by: { service.name }\n| summarize servicenames = collectDistinct(service.name)\n| fieldsAdd servicenames = if(isNull(servicenames), array(\"N/A\"), else: servicenames)",
          "key": "CollectorServiceNames",
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
          "input": "timeseries count(otelcol_process_uptime), by: { service.instance.id, k8s.pod.name, k8s.namespace.name }\n| summarize namespaces = collectDistinct(k8s.namespace.name)\n| fields final = arrayConcat(array(\"None\"), arrayRemoveNulls(namespaces))",
          "key": "Namespaces",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.opentelemetry.otelcol-allCollectors"
  # private = false
}
