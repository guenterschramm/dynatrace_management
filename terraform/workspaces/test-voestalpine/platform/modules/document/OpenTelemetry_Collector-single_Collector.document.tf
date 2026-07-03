resource "dynatrace_document" "OpenTelemetry_Collector-single_Collector" {
  name      = "OpenTelemetry Collector - single Collector"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "101": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 33
        },
        "102": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 33
        },
        "105": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 47
        },
        "106": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 48
        },
        "107": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 48
        },
        "108": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "109": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 41
        },
        "11": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 32
        },
        "117": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 20
        },
        "118": {
          "h": 3,
          "w": 8,
          "x": 0,
          "y": 21
        },
        "119": {
          "h": 3,
          "w": 8,
          "x": 8,
          "y": 21
        },
        "120": {
          "h": 3,
          "w": 8,
          "x": 16,
          "y": 21
        },
        "121": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "122": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 25
        },
        "124": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 25
        },
        "125": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "126": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 29
        },
        "127": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 29
        },
        "129": {
          "h": 6,
          "w": 8,
          "x": 8,
          "y": 41
        },
        "130": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 41
        },
        "131": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "132": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "133": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 54
        },
        "39": {
          "h": 3,
          "w": 8,
          "x": 0,
          "y": 17
        },
        "42": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "44": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 10
        },
        "75": {
          "h": 7,
          "w": 8,
          "x": 0,
          "y": 3
        },
        "76": {
          "h": 7,
          "w": 8,
          "x": 8,
          "y": 3
        },
        "77": {
          "h": 7,
          "w": 8,
          "x": 16,
          "y": 3
        },
        "79": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 10
        },
        "80": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 10
        },
        "88": {
          "h": 3,
          "w": 8,
          "x": 8,
          "y": 17
        },
        "89": {
          "h": 3,
          "w": 8,
          "x": 16,
          "y": 17
        },
        "90": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 16
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
          "description": "This tile shows a timeseries of the memory consumption of the OpenTelemetry Collector.",
          "query": "// This query retrieves a timeseries of the memory consumption of the OpenTelemetry Collector.\ntimeseries { avg(otelcol_process_memory_rss)},\n  by: { service.instance.id },\n  filter: in(service.name, $CollectorServiceNames) and service.instance.id == $InstanceValue",
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
            "autoSelectVisualization": false,
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
          "description": "This tile shows a timeseries of the CPU user and system time of the OpenTelemetry Collector.",
          "query": "// This query retrieves a timeseries of the CPU user and system time of the OpenTelemetry Collector.\ntimeseries average=avg(otelcol_process_cpu_seconds),\n  by: { service.instance.id },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total CPU user and system time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "average"
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
        "105": {
          "content": "##### Queue size metrics",
          "title": "",
          "type": "markdown"
        },
        "106": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the current exporter queue size of the OpenTelemetry Collector.",
          "query": "// This query retrieves a timeseries of the current exporter queue size of the OpenTelemetry Collector.\ntimeseries {max(otelcol_exporter_queue_size)}, \nby: { exporter },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Exporter current queue size",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max(otelcol_exporter_queue_size)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            }
          }
        },
        "107": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the exporter queue capacity of the OpenTelemetry Collector.",
          "query": "// This query retrieves a timeseries of the exporter queue capacity of the OpenTelemetry Collector.\ntimeseries {max(otelcol_exporter_queue_capacity)}, \nby: { exporter },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Exporter queue capacity",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max(otelcol_exporter_queue_capacity)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            }
          }
        },
        "108": {
          "content": "### Batch metrics\nThese are metrics reported by the exporter helper's [batching facilities](https://github.com/open-telemetry/opentelemetry-collector/blob/main/exporter/exporterhelper/README.md#sending-queue-batch-settings), if used. They can be used to understand batching behavior.",
          "title": "",
          "type": "markdown"
        },
        "109": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This tile shows a timeseries of the batch size (in items) of the OpenTelemetry Collector.",
          "query": "// This query retrieves a timeseries of the batch size (in items) of the OpenTelemetry Collector.\ntimeseries {max=max(otelcol_exporter_queue_batch_send_size), avg=avg(otelcol_exporter_queue_batch_send_size)}, \n  by: {exporter},\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Batch size (items)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max",
                  "avg"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "otelcol_exporter_queue_batch_send_size"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            }
          }
        },
        "11": {
          "content": "### Memory and CPU time",
          "title": "",
          "type": "markdown"
        },
        "117": {
          "content": "##### HTTP outgoing",
          "title": "",
          "type": "markdown"
        },
        "118": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the outgoing HTTP request count of the OpenTelemetry Collector.",
          "query": "timeseries `sum`=sum(http.client.request.duration, rollup:count),\n  union: true,\n  by: { http.response.status_code },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request count",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "sum"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": []
          }
        },
        "119": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the average outgoing HTTP request size of the OpenTelemetry Collector.",
          "query": "timeseries {\n  avg=avg(http.client.request.body.size),\n  max=max(http.client.request.body.size)\n},\n  by: http.response.status_code,\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request size",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg",
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1721215462564,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1721215476940,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "max",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1751985179253,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg (deprecated)",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "120": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the average outgoing HTTP request duration of the OpenTelemetry Collector.",
          "query": "timeseries {\n  avg=avg(http.client.request.duration),\n  max=max(http.client.request.duration)\n},\n  by: http.response.status_code,\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }",
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
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg",
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1721144587869,
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1721144587869,
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "max",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1721144587869,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg (deprecated)",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1721144587869,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "max (deprecated)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "121": {
          "content": "##### RPC incoming",
          "title": "",
          "type": "markdown"
        },
        "122": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the incoming RPC request count of the OpenTelemetry Collector.",
          "query": "timeseries `sum`=sum(rpc.server.call.duration, rollup:count),\n  union: true,\n  by: { rpc.response.status_code },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue } |\nappend [\n  // This metric is deprecated.\n  // Please update your Collectors to a version which supports stable RPC SemConv\n  // such as the Dynatrace distribution v0.45.0 or later.\n  timeseries `sum (deprecated)`=sum(rpc.server.duration, rollup:count),\n    by: { rpc.grpc.status_code },\n    filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }\n]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request count",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": []
          }
        },
        "124": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the average incoming RPC request duration of the OpenTelemetry Collector.",
          "query": "// This query retrieves a timeseries of the average incoming RPC request duration of the OpenTelemetry Collector.\ntimeseries {`avg`=avg(rpc.server.call.duration), `max`=max(rpc.server.call.duration)},\n  by: { rpc.response.status_code },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue } |\nappend [\n  // This metric is deprecated.\n  // Please update your Collectors to a version which supports stable RPC SemConv\n  // such as the Dynatrace distribution v0.45.0 or later.\n  timeseries {`avg (deprecated)`=avg(rpc.server.duration), `max (deprecated)`=max(rpc.server.duration)},\n    by: { rpc.grpc.status_code },\n    filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }\n]",
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
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg",
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1721144587869,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(rpc.server.duration)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "125": {
          "content": "##### RPC outgoing",
          "title": "",
          "type": "markdown"
        },
        "126": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the outgoing RPC request count of the OpenTelemetry Collector.",
          "query": "// This query retrieves a timeseries of the outgoing RPC request count of the OpenTelemetry Collector.\ntimeseries `sum`=sum(rpc.client.call.duration, rollup:count),\n  union: true,\n  by: { rpc.response.status_code },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue } |\nappend [\n  // This metric is deprecated.\n  // Please update your Collectors to a version which supports stable RPC SemConv\n  // such as the Dynatrace distribution v0.45.0 or later.\n  timeseries `sum (deprecated)`=sum(rpc.client.duration, rollup:count),\n    by: { rpc.grpc.status_code },\n    filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }\n]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request count",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": []
          }
        },
        "127": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the average outgoing RPC request duration of the OpenTelemetry Collector.",
          "query": "// This query retrieves a timeseries of the average outgoing RPC request duration of the OpenTelemetry Collector.\ntimeseries {`avg`=avg(rpc.client.call.duration), `max`=max(rpc.client.call.duration)},\n  by: { rpc.response.status_code },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue } |\nappend [\n  // This metric is deprecated.\n  // Please update your Collectors to a version which supports stable RPC SemConv\n  // such as the Dynatrace distribution v0.45.0 or later.\n  timeseries {`avg (deprecated)`=avg(rpc.client.duration), `max (deprecated)`=max(rpc.client.duration)},\n    by: { rpc.grpc.status_code },\n    filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }\n]",
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
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg",
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1721144587869,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(rpc.client.duration)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "129": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This tile shows a timeseries of the batch size (in bytes) of the OpenTelemetry Collector.",
          "query": "// This query retrieves a timeseries of the batch size (in bytes) of the OpenTelemetry Collector.\ntimeseries {max=max(otelcol_exporter_queue_batch_send_size_bytes), avg=avg(otelcol_exporter_queue_batch_send_size_bytes)}, \n  by: {exporter},\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Batch size (bytes)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max",
                  "avg"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "otelcol_exporter_queue_batch_send_size_bytes"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            }
          }
        },
        "131": {
          "content": "### Network traffic",
          "title": "",
          "type": "markdown"
        },
        "132": {
          "content": "### OpenTelemetry Collector overview\nThis dashboard is designed to monitor the health and performance of a single OpenTelemetry Collector instance. [Find out how to set up this dashboard](https://docs.dynatrace.com/docs/shortlink/otel-collector-self-monitoring).",
          "title": "",
          "type": "markdown"
        },
        "133": {
          "content": "### Additional resources\n\nLearn more about using the OpenTelemetry Collector with Dynatrace\n* [Dynatrace OpenTelemetry Collector documentation](https://docs.dynatrace.com/docs/ingest-from/opentelemetry/collector)\n* [OpenTelemetry Collector Dynatrace use cases](https://docs.dynatrace.com/docs/ingest-from/opentelemetry/collector/use-cases)\n* [Dynatrace OpenTelemetry Collector Distribution](https://github.com/Dynatrace/dynatrace-otel-collector)",
          "title": "",
          "type": "markdown"
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the incoming HTTP request count of the OpenTelemetry Collector.",
          "query": "timeseries `sum`=sum(http.server.request.duration, rollup:count, default:0),\n  union: true,\n  by: { http.response.status_code },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request count",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": []
          }
        },
        "42": {
          "content": "### Telemetry data passing through the collector",
          "title": "",
          "type": "markdown"
        },
        "44": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows how many spans have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the selected OpenTelemetry Collector instance. ",
          "query": "// This query retrieves how many spans have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the selected OpenTelemetry Collector instance. \n\n// 1. Get total accepted spans per receiver.\ntimeseries { accepted=sum(otelcol_receiver_accepted_spans) },\n  by: {receiver},\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }\n  | fieldsAdd name=\"accepted\", type=\"receiver\", component=receiver, value=arraySum(accepted)\n  | fieldsKeep name, type, component, value\n\n// 2. Append total refused spans per receiver.\n| append [\n  timeseries { refused=sum(otelcol_receiver_refused_spans) }, \n  by: {receiver},\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }  \n  | fieldsAdd name=\"refused\", type=\"receiver\", component=receiver, value=arraySum(refused)\n  | fieldsKeep name, type, component, value\n]\n\n// 3. Append total failed spans per receiver (failed to receive).\n| append [\n  timeseries {receiver_failed=sum(otelcol_receiver_failed_spans) }, \n  by: { receiver },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }  \n  | fieldsAdd name=\"receiver_failed\", type=\"receiver\", component=receiver, value=arraySum(receiver_failed)\n  | fieldsKeep name, type, component, value\n]\n\n// 4. Append total filtered spans per processor (e.g. dropped by filter processor).\n| append [\n  timeseries { filtered=sum(otelcol_processor_filter_spans.filtered) },\n  by: {filter},\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }    \n  | fieldsAdd name=\"filtered\", type=\"processor\", component=filter, value=arraySum(filtered)\n  | fieldsKeep name, type, component, value\n]\n\n// 5. Append total sent spans per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_spans)}, \n  by: { exporter },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }  \n  | fieldsAdd name=\"sent\", type=\"exporter\", component=exporter, value=arraySum(sent)\n  | fieldsKeep name, type, component, value\n]\n\n// 6. Append total failed spans per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_spans) }, \n  by: { exporter },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }  \n  | fieldsAdd name=\"failed\", type=\"exporter\", component=exporter, value=arraySum(failed)\n  | fieldsKeep name, type, component, value\n]\n\n// 7. Select relevant fields for output and convert value to long.\n| fields name, type, component, value=toLong(value)",
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
        "75": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This tile shows a timeseries of all spans that have passed through the selected OpenTelemetry Collector instance.",
          "query": "// This query retrieves a timeseries of all spans that have passed through the selected OpenTelemetry Collector instance.\n\n// 1. Get accepted spans per receiver.\ntimeseries {accepted=sum(otelcol_receiver_accepted_spans)}, \nfilter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\nby: {receiver}\n| fieldsAdd type=\"receiver\"\n\n// 2. Append refused spans per receiver.\n| append [\n  timeseries {refused=sum(otelcol_receiver_refused_spans)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {receiver}\n  | fieldsAdd type=\"receiver\"\n]\n\n// 3. Append failed spans per receiver (failed to receive).\n| append [\n  timeseries {receiver_failed=sum(otelcol_receiver_failed_spans)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: { exporter }\n  | fieldsAdd type=\"exporter\"\n]\n\n// 4. Append filtered spans per processor (e.g. dropped by filter processor).\n| append [\n  timeseries {filtered=sum(otelcol_processor_filter_spans.filtered)},\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {filter}\n  | fieldsAdd type=\"processor\"\n]\n\n// 5. Append sent spans per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_spans)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {exporter}\n  | fieldsAdd type=\"exporter\"\n]\n\n// 6. Append failed spans per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_spans)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: { exporter }\n  | fieldsAdd type=\"exporter\"\n]\n\n// 7. Select relevant fields for output.\n| fields timeframe, interval, type, accepted, refused, receiver_failed, sent, failed, filtered, receiver, exporter",
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
            "legend": {
              "ratio": 26
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
          "description": "This tile shows a timeseries of all metric datapoints that have passed through the selected OpenTelemetry Collector instance.",
          "query": "// This query retrieves a timeseries of all metric datapoints that have passed through the selected OpenTelemetry Collector instance.\n\n// 1. Get accepted metric points per receiver.\ntimeseries {accepted=sum(otelcol_receiver_accepted_metric_points)},\nfilter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\nby: {receiver}\n| fieldsAdd type=\"receiver\"\n\n// 2. Append refused metric points per receiver.\n| append [\n  timeseries {refused=sum(otelcol_receiver_refused_metric_points)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {receiver}\n  | fieldsAdd type=\"receiver\"\n]\n\n// 3. Append failed metric points per receiver (failed to receive).\n| append [\n  timeseries {receiver_failed=sum(otelcol_receiver_failed_metric_points)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {exporter}\n  | fieldsAdd type=\"exporter\"\n]\n\n// 4. Append filtered metric points per processor (e.g. dropped by filter processor).\n| append [\n  timeseries {filtered=sum(otelcol_processor_filter_datapoints.filtered)},\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {filter}\n  | fieldsAdd type=\"processor\"\n]\n\n// 5. Append sent metric points per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_metric_points)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {exporter}\n  | fieldsAdd type=\"exporter\"\n]\n\n// 6. Append failed metric points per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_metric_points)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {exporter}\n  | fieldsAdd type=\"exporter\"\n]\n\n// 7. Select relevant fields for output.\n| fields timeframe, interval, type, accepted, refused, receiver_failed, sent, failed, filtered, receiver, exporter",
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
            "autoSelectVisualization": false,
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
            "legend": {
              "ratio": 25
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
          "description": "This tile shows a timeseries of all logs that have passed through the selected OpenTelemetry Collector instance.",
          "query": "// This query retrieves a timeseries of all logs that have passed through the selected OpenTelemetry Collector instance.\n\n// 1. Get accepted log records per receiver.\ntimeseries {accepted=sum(otelcol_receiver_accepted_log_records)}, \nfilter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\nby: {receiver}\n| fieldsAdd type=\"receiver\"\n\n// 2. Append refused log records per receiver.\n| append [\n  timeseries {refused=sum(otelcol_receiver_refused_log_records)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {receiver}\n  | fieldsAdd type=\"receiver\"\n]\n\n// 3. Append failed log records per receiver (failed to receive).\n| append [\n  timeseries {receiver_failed=sum(otelcol_receiver_failed_log_records)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {exporter}\n  | fieldsAdd type=\"exporter\"\n]\n\n// 4. Append filtered log records per processor (e.g. dropped by filter processor).\n| append [\n  timeseries {filtered=sum(otelcol_processor_filter_logs.filtered)},\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {filter}\n  | fieldsAdd type=\"processor\"\n]\n\n// 5. Append sent log records per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_log_records)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {exporter}\n  | fieldsAdd type=\"exporter\"\n]\n\n// 6. Append failed log records per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_log_records)}, \n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue },\n  by: {exporter}\n  | fieldsAdd type=\"exporter\"\n]\n\n// 7. Select relevant fields for output.\n| fields timeframe, interval, type, accepted, refused, receiver_failed, sent, failed, filtered, receiver, exporter",
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
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "legend": {
              "ratio": 25
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
          "description": "This tile shows how many metric datapoints have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the selected OpenTelemetry Collector instance. ",
          "query": "// This query retrieves how many metric datapoints have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the selected OpenTelemetry Collector instance.\n\n// 1. Get total accepted metric datapoints per receiver.\ntimeseries { accepted=sum(otelcol_receiver_accepted_metric_points) }, \n  by: { receiver },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }\n  | fieldsAdd name=\"accepted\", type=\"receiver\", component=receiver, value=arraySum(accepted)\n  | fieldsKeep name, type, component, value\n\n// 2. Append total refused metric datapoints per receiver.\n| append [\n  timeseries { refused=sum(otelcol_receiver_refused_metric_points) }, \n  by: { receiver },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }\n  | fieldsAdd name=\"refused\", type=\"receiver\", component=receiver, value=arraySum(refused)\n  | fieldsKeep name, type, component, value\n]\n\n// 3. Append total failed metric datapoints per receiver (failed to receive).\n| append [\n  timeseries {receiver_failed=sum(otelcol_receiver_failed_metric_points) }, \n  by: { receiver },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }  \n  | fieldsAdd name=\"receiver_failed\", type=\"receiver\", component=receiver, value=arraySum(receiver_failed)\n  | fieldsKeep name, type, component, value\n]\n\n// 4. Append total filtered metric datapoints per processor (e.g. dropped by filter processor).\n| append [\n  timeseries { filtered=sum(otelcol_processor_filter_datapoints.filtered) }, \n  by: {filter},\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }    \n  | fieldsAdd name=\"filtered\", type=\"processor\", component=filter, value=arraySum(filtered)\n  | fieldsKeep name, type, component, value\n]\n\n// 5. Append total sent metric datapoints per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_metric_points)}, \n  by: { exporter },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }  \n  | fieldsAdd name=\"sent\", type=\"exporter\", component=exporter, value=arraySum(sent)\n  | fieldsKeep name, type, component, value\n]\n\n// 6. Append total failed metric datapoints per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_metric_points) }, \n  by: { exporter },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }  \n  | fieldsAdd name=\"failed\", type=\"exporter\", component=exporter, value=arraySum(failed)\n  | fieldsKeep name, type, component, value\n]\n\n// 7. Select relevant fields for output and convert value to long.\n| fields name, type, component, value=toLong(value)",
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
                "[\"name\"]": 113.9
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
          "description": "This tile shows how many logs have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the selected OpenTelemetry Collector instance. ",
          "query": "// This query retrieves how many logs have been accepted/refused by the receivers, and how many have been sent/failed by the exporters of the selected OpenTelemetry Collector instance.\n\n// 1. Get total accepted log records per receiver.\ntimeseries { accepted=sum(otelcol_receiver_accepted_log_records) }, \n  by: { receiver },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }\n  | fieldsAdd name=\"accepted\", type=\"receiver\", component=receiver, value=arraySum(accepted)\n  | fieldsKeep name, type, component, value\n\n// 2. Append total refused log records per receiver.\n| append [\n  timeseries {refused=sum(otelcol_receiver_refused_log_records) },\n  by: { receiver },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }\n  | fieldsAdd name=\"refused\", type=\"receiver\", component=receiver, value=arraySum(refused)\n  | fieldsKeep name, type, component, value\n]\n\n// 3. Append total failed log records per receiver (failed to receive).\n| append [\n  timeseries {receiver_failed=sum(otelcol_receiver_failed_log_records) }, \n  by: { receiver },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }  \n  | fieldsAdd name=\"receiver_failed\", type=\"receiver\", component=receiver, value=arraySum(receiver_failed)\n  | fieldsKeep name, type, component, value\n]\n\n// 4. Append total filtered log records per processor (e.g. dropped by filter processor).\n| append [\n  timeseries {filtered=sum(otelcol_processor_filter_logs.filtered)},\n  by: {filter},\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }    \n  | fieldsAdd name=\"filtered\", type=\"processor\", component=filter, value=arraySum(filtered)\n  | fieldsKeep name, type, component, value\n]\n\n// 5. Append total sent log records per exporter.\n| append [\n  timeseries {sent=sum(otelcol_exporter_sent_log_records)}, \n  by: { exporter },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }  \n  | fieldsAdd name=\"sent\", type=\"exporter\", component=exporter, value=arraySum(sent)\n  | fieldsKeep name, type, component, value\n]\n\n// 6. Append total failed log records per exporter (failed to send).\n| append [\n  timeseries {failed=sum(otelcol_exporter_send_failed_log_records) }, \n  by: { exporter },\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }  \n  | fieldsAdd name=\"failed\", type=\"exporter\", component=exporter, value=arraySum(failed)\n  | fieldsKeep name, type, component, value\n]\n\n// 7. Select relevant fields for output and convert value to long.\n| fields name, type, component, value=toLong(value)",
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
                "[\"name\"]": 113.9
              }
            }
          }
        },
        "88": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "This tile shows a timeseries of the average incoming HTTP request size of the OpenTelemetry Collector.",
          "query": "timeseries {\n  avg=avg(http.server.request.body.size),\n  max=max(http.server.request.body.size)\n},\n  by: http.response.status_code,\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request size",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max",
                  "avg"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1721215462564,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1721215476940,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "max",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1751985179253,
                "baseUnit": "byte",
                "decimals": 1,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg (deprecated)",
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
          "description": "This tile shows a timeseries of the average incoming HTTP request duration of the OpenTelemetry Collector.",
          "query": "timeseries {\n  avg=avg(http.server.request.duration),\n  max=max(http.server.request.duration)\n},\n  by: http.response.status_code,\n  filter: { in(service.name, $CollectorServiceNames) and service.instance.id==$InstanceValue }",
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
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg",
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": [
              {
                "added": 1721144587869,
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1721144587869,
                "baseUnit": "second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "max",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1721144587869,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg (deprecated)",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1752498640310,
                "baseUnit": "millisecond",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "max (deprecated)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "90": {
          "content": "##### HTTP incoming",
          "title": "",
          "type": "markdown"
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
          "defaultValue": "Pick one",
          "editable": true,
          "input": "// fetch process uptime metrics and summarize by service instance id\ntimeseries sum(otelcol_process_uptime), by: {service.instance.id, k8s.pod.name, k8s.namespace.name}\n\n// collect distinct service instance ids with pod and namespace info as formatted strings\n| fieldsAdd display_value = if(\n    isNull(k8s.pod.name) and isNull(k8s.namespace.name),\n    service.instance.id,\n    else: concat(\n        coalesce(k8s.namespace.name, \"\"), \n        if(isNotNull(k8s.namespace.name) and isNotNull(k8s.pod.name), \", \", else: \"\"),\n        coalesce(k8s.pod.name, \"\"), \n        \" (\", \n        service.instance.id,\n        \")\"\n    )\n)\n| summarize values = collectDistinct(display_value), by: { service.instance.id, display_value}\n| summarize all_values = collectArray(values)\n| fields result = arrayConcat(array(\"Pick one\"), arrayFlatten(all_values))\n",
          "key": "Instance",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// Take the Instance variable and process it, so that only the service instance ID remains\n// and the pod name and namespace name are removed\ndata record()\n| fields extracted_value = if(\n    contains($Instance, \"(\"),\n    substring($Instance, \n        from: indexOf($Instance, \"(\") + 1, \n        to: indexOf($Instance, \")\")\n    ),\n    else: $Instance\n)\n",
          "key": "InstanceValue",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.opentelemetry.otelcol-singleCollector"
  # private = false
}
