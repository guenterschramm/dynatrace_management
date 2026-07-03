resource "dynatrace_document" "OTEL_Application_Dashboard" {
  name    = "OTEL Application Dashboard"
  type    = "dashboard"
  content = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 8,
          "w": 9,
          "x": 0,
          "y": 39
        },
        "1": {
          "h": 8,
          "w": 9,
          "x": 9,
          "y": 39
        },
        "11": {
          "h": 10,
          "w": 9,
          "x": 0,
          "y": 19
        },
        "12": {
          "h": 1,
          "w": 18,
          "x": 0,
          "y": 47
        },
        "13": {
          "h": 1,
          "w": 22,
          "x": 0,
          "y": 0
        },
        "15": {
          "h": 9,
          "w": 9,
          "x": 0,
          "y": 1
        },
        "16": {
          "h": 9,
          "w": 9,
          "x": 9,
          "y": 1
        },
        "17": {
          "h": 9,
          "w": 18,
          "x": 0,
          "y": 10
        },
        "2": {
          "h": 1,
          "w": 19,
          "x": 0,
          "y": 38
        },
        "20": {
          "h": 1,
          "w": 18,
          "x": 0,
          "y": 83
        },
        "21": {
          "h": 8,
          "w": 9,
          "x": 0,
          "y": 57
        },
        "22": {
          "h": 8,
          "w": 9,
          "x": 9,
          "y": 57
        },
        "23": {
          "h": 8,
          "w": 9,
          "x": 0,
          "y": 66
        },
        "24": {
          "h": 8,
          "w": 9,
          "x": 9,
          "y": 66
        },
        "25": {
          "h": 1,
          "w": 18,
          "x": 0,
          "y": 56
        },
        "26": {
          "h": 1,
          "w": 18,
          "x": 0,
          "y": 65
        },
        "27": {
          "h": 8,
          "w": 18,
          "x": 0,
          "y": 75
        },
        "28": {
          "h": 1,
          "w": 18,
          "x": 0,
          "y": 74
        },
        "5": {
          "h": 8,
          "w": 9,
          "x": 0,
          "y": 48
        },
        "6": {
          "h": 8,
          "w": 9,
          "x": 9,
          "y": 48
        },
        "7": {
          "h": 9,
          "w": 18,
          "x": 0,
          "y": 29
        },
        "9": {
          "h": 10,
          "w": 9,
          "x": 9,
          "y": 19
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries { avg(process.runtime.cpython.cpu.utilization), value.A = avg(process.runtime.cpython.cpu.utilization, scalar: true) }, by: { metric.key }\n| limit 20",
          "queryConfig": {
            "globalCommands": {
              "limit": 20
            },
            "subQueries": [
              {
                "by": [
                  "metric.key"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "key": "process.runtime.cpython.cpu.utilization"
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
          "title": "Python Services CPU Consumption",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(process.runtime.cpython.cpu.utilization)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "service"
              ],
              "truncationMode": "middle"
            }
          }
        },
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries { avg(process.runtime.cpython.memory), value.A = avg(process.runtime.cpython.memory, scalar: true) }, by: { metric.key }\n| limit 20",
          "queryConfig": {
            "globalCommands": {
              "limit": 20
            },
            "subQueries": [
              {
                "by": [
                  "metric.key"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "key": "process.runtime.cpython.memory"
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
          "title": "Python Services Memory Consumption",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "A: avg(process.runtime.cpython.memory)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "service"
              ],
              "truncationMode": "middle"
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
          "query": "fetch spans\n\n| fieldsAdd trace_id = toString(trace.id), service.name\n| filter span.status_code==\"error\"\n| makeTimeseries { count() }, by: {service.name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Failed Spans over Time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "count()"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "service"
              ],
              "truncationMode": "middle"
            }
          }
        },
        "12": {
          "content": "# Go Service Metrics",
          "type": "markdown"
        },
        "13": {
          "content": "# Service Level Monitoring",
          "type": "markdown"
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch spans, from: -30m, to: now(), scanLimitGBytes: 500\n\n// lookup service entity and use the service entity name as span attribute\n//| lookup [fetch dt.entity.service], sourceField: dt.entity.service, lookupField: id, fields: { service.name = entity.name }\n\n| summarize { http_spans=count() }, by: { span.name, service.name }\n\n// top 10\n| sort http_spans desc | limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top Spans",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "span.name",
                "categoryAxisLabel": "span.name",
                "valueAxis": "http_spans",
                "valueAxisLabel": "http_spans"
              },
              "categoryOverrides": {},
              "truncationMode": "middle"
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
                }
              ]
            }
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch spans, from: -30m, to: now(), scanLimitGBytes: 500\n\n// endpoint spans only\n| filter isNotNull(endpoint.name)\n\n// lookup service entity and use the service entity name as span attribute\n//| lookup [fetch dt.entity.service], sourceField: dt.entity.service, lookupField: id, fields: { service.name = entity.name }\n\n| summarize { p50=median(duration) }, by: { service.name }\n\n| limit 100\n| sort p50 desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Response time per service",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "service.name",
                "categoryAxisLabel": "service.name",
                "valueAxis": "p50",
                "valueAxisLabel": "p50"
              },
              "categoryOverrides": {},
              "truncationMode": "middle"
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
                }
              ]
            }
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch spans, from: -30m, to: now(), scanLimitGBytes: 500\n\n// lookup service entity and use the service entity name as span attribute\n//| lookup [fetch dt.entity.service], sourceField: dt.entity.service, lookupField: id, fields: { service.name = entity.name }\n\n| summarize { total=count(), total_errors=countIf(span.status_code==\"error\") }, by: { span.name, service.name }\n| fieldsAdd error_rate=100.0*toDouble(total_errors)/toDouble(total)\n// top 100\n| sort error_rate desc | limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Error Rate per Span",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "span.name",
                "categoryAxisLabel": "span.name",
                "layout": "vertical",
                "valueAxis": [
                  "error_rate"
                ],
                "valueAxisLabel": "error_rate"
              },
              "categoryOverrides": {},
              "truncationMode": "middle"
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
                }
              ]
            }
          }
        },
        "2": {
          "content": "# Python Service Metrics",
          "type": "markdown"
        },
        "20": {
          "content": "# Application Specific Analyses",
          "type": "markdown"
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries `A: avg(jvm.cpu.recent_utilization)` = avg(jvm.cpu.recent_utilization), by: { service.name }\n| limit 20",
          "queryConfig": {
            "globalCommands": {
              "limit": 20
            },
            "subQueries": [
              {
                "by": [
                  "service.name"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "key": "jvm.cpu.recent_utilization"
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
          "title": "CPU Usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "A: avg(jvm.cpu.recent_utilization)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle"
            },
            "dataMapping": {
              "displayedFields": [
                "service.name"
              ]
            }
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries `A: avg(jvm.memory.used)` = avg(jvm.memory.used), by: { service.name }\n| limit 20",
          "queryConfig": {
            "globalCommands": {
              "limit": 20
            },
            "subQueries": [
              {
                "by": [
                  "service.name"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "key": "jvm.memory.used"
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
          "title": "Memory Usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "A: avg(jvm.memory.used)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle"
            },
            "dataMapping": {
              "displayedFields": [
                "service.name"
              ]
            }
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries { avg(process.runtime.dotnet.thread_pool.threads.count), value.A = avg(process.runtime.dotnet.thread_pool.threads.count, scalar: true) }, by: { metric.key }\n| limit 20",
          "queryConfig": {
            "globalCommands": {
              "limit": 20
            },
            "subQueries": [
              {
                "by": [
                  "metric.key"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "key": "process.runtime.dotnet.thread_pool.threads.count"
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
          "title": "Thread Count",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "A: avg(process.runtime.dotnet.thread_pool.threads.count)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "service"
              ],
              "truncationMode": "middle"
            }
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries { avg(process.runtime.dotnet.gc.heap.size), value.A = avg(process.runtime.dotnet.gc.heap.size, scalar: true) }, by: { metric.key }\n| limit 20",
          "queryConfig": {
            "globalCommands": {
              "limit": 20
            },
            "subQueries": [
              {
                "by": [
                  "metric.key"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "key": "process.runtime.dotnet.gc.heap.size"
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
          "title": "Heap Size",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "A: avg(process.runtime.dotnet.gc.heap.size)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "service"
              ],
              "truncationMode": "middle"
            }
          }
        },
        "25": {
          "content": "# Java Services",
          "type": "markdown"
        },
        "26": {
          "content": "# .NET Services",
          "type": "markdown"
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries { avg(kafka.consumer.request_rate), value.A = avg(kafka.consumer.request_rate, scalar: true) }, by: { metric.key }\n| limit 20",
          "queryConfig": {
            "globalCommands": {
              "limit": 20
            },
            "subQueries": [
              {
                "by": [
                  "metric.key"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "key": "kafka.consumer.request_rate"
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
          "title": "Kafka Consumer Request Rate",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "A: avg(kafka.consumer.request_rate)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "service"
              ],
              "truncationMode": "middle"
            }
          }
        },
        "28": {
          "content": "# Kafka",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries { avg(process.runtime.go.mem.heap_inuse), value.A = avg(process.runtime.go.mem.heap_inuse, scalar: true) }, by: { metric.key }\n| limit 20",
          "queryConfig": {
            "globalCommands": {
              "limit": 20
            },
            "subQueries": [
              {
                "by": [
                  "metric.key"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "key": "process.runtime.go.mem.heap_inuse"
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
          "title": "Heap Usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(process.runtime.go.mem.heap_inuse)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "service"
              ],
              "truncationMode": "middle"
            }
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "timeseries { avg(process.runtime.go.goroutines), value.A = avg(process.runtime.go.goroutines, scalar: true) }, by: { metric.key }\n| limit 20",
          "queryConfig": {
            "globalCommands": {
              "limit": 20
            },
            "subQueries": [
              {
                "by": [
                  "metric.key"
                ],
                "convertToValue": "Avg",
                "datatype": "metrics",
                "filter": "",
                "id": "A",
                "isEnabled": true,
                "metric": {
                  "aggregation": "avg",
                  "key": "process.runtime.go.goroutines"
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
          "title": "Goroutines",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(process.runtime.go.goroutines)"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "service"
              ],
              "truncationMode": "middle"
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
          "query": "fetch spans\n\n| fieldsAdd trace_id = toString(trace.id), service.name\n| join [ fetch logs ]\n  , on:{ left[trace_id] == right[trace_id] }\n  , fields: { content, loglevel, status }\n| filter matchesPhrase(content, \"\") and span.status_code==\"error\"\n| fields service.name, span.status_code, duration=end_time-start_time, loglevel, content,trace.id, span.id, start_time, end_time\n\n| limit 50",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Errored Spans with Logs",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "sortBy": {
                "columnId": "[\"duration\"]",
                "direction": "descending"
              }
            }
          }
        },
        "9": {
          "davis": {
            "componentState": {
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 1,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "now",
                      "startTime": "now-2h"
                    }
                  },
                  "query": "fetch spans, from: -30m, to: now(), scanLimitGBytes: 500\n\n\n// endpoint spans only\n| filter isNotNull(endpoint.name)\n\n// lookup service entity and use the service entity name as span attribute\n//| lookup [fetch dt.entity.service], sourceField: dt.entity.service, lookupField: id, fields: { service.name = entity.name }\n\n| makeTimeseries { p95=percentile(duration, 0.95) }, by: { service.name }, time: start_time\n\n// only slowest 30\n| sort arraySum(p95) | limit 30"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch spans, scanLimitGBytes: 500\n\n\n// endpoint spans only\n| filter isNotNull(endpoint.name)\n\n// lookup service entity and use the service entity name as span attribute\n//| lookup [fetch dt.entity.service], sourceField: dt.entity.service, lookupField: id, fields: { service.name = entity.name }\n\n| makeTimeseries { p95=percentile(duration, 0.95) }, by: { service.name }, time: start_time\n\n// only slowest 30\n| sort arraySum(p95) | limit 30",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "P95 Response time over Time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "p95"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle"
            },
            "dataMapping": {
              "displayedFields": [
                "service.name"
              ]
            }
          }
        }
      },
      "variables": [],
      "version": 21
    })
  private = true
}
