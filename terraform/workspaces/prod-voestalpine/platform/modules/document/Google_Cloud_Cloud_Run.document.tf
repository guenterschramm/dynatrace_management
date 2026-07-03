resource "dynatrace_document" "Google_Cloud_Cloud_Run" {
  name      = "Google Cloud Cloud Run"
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
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 26
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 26
        },
        "12": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 31
        },
        "13": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 32
        },
        "14": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 32
        },
        "15": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "16": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 14
        },
        "17": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 14
        },
        "18": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 14
        },
        "2": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "3": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 3
        },
        "4": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 8
        },
        "5": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "6": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "7": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 20
        },
        "8": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 20
        },
        "9": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 25
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "## Google Cloud Run Overview\nThis dashboard provides insights into your Cloud Run services and revisions.",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.container.memory.utilizations), by: { gcp.project.id, gcp.location, gcp.resource_labels.service_name, gcp.resource_labels.revision_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory utilizations",
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
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.container.memory.allocation_time), by: { gcp.project.id, gcp.location, gcp.resource_labels.service_name, gcp.resource_labels.revision_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory allocation time",
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
                "added": 1769101965853,
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
        "12": {
          "content": "##### Network",
          "type": "markdown"
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.container.network.received_bytes_count), by: { gcp.project.id, gcp.location, gcp.resource_labels.service_name, gcp.resource_labels.revision_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
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
                "added": 1769101982267,
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
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.container.network.sent_bytes_count), by: { gcp.project.id, gcp.location, gcp.resource_labels.service_name, gcp.resource_labels.revision_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
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
                "added": 1769101990346,
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
          "content": "##### Requests",
          "type": "markdown"
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.request_count), by: { gcp.project.id, gcp.location, gcp.resource_labels.service_name, gcp.resource_labels.revision_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Requests",
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
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.request_latencies), by: { gcp.project.id, gcp.location, gcp.resource_labels.service_name, gcp.resource_labels.revision_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Request latencies",
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
                "added": 1769101875022,
                "baseUnit": "millisecond",
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
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.container.max_request_concurrencies), by: { gcp.project.id, gcp.location, gcp.resource_labels.service_name, gcp.resource_labels.revision_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Max request concurrencies",
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
        "2": {
          "content": "##### Instances",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.container.instance_count), by: { gcp.project.id, gcp.location }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Instances",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "position": "right"
              }
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
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.container.billable_instance_time), by: { gcp.project.id, gcp.location, gcp.resource_labels.service_name, gcp.resource_labels.revision_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Billable instance time",
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
                "added": 1769101798453,
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
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.container.startup_latencies), by: { gcp.project.id, gcp.location, gcp.resource_labels.service_name, gcp.resource_labels.revision_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Startup latencies",
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
                "added": 1769101726522,
                "baseUnit": "millisecond",
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
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.container.cpu.utilizations), by: { gcp.project.id, gcp.location, gcp.resource_labels.service_name, gcp.resource_labels.revision_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utilizations",
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
            }
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.cloud_run_revision.run_googleapis_com.container.cpu.allocation_time), by: { gcp.project.id, gcp.location, gcp.resource_labels.service_name, gcp.resource_labels.revision_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.service_name, array($ServiceName)) AND in(gcp.resource_labels.revision_name, array($RevisionName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU allocation time",
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
                "added": 1769101952864,
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
          "content": "##### Memory",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "timeseries sum(cloud.gcp.cloud_run_revision.run_googleapis_com.container.cpu.utilizations, scalar:true), by: {gcp.project.id}\n| summarize collectDistinct(gcp.project.id)",
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
          "input": "timeseries sum(cloud.gcp.cloud_run_revision.run_googleapis_com.container.cpu.utilizations, scalar:true), by: {gcp.location}\n| summarize collectDistinct(gcp.location)",
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
          "input": "timeseries sum(cloud.gcp.cloud_run_revision.run_googleapis_com.container.cpu.utilizations, scalar:true), by: {gcp.resource_labels.service_name}\n| summarize collectDistinct(gcp.resource_labels.service_name)",
          "key": "ServiceName",
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
          "input": "timeseries sum(cloud.gcp.cloud_run_revision.run_googleapis_com.container.cpu.utilizations, scalar:true), by: {gcp.resource_labels.revision_name}\n| summarize collectDistinct(gcp.resource_labels.revision_name)",
          "key": "RevisionName",
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
  custom_id = "dynatrace.clouds.gcp-cloud-run"
  # private = false
}
