resource "dynatrace_document" "Google_Cloud_Overview" {
  name      = "Google Cloud Overview"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 18
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "14": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 18
        },
        "15": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 18
        },
        "16": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 38
        },
        "19": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 32
        },
        "2": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 18
        },
        "20": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 38
        },
        "22": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 32
        },
        "24": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 38
        },
        "26": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 32
        },
        "27": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 10
        },
        "29": {
          "h": 6,
          "w": 8,
          "x": 16,
          "y": 23
        },
        "30": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 3
        },
        "32": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 32
        },
        "33": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 10
        },
        "34": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "35": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "37": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 3
        },
        "39": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 50
        },
        "40": {
          "h": 7,
          "w": 6,
          "x": 0,
          "y": 51
        },
        "41": {
          "h": 7,
          "w": 6,
          "x": 6,
          "y": 51
        },
        "42": {
          "h": 7,
          "w": 6,
          "x": 12,
          "y": 51
        },
        "43": {
          "h": 7,
          "w": 6,
          "x": 18,
          "y": 51
        },
        "44": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 31
        },
        "45": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 37
        },
        "5": {
          "h": 6,
          "w": 8,
          "x": 8,
          "y": 23
        },
        "52": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 49
        },
        "54": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "58": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 3
        },
        "59": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "6": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 23
        },
        "60": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 44
        },
        "61": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 44
        },
        "63": {
          "h": 5,
          "w": 3,
          "x": 0,
          "y": 44
        },
        "64": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "65": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "66": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "67": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 38
        },
        "68": {
          "h": 5,
          "w": 5,
          "x": 3,
          "y": 44
        },
        "9": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 17
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
          "query": "smartscapeNodes \"GCP_COMPUTE_GOOGLEAPIS_COM_INSTANCE\"\n| fieldsAdd gcp.object\n| parse gcp.object, \"JSON:json\"\n| fields machineType = json[configuration][machineType]\n| summarize  count=count(), by: {machineType}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 GCE machine types",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "gcpMachineType",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count()"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
            }
          }
        },
        "10": {
          "content": "### Other compute resources",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"GCP_COMPUTE_GOOGLEAPIS_COM_INSTANCE\"\n| summarize  count=count(), by: {gcp.project.id}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 GCP projects with GCE instances",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "gcp.project.id"
                ],
                "categoryAxisLabel": "gcp.project_id",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": "count",
                "valueAxisLabel": "count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
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
          "query": "smartscapeNodes \"GCP_COMPUTE_GOOGLEAPIS_COM_INSTANCE\"\n| summarize  count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "GCE instances",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "count",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "trend": {
                "isVisible": false
              }
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
          "query": "smartscapeNodes \"GCP_CONTAINER_GOOGLEAPIS_COM_CLUSTER\"\n| summarize  count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "GKE Clusters",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"GCP_COMPUTE_GOOGLEAPIS_COM_INSTANCEGROUPMANAGER\"\n| summarize  count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Instance group managers",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "2": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"GCP_COMPUTE_GOOGLEAPIS_COM_INSTANCE\"\n| summarize  count=count(), by: {gcp.zone}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 zones running GCE instances",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "gcp.zone"
                ],
                "categoryAxisLabel": "gcp.zone.name",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": "count",
                "valueAxisLabel": "count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
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
          "query": "smartscapeNodes \"GCP_CONTAINER_GOOGLEAPIS_COM_CLUSTER\"\n| summarize  count=count(), by: {gcp.project.id}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 projects with GKE clusters",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "gcp.project.id"
                ],
                "categoryAxisLabel": "gcp.project_id",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
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
          "query": "smartscapeNodes \"GCP_COMPUTE_GOOGLEAPIS_COM_INSTANCEGROUPMANAGER\"\n| summarize  count=count(), by: {gcp.project.id}\n| sort count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 projects with instance group managers",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "gcp.project.id"
                ],
                "categoryAxisLabel": "gcp.project_id",
                "isCategoryLabelVisible": false,
                "isValueLabelVisible": false,
                "valueAxis": [
                  "count"
                ],
                "valueAxisLabel": "count"
              },
              "legend": {
                "hidden": true
              },
              "truncationMode": "middle"
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
          "query": "timeseries max = max(cloud.gcp.k8s_node.kubernetes_io.node.cpu.total_cores),\n            by: {gcp.resource_labels.cluster_name, gcp.project.id, gcp.region}\n| fieldsAdd last_size = arrayLast(max)\n| sort last_size desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "GKE clusters - node CPU cores (total)",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "gcp.resource_labels.cluster_name"
                ],
                "categoryAxisLabel": "gcp.resource_labels.cluster_name",
                "valueAxis": [
                  "last_size"
                ],
                "valueAxisLabel": "last_size"
              },
              "truncationMode": "middle"
            }
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.gcp.instance_group.compute_googleapis_com.instance_group.size),\n            by: {gcp.resource_labels.instance_group_name, gcp.project.id, gcp.zone}\n| fieldsAdd m = arrayMax(max)\n| sort m desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Instance group size over time",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Instance group size",
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
                "gcp.resource_labels.instance_group_name"
              ]
            }
          }
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch logs\n| filter cloud.provider == \"gcp\" and in(loglevel, array(\"ERROR\", \"WARNING\"))\n| filter dt.da.source == \"gcp-log-ingest\"\n| summarize count(), by: {bin(timestamp,1min), loglevel}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "GCP log error logs by service",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "count()"
                ],
                "timestamp": "bin(timestamp, 1m)"
              },
              "truncationMode": "middle",
              "xAxisLabel": "bin(timestamp, 1m)",
              "xAxisScaling": "analyzedTimeframe"
            },
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "log-level",
                  "comparator": "= *value*",
                  "field": "DT.name",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "loglevel"
              ]
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
          "query": "timeseries max = max(cloud.gcp.gce_instance.compute_googleapis_com.instance.cpu.utilization),\n            by: {gcp.resource_labels.instance_id, gcp.metric_labels.instance_name, gcp.project.id, gcp.zone}\n| fieldsAdd lastMaxCPU = arrayMax(max)\n| sort lastMaxCPU desc\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "GCE CPU utilization",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "red-green",
                  "comparator": "= *value*",
                  "field": "lastMaxCPU",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "honeycomb": {
              "dataMappings": {
                "value": "lastMaxCPU"
              },
              "displayedFields": [
                "gcp.metric_labels.instance_name"
              ]
            }
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.davis.problems\n|filter in(\"gcp\", cloud.provider)\n| filter event.status == \"ACTIVE\" and not dt.davis.is_duplicate == \"true\"\n| summarize  count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Active problems",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "\u003e",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-themed-fireplace-color-01-default, #ae132d)"
                  },
                  "field": "count()",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "count()",
                  "value": 0
                }
              ]
            },
            "singleValue": {
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count()",
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.gcp.instance_group.compute_googleapis_com.instance_group.size),\n            by: {gcp.resource_labels.instance_group_name, gcp.project.id, gcp.zone}\n| fieldsAdd last_size = arrayLast(max)\n| sort last_size desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 Instance groups by size",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "gcp.resource_labels.instance_group_name"
                ],
                "categoryAxisLabel": "gcp.resource_labels.instance_group_name",
                "valueAxis": [
                  "last_size"
                ],
                "valueAxisLabel": "last_size"
              },
              "truncationMode": "middle"
            }
          }
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch logs\n| filter cloud.provider == \"gcp\"\n| filter dt.da.source == \"gcp-log-ingest\"\n| fieldsKeep loglevel, gcp.project.id, gcp.region, gcp.resource.type, gcp.service, loglevel, content , timestamp\n| sort timestamp desc\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Latest logs",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "content"
                  ],
                  "id": 1725278091095,
                  "value": "log-content"
                }
              ],
              "sortBy": [
                {
                  "columnId": "[\"content\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        },
        "34": {
          "content": "### Cloud logs",
          "type": "markdown"
        },
        "35": {
          "content": "### Problems",
          "type": "markdown"
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.davis.problems\n|filter in(\"gcp\", cloud.provider)\n| filter event.status == \"ACTIVE\" and not dt.davis.is_duplicate == \"true\"\n| summarize  count(), by: {event.name}\n| fieldsRename problem = event.name ",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Active problem details",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "number-of-slices"
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            }
          }
        },
        "39": {
          "content": "### Non compute resources",
          "type": "markdown"
        },
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"GCP_SQLADMIN_GOOGLEAPIS_COM_INSTANCE\")\n  OR startsWith(type, \"GCP_REDIS_GOOGLEAPIS_COM\")\n  OR startsWith(type, \"GCP_ALLOYDB_GOOGLEAPIS_COM\")\n  OR startsWith(type, \"GCP_BIGQUERY_GOOGLEAPIS_COM\")\n| summarize count = count(), by: {type}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Databases",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            }
          }
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"GCP_STORAGE_GOOGLEAPIS_COM_BUCKET\")\n  OR startsWith(type, \"GCP_COMPUTE_GOOGLEAPIS_COM_DISK\")\n  OR startsWith(type, \"GCP_FILE_GOOGLEAPIS_COM_INSTANCE\")\n| summarize count = count(), by: {type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Storage and File System",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            }
          }
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"GCP_CLOUDFUNCTIONS_GOOGLEAPIS_COM\")\n  OR startsWith(type, \"GCP_RUN_GOOGLEAPIS_COM\")\n  OR startsWith(type, \"GCP_PUBSUB_GOOGLEAPIS_COM\")\n  OR startsWith(type, \"GCP_CLOUDTASKS_GOOGLEAPIS_COM\")\n| summarize count = count(), by: {type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Serverless",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            }
          }
        },
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"*\"\n| filter startsWith(type, \"GCP_COMPUTE_GOOGLEAPIS_COM_FORWARDINGRULE\")\n  OR startsWith(type, \"GCP_COMPUTE_GOOGLEAPIS_COM_BACKENDSERVICE\")\n  OR startsWith(type, \"GCP_COMPUTE_GOOGLEAPIS_COM_ROUTER\")\n  OR startsWith(type, \"GCP_COMPUTE_GOOGLEAPIS_COM_URLMAP\")\n  OR startsWith(type, \"GCP_DNS_GOOGLEAPIS_COM_MANAGEDZONE\")\n| summarize count = count(), by: {type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Networking and Content Delivery",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            }
          }
        },
        "44": {
          "content": "##### Instance group managers",
          "type": "markdown"
        },
        "45": {
          "content": "##### GKE clusters",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.gcp.gce_instance.compute_googleapis_com.instance.network.received_bytes_count),\n            by: {gcp.resource_labels.instance_id, gcp.metric_labels.instance_name, gcp.project.id, gcp.zone}\n| sort arrayMax(max) desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network: GCE instances by Network in (bytes)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "GCE network data received rate"
              },
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "gcp.metric_labels.instance_name"
              ]
            }
          }
        },
        "52": {
          "content": " ",
          "type": "markdown"
        },
        "54": {
          "content": "### GCP overview\nExplore the resource utilization distribution across all your GCP instances.  If you don't see data, [start monitoring your cloud resources](/ui/apps/dynatrace.clouds/home).\n\n-----",
          "type": "markdown"
        },
        "58": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch dt.davis.problems\n|filter in(\"gcp\", cloud.provider)\n| filter event.status == \"ACTIVE\" and not dt.davis.is_duplicate == \"true\"\n| summarize  count(), by: {cloud.region[0]}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Problems by region",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "truncationMode": "middle"
            }
          }
        },
        "59": {
          "content": "##### GKE containers",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.gcp.gce_instance.compute_googleapis_com.instance.network.sent_bytes_count),\n            by: {gcp.resource_labels.instance_id, gcp.metric_labels.instance_name, gcp.project.id, gcp.zone}\n| sort arrayMax(max) desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Network: GCE instances by Network out (bytes)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "GCE network data transmitted rate"
              },
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "gcp.metric_labels.instance_name"
              ]
            }
          }
        },
        "60": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.gcp.k8s_container.kubernetes_io.container.memory.request_utilization),\n            by: {gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.project.id, gcp.region}\n| fieldsAdd m = arrayMax(max)\n| sort m desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "GKE container memory request utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "gcp.resource_labels.cluster_name",
                "gcp.resource_labels.namespace_name"
              ]
            }
          }
        },
        "61": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.gcp.k8s_container.kubernetes_io.container.cpu.request_utilization),\n            by: {gcp.resource_labels.cluster_name, gcp.resource_labels.namespace_name, gcp.project.id, gcp.region}\n| fieldsAdd m = arrayMax(max)\n| sort m desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "GKE container CPU request utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "gcp.resource_labels.cluster_name",
                "gcp.resource_labels.namespace_name"
              ]
            }
          }
        },
        "63": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"GCP_K8S_IO_SERVICE\"\n| summarize  count=count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "GKE Services",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "64": {
          "content": " ",
          "type": "markdown"
        },
        "65": {
          "content": " ",
          "type": "markdown"
        },
        "66": {
          "content": " ",
          "type": "markdown"
        },
        "67": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries max = max(cloud.gcp.cloud_run_revision.run_googleapis_com.container.instance_count),\n            by: {gcp.resource_labels.revision_name, gcp.resource_labels.service_name, gcp.project.id, gcp.region}\n| fieldsAdd m = arrayMax(max)\n| sort m desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Cloud Run active instances",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "max"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "gcp.resource_labels.service_name"
              ]
            }
          }
        },
        "68": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "smartscapeNodes \"GCP_K8S_IO_SERVICE\"\n| summarize  count=count(), by: {gcp.project.id}\n| sort count desc\n| limit 10\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "GKE Services",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "count()",
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "count",
              "trend": {
                "isVisible": false
              }
            }
          }
        },
        "9": {
          "content": "### GCE overview",
          "type": "markdown"
        }
      },
      "variables": [],
      "version": 22
    })
  custom_id = "dynatrace.clouds.gcp-overview"
  # private = false
}
