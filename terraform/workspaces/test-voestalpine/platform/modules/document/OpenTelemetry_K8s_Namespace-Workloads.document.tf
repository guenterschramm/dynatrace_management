resource "dynatrace_document" "OpenTelemetry_K8s_Namespace-Workloads" {
  name      = "OpenTelemetry K8s Namespace - Workloads"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "13": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 7
        },
        "15": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "17": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "18": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 20
        },
        "19": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "20": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 26
        },
        "21": {
          "h": 4,
          "w": 10,
          "x": 0,
          "y": 2
        },
        "22": {
          "h": 4,
          "w": 7,
          "x": 10,
          "y": 2
        },
        "23": {
          "h": 4,
          "w": 7,
          "x": 17,
          "y": 2
        },
        "24": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 35
        },
        "25": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 35
        },
        "28": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 39
        },
        "29": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 39
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "34": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "35": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "36": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 51
        }
      },
      "settings": {},
      "tiles": {
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "CPU usage amounts per workload in the selected namespace.\n",
          "query": "// Retrieve CPU usage for each workload in the namespace.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metrics.\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // Only show workloads that match the selected workload types.\n  in(k8s.workload.kind, array($Type))\n  // Split by the kind/type and name of each workload.\n}, by: { k8s.workload.name, k8s.workload.kind }\n// Sort by the workloads that use the most CPU to the ones that use the least.\n| sort cpu_usage desc\n// Only show 20 workloads to keep the graph readable.\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU Usage per Workload",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.workload.name",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "cpu_usage"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - CPU usage"
              },
              "legend": {
                "hidden": false,
                "position": "bottom"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application",
                "k8s.workload.name",
                "k8s.workload.kind"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application"
              },
              "displayedFields": [
                "dt.entity.cloud_application"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "cpu_usage"
                  ],
                  "id": 1734617080934,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1715178821410,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "cpu_usage",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "CPU usage of every workload in the namespace, with CPU requests and limits and their usage\n",
          "query": "// Retrieve CPU usage and limits, then calculate what percent of limits are used.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metrics.\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup:avg),\n  requests_cpu = sum(k8s.container.cpu_request, rollup:avg),\n  limits_cpu = sum(k8s.container.cpu_limit, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // Only show workloads that match the selected workload types.\n  in(k8s.workload.kind, array($Type))\n  // Split by the kind/type and name of each workload.\n}, by: { k8s.workload.name, k8s.workload.kind },\n// Show data from the previous minute.\nfrom: -2m, to: -1m,\n// Include results which have no requests or limits defined (shown as null).\nunion: true\n// The interval and timeframe aren't required, so remove them.\n| fieldsRemove interval, timeframe\n// Only retrieve the latest values, which are the last in the array.\n| fieldsAdd cpu_usage = arrayLast(cpu_usage)\n| fieldsAdd requests_cpu = arrayLast(requests_cpu)\n| fieldsAdd limits_cpu = arrayLast(limits_cpu)\n| fieldsAdd requests_cpu_percent = cpu_usage / requests_cpu * 100\n| fieldsAdd limits_cpu_percent = cpu_usage / limits_cpu * 100\n| fieldsAdd cpu_slack = (requests_cpu - cpu_usage) / 1000\n// Sort the results so the workloads with the most CPU usage are on top.\n| sort cpu_usage desc\n// Rename the fields for easier reading in column titles.\n| fieldsRename `Name` = k8s.workload.name, `Type` = k8s.workload.kind, `CPU Usage` = cpu_usage, `CPU Requests` = requests_cpu, `CPU Requests %` = requests_cpu_percent, `CPU Limits` = limits_cpu, `CPU Limits %` = limits_cpu_percent, `CPU Slack` = cpu_slack\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU Quota",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application",
                "valueAxisLabel": "CPU Usage"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "CPU Usage"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application",
                "Name",
                "Type"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application"
              },
              "displayedFields": [
                "dt.entity.cloud_application"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"CPU Limits %\"]": 147.328125,
                "[\"cpu_throttled\"]": 164.46875,
                "[\"cpu_usage\"]": 157.8125,
                "[\"limits_cpu\"]": 124.046875,
                "[\"limits_cpu_percent\"]": 175.859375,
                "[\"namespace.name\"]": 231.140625,
                "[\"requests_cpu\"]": 142.453125,
                "[\"requests_cpu_percent\"]": 191.28125
              },
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "namespace.id"
                ],
                [
                  "namespace.labels"
                ],
                [
                  "namespace.annotations"
                ],
                [
                  "namespace.age"
                ],
                [
                  "cluster.id"
                ],
                [
                  "id"
                ],
                [
                  "dt.entity.cloud_application"
                ]
              ],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1715618539759,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Usage",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715618597827,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Requests",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715618609828,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Limits",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715618618693,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Slack",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1715686358414,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Requests %",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1715687708509,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Limits %",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "17": {
          "content": "### CPU\n",
          "type": "markdown"
        },
        "18": {
          "content": "### Memory",
          "type": "markdown"
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Memory usage amounts per workload in the selected namespace.\n",
          "query": "// Retrieve memory usage and limits, then calculate what percent of limits are used.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metrics.\n  memory_usage = sum(k8s.pod.memory.usage, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // Only show workloads that match the selected workload types.\n  in(k8s.workload.kind, array($Type))\n  // Split by the kind/type and name of each workload.\n}, by: { k8s.workload.name, k8s.workload.kind }\n// Sort by the workloads that use the most memory to the ones that use the least.\n| sort memory_usage desc\n// Only show 20 workloads to keep the graph readable.\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory Usage per Workload",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "k8s.workload.name",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "memory_usage"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Container - working set memory"
              },
              "legend": {
                "hidden": false,
                "position": "bottom"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application",
                "k8s.workload.name",
                "k8s.workload.kind"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application"
              },
              "displayedFields": [
                "dt.entity.cloud_application"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "memory_usage"
                  ],
                  "id": 1734615577029,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
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
          "description": "Memory usage of every workload in the namespace, with memory requests and limits and their usage\n",
          "query": "// Retrieve memory usage and quota for each workload in the namespace.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metrics.\n  memory_usage = sum(k8s.pod.memory.usage, rollup:avg),\n  requests_memory = sum(k8s.container.memory_request, rollup:avg),\n  limits_memory = sum(k8s.container.memory_limit, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // Only show workloads that match the selected workload types.\n  in(k8s.workload.kind, array($Type))\n  // Split by the kind/type and name of each workload.\n}, by: { k8s.workload.name, k8s.workload.kind },\n// Show data from the previous minute.\nfrom: -2m, to: -1m,\n// Include results which have no requests or limits defined (shown as null).\nunion: true\n// The interval and timeframe aren't required, so remove them.\n| fieldsRemove interval, timeframe\n// Only retrieve the latest values, which are the last in the array.\n| fieldsAdd memory_usage = arrayLast(memory_usage)\n| fieldsAdd requests_memory = arrayLast(requests_memory)\n| fieldsAdd limits_memory = arrayLast(limits_memory)\n| fieldsAdd requests_memory_percent = memory_usage / requests_memory * 100\n| fieldsAdd limits_memory_percent = memory_usage / limits_memory * 100\n| fieldsAdd memory_slack = (requests_memory - memory_usage)\n// Sort the results so the workloads with the most memory usage are on top.\n| sort memory_usage desc\n// Rename the fields for easier reading in column titles.\n| fieldsRename `Name` = k8s.workload.name, `Type` = k8s.workload.kind, `Memory Usage` = memory_usage, `Memory Requests` = requests_memory, `Memory Requests %` = requests_memory_percent, `Memory Limits` = limits_memory, `Memory Limits %` = limits_memory_percent, `Memory Slack` = memory_slack",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 20000
          },
          "title": "Memory Quota",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application",
                "valueAxisLabel": "Memory Usage"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Usage"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Requests"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Limits"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Requests %"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Limits %"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Slack"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application",
                "Name",
                "Type"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "dt.entity.cloud_application"
              },
              "displayedFields": [
                "dt.entity.cloud_application"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnOrder": [
                "[\"Name\"]",
                "[\"Type\"]",
                "[\"Memory Usage\"]",
                "[\"Memory Requests\"]",
                "[\"Memory Limits\"]",
                "[\"Memory Requests %\"]",
                "[\"Memory Limits %\"]",
                "[\"Memory Slack\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"cpu_throttled\"]": 164.46875,
                "[\"cpu_usage\"]": 157.8125,
                "[\"limits_cpu\"]": 124.046875,
                "[\"limits_cpu_percent\"]": 175.859375,
                "[\"namespace.name\"]": 231.140625,
                "[\"requests_cpu\"]": 142.453125,
                "[\"requests_cpu_percent\"]": 191.28125
              },
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "id"
                ],
                [
                  "namespace.id"
                ],
                [
                  "namespace.labels"
                ],
                [
                  "namespace.annotations"
                ],
                [
                  "namespace.age"
                ],
                [
                  "cluster.id"
                ],
                [
                  "dt.entity.cloud_application"
                ]
              ],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1715698159493,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Usage",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1715698181310,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Requests",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1715698189862,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Requests %",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1715698204816,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Limits",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1715698213152,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Limits %",
                "suffix": "",
                "unitCategory": "percentage"
              },
              {
                "added": 1715698222294,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Slack",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Overview of CPU and memory usage in the namespace, split by workload type.\n",
          "query": "// Retrieve CPU and memory usage metrics for each pod.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metrics.\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup:avg),\n  memory_usage = sum(k8s.pod.memory.usage, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  NOT isNull(k8s.workload.kind)\n  // Split by the kind/type of workload.\n}, by: { k8s.workload.kind },\n// Show data from the previous minute.\nfrom: -2m, to: -1m\n// The interval and timeframe aren't required, so remove them.\n| fieldsRemove interval, timeframe\n// Only retrieve the latest values, which are the last in the array.\n| fieldsAdd cpu_usage = arrayLast(cpu_usage)\n| fieldsAdd memory_usage = arrayLast(memory_usage)\n// Rename the fields for easier reading in column titles.\n| fieldsRename `CPU Usage` = `cpu_usage`, `Memory Usage` = `memory_usage`, `Type` = `k8s.workload.kind`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Usage Overview",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "Type",
                "valueAxisLabel": "CPU Usage"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": []
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "CPU Usage"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Usage"
                }
              ],
              "displayedFields": [
                "Type"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "Type"
              },
              "displayedFields": [
                "Type"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"CPU Usage\"]": 172.09375,
                "[\"cpu_throttled\"]": 164.46875,
                "[\"cpu_usage\"]": 157.8125,
                "[\"limits_cpu\"]": 124.046875,
                "[\"limits_cpu_percent\"]": 175.859375,
                "[\"namespace.name\"]": 231.140625,
                "[\"requests_cpu\"]": 142.453125,
                "[\"requests_cpu_percent\"]": 191.28125
              },
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "namespace.id"
                ],
                [
                  "namespace.labels"
                ],
                [
                  "namespace.annotations"
                ],
                [
                  "namespace.age"
                ],
                [
                  "cluster.id"
                ],
                [
                  "id"
                ]
              ],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1717575708941,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Usage",
                "suffix": "",
                "unitCategory": "unspecified"
              },
              {
                "added": 1717575771158,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Usage",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of CPU usage in the namespace per workload type.\n",
          "query": "// Retrieve CPU usage for each workload in the namespace.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metric.\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  NOT isNull(k8s.workload.kind)\n  // Split by the kind/type of workload.\n}, by: { k8s.workload.kind },\n// Show data from the previous minute.\nfrom: -2m, to: -1m\n// Only retrieve the latest values, which are the last in the array.\n| fieldsAdd cpu_usage = arrayLast(cpu_usage)\n// Rename the fields for easier reading in column titles.\n| fieldsRename `CPU Usage` = `cpu_usage`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "CPU Usage",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "k8s.workload.kind"
                ],
                "categoryAxisLabel": "k8s.workload.kind",
                "tooltipVariant": "single",
                "valueAxis": [
                  "CPU Usage"
                ],
                "valueAxisLabel": "CPU Usage"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "interval"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [],
              "leftYAxisSettings": {},
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "CPU Usage"
                }
              ],
              "displayedFields": [
                "k8s.workload.kind"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "k8s.workload.kind"
              },
              "displayedFields": [
                "k8s.workload.kind"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"CPU Usage\"]": 185.09375,
                "[\"cpu_throttled\"]": 164.46875,
                "[\"cpu_usage\"]": 157.8125,
                "[\"limits_cpu\"]": 124.046875,
                "[\"limits_cpu_percent\"]": 175.859375,
                "[\"namespace.name\"]": 231.140625,
                "[\"requests_cpu\"]": 142.453125,
                "[\"requests_cpu_percent\"]": 191.28125
              },
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "namespace.id"
                ],
                [
                  "namespace.labels"
                ],
                [
                  "namespace.annotations"
                ],
                [
                  "namespace.age"
                ],
                [
                  "cluster.id"
                ],
                [
                  "id"
                ]
              ],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1717575708941,
                "baseUnit": "core",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "CPU Usage",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "23": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Percentage of memory usage in the namespace per workload type.\n",
          "query": "// Retrieve memory usage for each workload in the namespace.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metrics.\n  memory_usage = sum(k8s.pod.memory.usage, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  NOT isNull(k8s.workload.kind)\n  // Split by the kind/type of workload.\n}, by: { k8s.workload.kind },\n// Show data from the previous minute.\nfrom: -2m, to: -1m\n// Only retrieve the latest values, which are the last in the array.\n| fieldsAdd memory_usage = arrayLast(memory_usage)\n// Rename the fields for easier reading in column titles.\n| fieldsRename `Memory Usage` = `memory_usage`",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Memory Usage",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "k8s.workload.kind"
                ],
                "categoryAxisLabel": "k8s.workload.kind",
                "tooltipVariant": "single",
                "valueAxis": [
                  "Memory Usage"
                ],
                "valueAxisLabel": "Memory Usage"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "interval"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [],
              "leftYAxisSettings": {},
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Memory Usage"
                }
              ],
              "displayedFields": [
                "k8s.workload.kind"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "k8s.workload.kind"
              },
              "displayedFields": [
                "k8s.workload.kind"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"CPU Usage\"]": 185.09375,
                "[\"cpu_throttled\"]": 164.46875,
                "[\"cpu_usage\"]": 157.8125,
                "[\"limits_cpu\"]": 124.046875,
                "[\"limits_cpu_percent\"]": 175.859375,
                "[\"namespace.name\"]": 231.140625,
                "[\"requests_cpu\"]": 142.453125,
                "[\"requests_cpu_percent\"]": 191.28125
              },
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "namespace.id"
                ],
                [
                  "namespace.labels"
                ],
                [
                  "namespace.annotations"
                ],
                [
                  "namespace.age"
                ],
                [
                  "cluster.id"
                ],
                [
                  "id"
                ]
              ],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1717575771158,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Memory Usage",
                "suffix": "",
                "unitCategory": "data"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
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
          "description": "Bytes received by each workload\n",
          "query": "// Retrieve bytes received by each workload in the namespace.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metrics.\n  received_data = sum(k8s.pod.network.io, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // Only show workloads that match the selected workload types.\n  in(k8s.workload.kind, array($Type)) AND\n  // The metric includes both transmission directions, so restrict data to just bytes that have been received.\n  direction == \"receive\"\n  // Split by the name of each workload.\n}, by: { k8s.workload.name }\n// Sort by the workloads that received the most data to the ones that recevied the least.\n| sort received_data desc\n// Only show 20 workloads to keep the graph readable.\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Receive Bandwidth",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application,k8s.workload.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "received_data"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Pod - network received data"
              },
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application",
                "k8s.workload.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                "dt.entity.cloud_application",
                "k8s.workload.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "received_data"
                  ],
                  "id": 1748381669970,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Bytes transmitted by each workload\n",
          "query": "// Retrieve bytes transmitted by each workload in the namespace.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metrics.\n  received_data = sum(k8s.pod.network.io, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // Only show workloads that match the selected workload types.\n  in(k8s.workload.kind, array($Type)) AND\n  // The metric includes both transmission directions, so restrict data to just bytes that have been transmitted.\n  direction == \"transmit\"\n  // Split by the name of each workload.\n}, by: { k8s.workload.name }\n// Sort by the workloads that received the most data to the ones that recevied the least.\n| sort received_data desc\n// Only show 20 workloads to keep the graph readable.\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Transmit Bandwidth",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application,k8s.workload.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "received_data"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "Kubernetes: Pod - network transmitted data"
              },
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application",
                "k8s.workload.name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                "dt.entity.cloud_application",
                "k8s.workload.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "received_data"
                  ],
                  "id": 1750104515121,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Errors per second when receiving data in each workload.\n",
          "query": "// Retrieve network errors when receiving data for each workload in the namespace.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metrics.\n  received_data = sum(k8s.pod.network.errors, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // Only show workloads that match the selected workload types.\n  in(k8s.workload.kind, array($Type)) AND\n  // The metric includes both transmission directions, so restrict data to just bytes that have been received.\n  direction == \"receive\"\n  // Split by the name of each workload.\n}, by: { k8s.workload.name }\n// Sort by the workloads that received the most data to the ones that recevied the least.\n| sort received_data desc\n// Only show 20 workloads to keep the graph readable.\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Rate of Received Errors",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application,k8s.workload.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "received_data"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "k8s.pod.network.errors"
              },
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                "dt.entity.cloud_application",
                "k8s.workload.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "received_data"
                  ],
                  "id": 1748381710764,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1727703459327,
                "baseUnit": "count_per_second",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "received_errors",
                "suffix": "e/s",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Errors per second when transmitting data in each workload.\n",
          "query": "// Retrieve transmission errors for each workload in the namespace.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metrics.\n  received_data = sum(k8s.pod.network.errors, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // Only show workloads that match the selected workload types.\n  in(k8s.workload.kind, array($Type)) AND\n  // The metric includes both transmission directions, so restrict data to just bytes that have been transmitted.\n  direction == \"transmit\"\n  // Split by the name of each workload.\n}, by: { k8s.workload.name }\n// Sort by the workloads that received the most data to the ones that recevied the least.\n| sort received_data desc\n// Only show 20 workloads to keep the graph readable.\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Rate of Transmitted Errors",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application,k8s.workload.name",
                "tooltipVariant": "single",
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "fieldMapping": {
                "leftAxisValues": [
                  "received_data"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "dt.entity.cloud_application"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": false,
                "label": "k8s.pod.network.errors"
              },
              "legend": {
                "hidden": false,
                "position": "right"
              },
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [],
              "displayedFields": [],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "interval"
              },
              "displayedFields": [
                "dt.entity.cloud_application",
                "k8s.workload.name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "received_data"
                  ],
                  "id": 1748381733041,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1727703517246,
                "baseUnit": "count_per_second",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "transmitted_errors",
                "suffix": "e/s",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "33": {
          "content": "### Network",
          "type": "markdown"
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Overview of transmitted and received data in each workload.\n",
          "query": "// Retrieve network I/O data and split it by transmission direction.\ntimeseries {\n  // Ensure \"average\"-typed aggregations are used for the usage metrics.\n  receiveData = sum(k8s.pod.network.io, filter: { direction == \"receive\" }, rollup:avg),\n  transmitData = sum(k8s.pod.network.io, filter: { direction == \"transmit\" }, rollup:avg),\n  receiveError = sum(k8s.pod.network.errors, filter: { direction == \"transmit\" }, rollup:avg),\n  transmitError = sum(k8s.pod.network.errors, filter: { direction == \"transmit\" }, rollup:avg)\n}, filter: {\n  // Filter by the cluster and namespace selected in the dropdowns.\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace AND\n  // Only show workloads that match the selected workload types.\n  in(k8s.workload.kind, array($Type))\n  // Split by the name of each workload.\n}, by: { k8s.workload.name },\n// Show data from the previous minute.\nfrom: -2m, to: -1m,\n// Include results which have no requests or limits defined (shown as null).\nunion: true\n// The interval and timeframe aren't required, so remove them.\n| fieldsRemove interval, timeframe\n// Only retrieve the latest values, which are the last in the array.\n| fieldsAdd receiveData = arrayLast(receiveData)\n| fieldsAdd transmitData = arrayLast(transmitData)\n| fieldsAdd receiveError = arrayLast(receiveError)\n| fieldsAdd transmitError = arrayLast(transmitError)\n// Sort by amount of data received, from most to least.\n| sort receiveData desc\n// Rename the fields for easier reading in column titles.\n| fieldsRename `Name` = k8s.workload.name\n, `Current Receive Bandwidth` = receiveData\n, `Current Transmit Bandwidth` = transmitData\n, `Rate of Received Errors` = receiveError\n, `Rate of Transmitted Errors` = transmitError",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network Usage",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "dt.entity.cloud_application,Name",
                "tooltipVariant": "single",
                "valueAxisLabel": "Current Receive Bandwidth,Current Transmit Bandwidth,Rate of Received Packets Dropped,Rate of Transmitted Packets Dropped,Rate of Received Errors,Rate of Transmitted Errors"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "histogram": {
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "Current Receive Bandwidth"
                },
                {
                  "rangeAxis": "",
                  "valueAxis": "Current Transmit Bandwidth"
                }
              ],
              "displayedFields": [
                "dt.entity.cloud_application",
                "Name"
              ],
              "variant": "single"
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "Current Receive Bandwidth"
              },
              "displayedFields": [
                "dt.entity.cloud_application",
                "Name"
              ],
              "legend": "auto",
              "shape": "hexagon"
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "id",
              "prefixIcon": "",
              "recordField": "id",
              "showLabel": true,
              "trend": {
                "isVisible": false,
                "trendType": "auto"
              }
            },
            "table": {
              "columnOrder": [
                "[\"Name\"]",
                "[\"Current Receive Bandwidth\"]",
                "[\"Current Transmit Bandwidth\"]",
                "[\"Rate of Received Errors\"]",
                "[\"Rate of Transmitted Errors\"]"
              ],
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"Name\"]": 204.78125,
                "[\"cpu_throttled\"]": 164.46875,
                "[\"cpu_usage\"]": 157.8125,
                "[\"limits_cpu\"]": 124.046875,
                "[\"limits_cpu_percent\"]": 175.859375,
                "[\"namespace.name\"]": 231.140625,
                "[\"requests_cpu\"]": 142.453125,
                "[\"requests_cpu_percent\"]": 191.28125
              },
              "enableSparklines": false,
              "hiddenColumns": [
                [
                  "id"
                ],
                [
                  "namespace.id"
                ],
                [
                  "namespace.labels"
                ],
                [
                  "namespace.annotations"
                ],
                [
                  "namespace.age"
                ],
                [
                  "cluster.id"
                ],
                [
                  "dt.entity.cloud_application"
                ]
              ],
              "lineWrapIds": [],
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1715698159493,
                "baseUnit": "Bps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Current Receive Bandwidth",
                "suffix": "",
                "unitCategory": "datarate"
              },
              {
                "added": 1715698181310,
                "baseUnit": "Bps",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Current Transmit Bandwidth",
                "suffix": "",
                "unitCategory": "datarate"
              },
              {
                "added": 1727770868052,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of Received Packets Dropped",
                "suffix": "p/s",
                "unitCategory": "unspecified"
              },
              {
                "added": 1727770889671,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of Transmitted Packets Dropped",
                "suffix": "p/s",
                "unitCategory": "unspecified"
              },
              {
                "added": 1727770905889,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of Received Errors",
                "suffix": "e/s",
                "unitCategory": "unspecified"
              },
              {
                "added": 1727770919779,
                "baseUnit": "count_per_second",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Rate of Transmitted Errors",
                "suffix": "e/s",
                "unitCategory": "unspecified"
              }
            ],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "35": {
          "content": "### Workloads in Namespace: $Namespace\nExplore the resource utilization distribution across workloads in your namespace. If you don't see data, [enable Kubernetes monitoring](https://dt-url.net/xq03nz5) for your Collector.",
          "type": "markdown"
        },
        "36": {
          "content": "### Additional resources\n\nLearn more about using the OTel metrics and logs fetched from the k8s cluster in the [k8scluster](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/k8sclusterreceiver), [kubeletstats](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/kubeletstatsreceiver) and [k8sobjects](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/k8sobjectsreceiver) receivers documentation.",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "// Retrieve available clusters for dropdown.\ntimeseries {\n  cpu_usage = sum(k8s.pod.cpu.usage, rollup:avg)\n},\nby: { k8s.cluster.name }\n| summarize collectDistinct(k8s.cluster.name)\n| fieldsAdd `collectDistinct(k8s.cluster.name)` = if(isNull(`collectDistinct(k8s.cluster.name)`), array(\"*\"), else:`collectDistinct(k8s.cluster.name)`)\n| fieldsAdd `collectDistinct(k8s.cluster.name)` = arraySort(`collectDistinct(k8s.cluster.name)`, direction: \"ascending\")",
          "key": "Cluster",
          "multiple": false,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "editable": true,
          "input": "// Retrieve namespaces in selected cluster for dropdown.\ntimeseries {\n  cpu_usage = sum(k8s.pod.memory.usage, rollup:avg)\n}, filter: {\n  k8s.cluster.name == $Cluster\n}, by: { k8s.namespace.name },\nfrom: -2m, to: -1m\n| summarize collectDistinct(k8s.namespace.name)\n| fieldsAdd `collectDistinct(k8s.namespace.name)` = if(isNull(`collectDistinct(k8s.namespace.name)`), array(\"*\"), else:`collectDistinct(k8s.namespace.name)`)\n| fieldsAdd `collectDistinct(k8s.namespace.name)` = arraySort(`collectDistinct(k8s.namespace.name)`, direction: \"ascending\")",
          "key": "Namespace",
          "multiple": false,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "defaultValue": [
            "-"
          ],
          "editable": true,
          "input": "// Retrieve workload types in selected namespace for dropdown.\ntimeseries {\n  cpu_usage = sum(k8s.pod.memory.usage, rollup:avg)\n}, filter: {\n  k8s.cluster.name == $Cluster AND\n  k8s.namespace.name == $Namespace\n}, by: { k8s.workload.kind },\nfrom: -2m, to: -1m\n| summarize kinds = collectDistinct(k8s.workload.kind)\n| fieldsAdd kinds = arrayRemoveNulls(kinds)\n| fieldsAdd kinds = arraySort(kinds, direction: \"ascending\")\n| fieldsAdd kinds = if(isNull(kinds) or arraySize(kinds) == 0, array(\"-\"), else: kinds)\n",
          "key": "Type",
          "multiple": true,
          "type": "query",
          "version": 1,
          "visible": true
        }
      ],
      "version": 18
    })
  custom_id = "dynatrace.opentelemetry.k8s-namespace-workloads"
  # private = false
}
