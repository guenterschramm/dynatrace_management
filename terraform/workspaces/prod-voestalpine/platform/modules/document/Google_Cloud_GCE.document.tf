resource "dynatrace_document" "Google_Cloud_GCE" {
  name      = "Google Cloud GCE"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 2
        },
        "10": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 33
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 33
        },
        "12": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 38
        },
        "13": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 38
        },
        "14": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "15": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "17": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 11
        },
        "18": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 28
        },
        "19": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 49
        },
        "2": {
          "h": 4,
          "w": 20,
          "x": 4,
          "y": 2
        },
        "20": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 48
        },
        "21": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 49
        },
        "22": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 49
        },
        "25": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 43
        },
        "26": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 43
        },
        "27": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "3": {
          "h": 5,
          "w": 6,
          "x": 0,
          "y": 12
        },
        "4": {
          "h": 5,
          "w": 18,
          "x": 6,
          "y": 12
        },
        "5": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 6
        },
        "6": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 18
        },
        "7": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 18
        },
        "8": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 23
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 23
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries by:{gcp.resource_labels.instance_id, gcp.project.id, gcp.zone}, cpu_utilization = avg(cloud.gcp.gce_instance.compute_googleapis_com.instance.cpu.utilization)\n| filter {in(gcp.project.id, array($Project)) AND \n          in(gcp.zone, array($Zone))}\n| summarize count = countDistinct(gcp.resource_labels.instance_id)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active instances",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6862)"
                  },
                  "field": "count",
                  "type": "long",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                  },
                  "field": "count"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                  },
                  "field": "count"
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "labelMode": "none"
            }
          }
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.gce_instance.compute_googleapis_com.instance.network.sent_bytes_count), by: { gcp.project.id, gcp.zone, gcp.resource_labels.instance_id, gcp.metric_labels.instance_name, gcp.metric_labels.device_name }, filter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) AND  in(gcp.metric_labels.instance_name, array($InstanceName)) }\n| sort val desc\n| limit toLong($Limit)",
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
            "unitsOverrides": [
              {
                "added": 1769101068846,
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
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.gce_instance.compute_googleapis_com.instance.network.received_bytes_count), by: { gcp.project.id, gcp.zone, gcp.resource_labels.instance_id, gcp.metric_labels.instance_name, gcp.metric_labels.device_name }, filter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) AND  in(gcp.metric_labels.instance_name, array($InstanceName)) }\n| sort val desc\n| limit toLong($Limit)",
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
            "unitsOverrides": [
              {
                "added": 1769101076521,
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
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.gce_instance.compute_googleapis_com.firewall.dropped_packets_count), by: { gcp.project.id, gcp.zone, gcp.resource_labels.instance_id, gcp.metric_labels.instance_name, gcp.metric_labels.device_name }, filter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) AND in(gcp.metric_labels.instance_name, array($InstanceName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Packets dropped by firewall",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.gce_instance.compute_googleapis_com.firewall.dropped_bytes_count), by: { gcp.project.id, gcp.zone, gcp.resource_labels.instance_id, gcp.metric_labels.instance_name, gcp.metric_labels.device_name }, filter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) AND  in(gcp.metric_labels.instance_name, array($InstanceName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Bytes dropped by firewall",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1769101089152,
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
          "content": "## Google Compute Engine\nThis dashboard gives you insights into your GCE instances.",
          "type": "markdown"
        },
        "15": {
          "content": "##### Disk",
          "type": "markdown"
        },
        "17": {
          "content": "##### CPU",
          "type": "markdown"
        },
        "18": {
          "content": "##### Network",
          "type": "markdown"
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { limit=avg(cloud.gcp.compute_googleapis_com_vpcnetwork.compute_googleapis_com.quota.ip_aliases_per_vpc_network.limit), usage=avg(cloud.gcp.compute_googleapis_com_vpcnetwork.compute_googleapis_com.quota.ip_aliases_per_vpc_network.usage) }, by: { gcp.project.id, gcp.zone, gcp.resource_labels.network_id }, filter: { in(gcp.project.id, array($Project)) } | fieldsAdd utilized=((100 / limit[]) * usage[]) | fieldsRemove usage, limit \n| sort utilized desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "IP aliases per VPC network",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "% Used"
              }
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
                    "comparator": "\u003c",
                    "id": 0,
                    "label": "Well below",
                    "value": 95
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "Close",
                    "value": 95
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "Exceeding",
                    "value": 99
                  }
                ],
                "title": ""
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
          "query": "timeseries by:{gcp.project.id, gcp.zone, gcp.resource_labels.instance_id}, cpu_utilization = avg(cloud.gcp.gce_instance.compute_googleapis_com.instance.cpu.utilization)\n| filter {in(gcp.project.id, array($Project)) AND \n          in(gcp.zone, array($Zone))}\n| summarize by:{gcp.zone}, unique_b = countDistinct(gcp.resource_labels.instance_id)\n| sort unique_b desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active instances per zone",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {}
            }
          }
        },
        "20": {
          "content": "##### Network Quotas",
          "type": "markdown"
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { limit=avg(cloud.gcp.compute_googleapis_com_location.compute_googleapis_com.quota.inter_region_egress_bandwidth.limit), usage=avg(cloud.gcp.compute_googleapis_com_location.compute_googleapis_com.quota.inter_region_egress_bandwidth.usage) }, by: { gcp.project.id, gcp.zone, gcp.resource_labels.network_id }, filter: { in(gcp.project.id, array($Project)) }  | fieldsAdd utilized=((100 / limit[]) * usage[]) | fieldsRemove usage, limit \n| sort utilized desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Inter-region egress bandwidth",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "% Used"
              }
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
                    "comparator": "\u003c",
                    "id": 0,
                    "label": "Well below",
                    "value": 95
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "Closing",
                    "value": 95
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "\u003e",
                    "id": 2,
                    "label": "Exceeding",
                    "value": 99
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries { limit=avg(cloud.gcp.compute_googleapis_com_vpcnetwork.compute_googleapis_com.quota.instances_per_vpc_network.limit), usage=avg(cloud.gcp.compute_googleapis_com_vpcnetwork.compute_googleapis_com.quota.instances_per_vpc_network.usage)} , by: { gcp.project.id, gcp.zone, gcp.resource_labels.network_id }, filter: { in(gcp.project.id, array($Project)) }  | fieldsAdd utilized=((100 / limit[]) * usage[]) | fieldsRemove usage, limit\n| sort utilized desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Instances per network VPN",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "% Used"
              }
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
                    "comparator": "\u003c",
                    "id": 0,
                    "label": "Well below",
                    "value": 95
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "Close",
                    "value": 95
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "Exceeding",
                    "value": 99
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.gce_instance.networking_googleapis_com.vm_flow.rtt),\nby: { gcp.project.id, gcp.zone, gcp.resource_labels.instance_id, gcp.metric_labels.local_subnetwork, gcp.metric_labels.remote_project_id, gcp.metric_labels.remote_continent, gcp.metric_labels.remote_zone, gcp.metric_labels.remote_network, gcp.metric_labels.network_tier },\nfilter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) }\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "RTT",
          "type": "data",
          "visualization": "scatterplot",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1769101355540,
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
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.gce_instance.networking_googleapis_com.vm_flow.external_rtt),\nby: { gcp.project.id, gcp.zone, gcp.resource_labels.instance_id, gcp.metric_labels.local_subnetwork, gcp.metric_labels.remote_project_id, gcp.metric_labels.remote_continent, gcp.metric_labels.remote_country, gcp.metric_labels.remote_zone, gcp.metric_labels.remote_network, gcp.metric_labels.network_tier },\nfilter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) }\n| sort val desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "External RTT",
          "type": "data",
          "visualization": "scatterplot",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1769101383253,
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
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.gce_instance.networking_googleapis_com.vm_flow.connection_count),\nby: { gcp.project.id, gcp.metric_labels.remote_continent},\nfilter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Connections",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries avg(cloud.gcp.gce_instance.compute_googleapis_com.instance.cpu.utilization), filter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) AND  in(gcp.metric_labels.instance_name, array($InstanceName))}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Average CPU utilization of active instances",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "hidden": true,
                "position": "right"
              }
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
                    "comparator": "≥",
                    "id": 0,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 0.8
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": ""
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "timeseries val=avg(cloud.gcp.gce_instance.compute_googleapis_com.instance.cpu.utilization), by: { gcp.project.id, gcp.zone, gcp.resource_labels.instance_id, gcp.metric_labels.instance_name }, filter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) AND  in(gcp.metric_labels.instance_name, array($InstanceName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU utilization of active instances",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "position": "right"
              }
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
                    "comparator": "≥",
                    "id": 0,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eea53c)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 0.8
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": ""
                  }
                ],
                "title": ""
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
          "query": "smartscapeNodes \"GCP_COMPUTE_GOOGLEAPIS_COM_INSTANCE\"\n| filter {in(gcp.project.id, array($Project)) AND \n          in(gcp.zone, array($Zone))}\n| parse gcp.object, \"json:gcpObject\"\n| fieldsFlatten gcpObject\n| fieldsFlatten gcpObject.configuration\n| fieldsFlatten gcpObject.configuration.additionalAttributes\n| fieldsKeep gcp.zone, gcpObject.configuration.additionalAttributes.machineType\n| summarize count = count(), by: {gcp.zone, gcpObject.configuration.additionalAttributes.machineType}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Instance machine types per zone",
          "type": "data",
          "visualization": "heatmap",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "axes": {
              "yAxis": {
                "label": "Machine Types",
                "showLabel": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1767614670023,
                "baseUnit": "none",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "count",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val = avg(cloud.gcp.gce_instance.compute_googleapis_com.instance.disk.read_ops_count), by: { gcp.project.id, gcp.zone, gcp.resource_labels.instance_id, gcp.metric_labels.instance_name, gcp.metric_labels.device_name }, filter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) AND  in(gcp.metric_labels.instance_name, array($InstanceName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk read ops",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.gce_instance.compute_googleapis_com.instance.disk.write_ops_count), by: { gcp.project.id, gcp.zone, gcp.resource_labels.instance_id, gcp.metric_labels.instance_name, gcp.metric_labels.device_name }, filter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) AND  in(gcp.metric_labels.instance_name, array($InstanceName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Disk write ops",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.gce_instance.compute_googleapis_com.instance.disk.read_bytes_count), by: { gcp.project.id, gcp.zone, gcp.resource_labels.instance_id, gcp.metric_labels.instance_name, gcp.metric_labels.device_name }, filter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) AND  in(gcp.metric_labels.instance_name, array($InstanceName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Read bytes",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1769101035672,
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
        "9": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries val=avg(cloud.gcp.gce_instance.compute_googleapis_com.instance.disk.write_bytes_count), by: { gcp.project.id, gcp.zone, gcp.resource_labels.instance_id, gcp.metric_labels.instance_name, gcp.metric_labels.device_name }, filter: {gcp.resource.type == \"gce_instance\" AND in(gcp.project.id, array($Project)) AND in(gcp.zone, array($Zone)) AND  in(gcp.resource_labels.instance_id, array($InstanceId)) AND  in(gcp.metric_labels.instance_name, array($InstanceName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Write bytes",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1769101057591,
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
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "timeseries sum(cloud.gcp.gce_instance.compute_googleapis_com.instance.cpu.utilization, scalar:true), by: {gcp.project.id}\n| summarize collectDistinct(gcp.project.id)",
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
          "input": "timeseries sum(cloud.gcp.gce_instance.compute_googleapis_com.instance.cpu.utilization, scalar:true), by: {gcp.zone}\n| summarize collectDistinct(gcp.zone)",
          "key": "Zone",
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
          "input": "timeseries sum(cloud.gcp.gce_instance.compute_googleapis_com.instance.cpu.utilization, scalar:true), by: {gcp.resource_labels.instance_id}\n| summarize collectDistinct(gcp.resource_labels.instance_id)",
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
          "input": "timeseries sum(cloud.gcp.gce_instance.compute_googleapis_com.instance.cpu.utilization, scalar:true), by: {gcp.metric_labels.instance_name}\n| summarize collectDistinct(gcp.metric_labels.instance_name)",
          "key": "InstanceName",
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
  custom_id = "dynatrace.clouds.gcp-gce"
  # private = false
}
