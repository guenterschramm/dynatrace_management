resource "dynatrace_document" "Google_Cloud_Cloud_SQL" {
  name      = "Google Cloud Cloud SQL"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 24
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 25
        },
        "13": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 25
        },
        "14": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "15": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 35
        },
        "16": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 36
        },
        "17": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 36
        },
        "18": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 46
        },
        "19": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 41
        },
        "2": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "20": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 41
        },
        "21": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 51
        },
        "22": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 52
        },
        "23": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 57
        },
        "24": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 57
        },
        "3": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "4": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "5": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 3
        },
        "6": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "7": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 14
        },
        "8": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 14
        },
        "9": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 19
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "## Google Cloud SQL Overview\nThis dashboard provides insights into your Cloud SQL database instances.",
          "type": "markdown"
        },
        "10": {
          "content": "##### Memory",
          "type": "markdown"
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.memory.utilization), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "\u003e=",
                    "id": 0,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "\u003e=",
                    "id": 1,
                    "label": "",
                    "value": 0.8
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "\u003e=",
                    "id": 2,
                    "label": "",
                    "value": 0.95
                  }
                ],
                "title": ""
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
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.memory.total_usage), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory total usage",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "position": "right"
              }
            },
            "unitsOverrides": [
              {
                "added": 1769103400180,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.memory.quota), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory quota",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769103423580,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "15": {
          "content": "##### Disk",
          "type": "markdown"
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.disk.utilization), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "\u003e=",
                    "id": 0,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "\u003e=",
                    "id": 1,
                    "label": "",
                    "value": 0.8
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "\u003e=",
                    "id": 2,
                    "label": "",
                    "value": 0.95
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.disk.bytes_used), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk bytes used",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769103448935,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.disk.quota), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk quota",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769103468983,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.disk.read_ops_count), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk read ops",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "pointsDisplay": "never"
            }
          }
        },
        "2": {
          "content": "##### Instance Status",
          "type": "markdown"
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.disk.write_ops_count), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk write ops",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "pointsDisplay": "never"
            }
          }
        },
        "21": {
          "content": "##### Network",
          "type": "markdown"
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.network.connections), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Connections",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
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
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.network.received_bytes_count), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Received bytes",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769103479035,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.network.sent_bytes_count), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Sent bytes",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769103485837,
                "baseUnit": "byte",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
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
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.up), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DB up",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "pointsDisplay": "never"
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
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.uptime), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DB uptime",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769103330176,
                "baseUnit": "second",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.instance_state), by: { gcp.metric_labels.state }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "DB instance state",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "pointsDisplay": "never"
            }
          }
        },
        "6": {
          "content": "##### CPU",
          "type": "markdown"
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.cpu.utilization), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utiization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "thresholds": [
              {
                "field": "",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                    },
                    "comparator": "\u003e=",
                    "id": 0,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "\u003e=",
                    "id": 1,
                    "label": "",
                    "value": 0.8
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "\u003e=",
                    "id": 2,
                    "label": "",
                    "value": 0.95
                  }
                ],
                "title": ""
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
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.cpu.usage_time), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU usage time",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769103373413,
                "baseUnit": "second",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "time"
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
          "query": "timeseries val=avg(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.cpu.reserved_cores), by: { gcp.project.id, gcp.resource_labels.database_id }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.region, array($Region)) AND in(gcp.resource_labels.database_id, array($DatabaseId)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU reserved cores",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "right"
              },
              "pointsDisplay": "never"
            },
            "unitsOverrides": [
              {
                "added": 1769105374974,
                "baseUnit": "core",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "timeseries sum(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.cpu.utilization, scalar:true), by: {gcp.project.id}\n| summarize collectDistinct(gcp.project.id)",
          "key": "Project",
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
          "input": "timeseries sum(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.cpu.utilization, scalar:true), by: {gcp.location}\n| summarize collectDistinct(gcp.location)",
          "key": "Location",
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
          "input": "timeseries sum(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.cpu.utilization, scalar:true), by: {gcp.region}\n| summarize collectDistinct(gcp.region)",
          "key": "Region",
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
          "input": "timeseries sum(cloud.gcp.cloudsql_database.cloudsql_googleapis_com.database.cpu.utilization, scalar:true), by: {gcp.resource_labels.database_id}\n| summarize collectDistinct(gcp.resource_labels.database_id)",
          "key": "DatabaseId",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "10000",
          "editable": true,
          "key": "Limit",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.clouds.gcp-cloud-sql"
  # private = false
}
