resource "dynatrace_document" "ActiveGate_diagnostic_overview" {
  name      = "ActiveGate diagnostic overview"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "11": {
          "h": 7,
          "w": 8,
          "x": 0,
          "y": 24
        },
        "15": {
          "h": 4,
          "w": 8,
          "x": 0,
          "y": 2
        },
        "16": {
          "h": 4,
          "w": 8,
          "x": 8,
          "y": 2
        },
        "2": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "20": {
          "h": 6,
          "w": 6,
          "x": 12,
          "y": 39
        },
        "22": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 33
        },
        "23": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 39
        },
        "27": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 31
        },
        "30": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 47
        },
        "31": {
          "h": 7,
          "w": 8,
          "x": 0,
          "y": 53
        },
        "32": {
          "h": 7,
          "w": 8,
          "x": 16,
          "y": 53
        },
        "34": {
          "h": 7,
          "w": 8,
          "x": 16,
          "y": 17
        },
        "37": {
          "h": 7,
          "w": 8,
          "x": 0,
          "y": 8
        },
        "38": {
          "h": 7,
          "w": 8,
          "x": 0,
          "y": 17
        },
        "39": {
          "h": 7,
          "w": 8,
          "x": 8,
          "y": 17
        },
        "40": {
          "h": 7,
          "w": 8,
          "x": 8,
          "y": 24
        },
        "41": {
          "h": 7,
          "w": 8,
          "x": 16,
          "y": 24
        },
        "48": {
          "h": 6,
          "w": 6,
          "x": 18,
          "y": 39
        },
        "49": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "5": {
          "h": 7,
          "w": 8,
          "x": 8,
          "y": 8
        },
        "51": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 45
        },
        "52": {
          "h": 7,
          "w": 8,
          "x": 8,
          "y": 53
        },
        "8": {
          "h": 7,
          "w": 8,
          "x": 16,
          "y": 8
        },
        "9": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 15
        }
      },
      "settings": {},
      "tiles": {
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  gc_time=avg(dt.sfm.active_gate.jvm.gc.major_collection_time, rollup:sum), interval:10m\n}, by: {\n  dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n}\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| fieldsAdd gc_relative=100*duration(toLong(gc_time[]),\"ms\")/interval\n| fieldsRemove gc_time\n| summarize avg(gc_relative[]), by: {timeframe,interval,host, instance, networkzone, group}\n\n\n\n\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "JVM GC time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(gc_relative[])"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 5
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 10
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715857038729,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "percent",
                "identifier": "avg(gc_relative[])",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "timeseries {\n   cpu_usage = count(dt.sfm.active_gate.system.cpu_usage)\n }, by: {\n   dt.network_zone.id, dt.active_gate.id\n }\n| fieldsAdd network_zone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| summarize by:{network_zone}, total_active_gates = countDistinctExact(dt.active_gate.id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "ActiveGates per network zone",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "network_zone",
                "valueAxis": "total_active_gates"
              },
              "colorPalette": "blue-steel",
              "legend": {
                "hidden": true
              }
            },
            "thresholds": []
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n   cpu_usage = count(dt.sfm.active_gate.system.cpu_usage)\n }, by: {\n   dt.active_gate.group.name, dt.active_gate.id\n }\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| summarize by:{group}, total_active_gates = countDistinctExact(dt.active_gate.id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "ActiveGates per group",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "group",
                "categoryAxisLabel": "group",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": "total_active_gates",
                "valueAxisLabel": "total_active_gates"
              },
              "colorPalette": "blue-steel",
              "legend": {
                "hidden": true
              }
            },
            "thresholds": []
          }
        },
        "2": {
          "content": "### Host vitals\n\nHealth metrics regarding host or container where ActiveGate is running are shown here.\n___",
          "type": "markdown"
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries agent_modules.connected = max(dt.sfm.active_gate.communication.agent_modules.connected)\n,by: {\n   dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n }\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| summarize avg(agent_modules.connected[]), by: {timeframe,interval, host, instance, networkzone, group}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Agent modules connected",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(agent_modules.connected[])"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "networkzone",
                "group"
              ]
            },
            "thresholds": []
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  sent = avg(dt.sfm.active_gate.traffic.server.sent),\n  received = avg(dt.sfm.active_gate.traffic.server.received)\n  },\nby: {\n  dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, \n host.name}, union:true\n\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| summarize egress = avg(sent[]), ingress = avg(received[]), by: { timeframe, interval, host, instance, networkzone, group}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network traffic to/from clients",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "egress",
                  "ingress"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "networkzone",
                "group",
                "egress",
                "ingress",
                "host",
                "instance"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1721987605177,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "egress",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1721987668528,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "ingress",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Note: Chart is not drawn when no errors reported within timeframe",
          "query": "timeseries {\n  sent = avg(dt.sfm.active_gate.traffic.client.sent, default: 0),\n  received = avg(dt.sfm.active_gate.traffic.client.received, default: 0)\n  \n  },\nby: {\n  dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n }, union: true\n\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| summarize egress = avg(sent[]), ingress = avg(received[]), by: { timeframe, interval, host, instance, networkzone, group}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network traffic to/from Dynatrace environment",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "egress",
                  "ingress"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "networkzone",
                "group",
                "egress",
                "ingress"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1721999569302,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "egress",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1721999577005,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "ingress",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "27": {
          "content": "## Networking\n\nNetwork traffic and agent communication overview. Dropped message metrics is very important, non-zero values indicate data loss.\n___",
          "type": "markdown"
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n    requests = max(dt.sfm.active_gate.rest.request_count)\n  }\n,by: {\n   operation, dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n }\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| summarize avg(requests[]), by: {timeframe,interval, host, instance, networkzone, group, operation}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "REST.API calls",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(requests[])"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "networkzone",
                "group",
                "operation"
              ]
            },
            "thresholds": []
          }
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n    requests = max(dt.sfm.active_gate.rest.request_count, default: 0)\n  }\n,by: {\n   operation, dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, response_code, host.name\n }, nonempty: true\n\n| filter toLong(response_code) \u003e 399\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n  \n| summarize requests = avg(requests[]), by: { timeframe, interval, host, instance, networkzone, group, operation, response_code}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "REST.API errors",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "requests"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "max": {
                  "mode": "data-max"
                },
                "min": {
                  "mode": "custom",
                  "value": 0
                }
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "networkzone",
                "group",
                "operation",
                "response_code"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1716364170181,
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
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n    requests = max(dt.sfm.active_gate.rest.request_size),\n    responses = max(dt.sfm.active_gate.rest.response_size)\n  }\n,by: {\n   operation, dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n }\n \n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| summarize request = avg(requests[]), by: { timeframe, interval, host, instance, networkzone, group, operation}\n ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Request size",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "request"
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
            "dataMapping": {
              "displayedFields": [
                "networkzone",
                "group",
                "operation"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1721987724842,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1721987867736,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  size=avg(dt.sfm.active_gate.storage.directory.size), \n  limit=avg(dt.sfm.active_gate.storage.directory.limit)\n}, by: {\n  dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id,  volume, module_name, host.name\n}\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n// calculate usage [%]\n| fieldsAdd used_space = (size[])/limit[] * 100\n| fieldsRemove size, limit\n\n\n| summarize bal = avg(used_space[]), by: {timeframe,interval, host, instance, networkzone, group, volume, module_name}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 100000
          },
          "title": "Directory quotas",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "bal"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 50
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 80
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1716205214582,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bal",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  usage = avg(dt.sfm.active_gate.system.cpu_usage)\n}, by: {\n  dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n}\n\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| summarize bal = avg(usage[]), by: {timeframe,interval, host, instance, networkzone, group}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "bal"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 70
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715682538547,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "percent",
                "identifier": "bal",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  usage = avg(dt.sfm.active_gate.jvm.cpu_usage)\n}, by: {\n  dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n}\n\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| summarize bal = avg(usage[]), by: {timeframe,interval, host, instance, networkzone, group}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "bal"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 70
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715682538547,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "percent",
                "identifier": "bal",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  avail_memory=avg(dt.sfm.active_gate.jvm.heap_memory_available),\n  used_memory=avg(dt.sfm.active_gate.jvm.heap_memory_used)\n}, by: {\n  dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n}\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n// calculate usage [%]\n| fieldsAdd memory_usage = (used_memory[])/avail_memory[] * 100\n| fieldsRemove used_memory, avail_memory\n\n\n| summarize bal = avg(memory_usage[]), by: {timeframe,interval, host, instance, networkzone, group}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory       ",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "bal"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 70
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715682538547,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "percent",
                "identifier": "bal",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  busythreads = max(dt.sfm.active_gate.thread_pool.busy_threads)\n}, by: {\n  dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, thread_pool_name, host.name\n}\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| summarize avg(busythreads[]), by: {timeframe,interval, host, instance, networkzone, group, thread_pool_name}\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Thread pool busy threads",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(busythreads[])"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 70
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715682538547,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "percent",
                "identifier": "memory_usage",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "timeseries {\n  queue_size = max(dt.sfm.active_gate.thread_pool.queue_size)\n}, by: {\n  dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, thread_pool_name, host.name\n}\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| summarize avg(queue_size[]), by: {timeframe,interval, host, instance, networkzone, group, thread_pool_name}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Thread pool queues sizes",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "avg(queue_size[])"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 70
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715682538547,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "percent",
                "identifier": "memory_usage",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "timeseries {\n    messages_dropped = max(dt.sfm.active_gate.communication.messages.dropped, default: 0),\n    messages_rejected = max(dt.sfm.active_gate.communication.messages.rejected, default: 0),\n    messages_resent = max(dt.sfm.active_gate.communication.messages.resent, default: 0)  }\n ,by: {\n    dt.network_zone.id, dt.active_gate.id, dt.active_gate.group.name,\n host.name  }, union: true, nonempty: true\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| summarize dropped=max(messages_dropped[]), rejected=max(messages_rejected[]), resent=max(messages_resent[]), by: {timeframe, interval, host, instance, networkzone, group }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Dropped, resent \u0026 rejected messages",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "networkzone",
                "group",
                "dropped",
                "rejected",
                "resent"
              ]
            },
            "thresholds": []
          }
        },
        "49": {
          "content": "### ActiveGate diagnostic overview\n\nGet visibility into utilization and resource usage of your ActiveGates. If you don't see data, that means you don't have any [ActiveGate](https://docs.dynatrace.com/docs/shortlink/activegate-landing) deployed yet,",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n  total_memory=avg(dt.sfm.active_gate.system.total_memory),\n  free_memory=avg(dt.sfm.active_gate.system.free_memory)\n}, by: {\n  dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n}\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n// calculate usage [%]\n| fieldsAdd memory_usage = (total_memory[] - free_memory[])/total_memory[] * 100\n| fieldsRemove free_memory, total_memory\n\n| summarize bal = avg(memory_usage[]), by: {timeframe,interval, host, instance, networkzone, group}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "bal"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 40
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 70
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1715682538547,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": "percent",
                "identifier": "bal",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "51": {
          "content": "### REST.API\n\nOverview of REST API calls handled by ActiveGates. There should be no REST.API errors reported.",
          "type": "markdown"
        },
        "52": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries {\n    responses = max(dt.sfm.active_gate.rest.response_size)\n  }\n,by: {\n   operation, dt.network_zone.id, dt.active_gate.group.name, host.name, dt.active_gate.id\n }\n \n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n| summarize response = avg(responses[]), by: { timeframe, interval, host, instance, networkzone, group, operation}\n ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Response size",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "response"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "networkzone",
                "group",
                "operation"
              ]
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1721987724842,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "request",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1721987867736,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "response",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "timeseries {\n  free_space=avg(dt.sfm.active_gate.storage.volume.free),\n  total_space=avg(dt.sfm.active_gate.storage.volume.total)\n  },\n  by: { volume, host.name, dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id}\n\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd host= if($SplitByInstance == \"Yes\", host.name, else: null)\n\n// replace null dimensions with 'default' \n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsRemove dt.network_zone.id, dt.active_gate.group.name, dt.active_gate.id, host.name\n\n// apply filtering by variables\n// apply filtering by variables\n| filter isNull(host) or in(host, $HostName)\n| filter isNull(instance) or in(instance, {$InstanceId})\n| filter isNull(networkzone) or in(networkzone, $NetworkZone)\n| filter isNull(group) or in(group, {$Group})\n\n\n| fieldsAdd usage=(total_space[]-free_space[])/(total_space[]) * 100\n| fieldsRemove total_space, free_space\n\n| summarize usage = avg(usage[]), by: {timeframe,interval, host, instance, networkzone, group, volume}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Storage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "blue-steel",
              "fieldMapping": {
                "leftAxisValues": [
                  "usage"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": false,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-09-default, #649438)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": "",
                    "value": 0
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 50
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 80
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1716202730043,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "usage",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "9": {
          "content": "### Process\n\nHealth metrics regarding ActiveGate java process are shown here.\n___",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "timeseries {\n  inputa=avg(dt.sfm.active_gate.jvm.cpu_usage)\n  }, by: { \n    dt.network_zone.id \n  } \n| fieldsAdd nzordflt = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| summarize distinctNetworkZones = collectDistinct(nzordflt)\n| fieldsAdd distinctNetworkZones",
          "key": "NetworkZone",
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
          "input": "timeseries avg(dt.sfm.active_gate.jvm.cpu_usage), \n  by: { dt.active_gate.group.name, dt.network_zone.id  }\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| filter in(networkzone, {$NetworkZone})\n| dedup group\n| fields group",
          "key": "Group",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "No",
          "editable": true,
          "input": "Yes,No",
          "key": "SplitByInstance",
          "multiple": false,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "timeseries avg(dt.sfm.active_gate.jvm.cpu_usage), \n  by: { dt.active_gate.group.name, dt.network_zone.id, dt.active_gate.id, host.name }\n\n// add extra columns to deal with null/default dimensions\n| fieldsAdd instance= if($SplitByInstance == \"Yes\", dt.active_gate.id, else: null)\n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n\n// apply filtering by variables\n| filter in(networkzone, {$NetworkZone})\n| filter in(group, {$Group})\n| dedup dt.active_gate.id\n| fields dt.active_gate.id",
          "key": "InstanceId",
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
          "input": "timeseries avg(dt.sfm.active_gate.jvm.cpu_usage), \n  by: { dt.active_gate.group.name, dt.network_zone.id, host.name, dt.active_gate.id }\n\n// add extra columns to deal with null/default dimensions\n| fieldsAdd networkzone = if(isNull(dt.network_zone.id), \"default\", else: dt.network_zone.id)\n| fieldsAdd group = if(isNull(dt.active_gate.group.name), \"default\", else: dt.active_gate.group.name)\n\n// apply filtering by variables\n| filter in(networkzone, {$NetworkZone})\n| filter in(group, {$Group}) \n| filter in(dt.active_gate.id, {$InstanceId})\n| dedup host.name\n| fields host.name",
          "key": "HostName",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 20
    })
  custom_id = "dynatrace.discovery.coverage.activegate-diagnostic-overview"
  # private = false
}
