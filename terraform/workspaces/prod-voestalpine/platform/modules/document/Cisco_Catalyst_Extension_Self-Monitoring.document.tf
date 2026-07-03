resource "dynatrace_document" "Cisco_Catalyst_Extension_Self-Monitoring" {
  name      = "Cisco Catalyst Extension Self-Monitoring"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "13": {
          "h": 1,
          "w": 19,
          "x": 0,
          "y": 0
        },
        "14": {
          "h": 1,
          "w": 19,
          "x": 0,
          "y": 16
        },
        "15": {
          "h": 1,
          "w": 19,
          "x": 0,
          "y": 32
        },
        "16": {
          "h": 1,
          "w": 19,
          "x": 0,
          "y": 39
        },
        "17": {
          "h": 1,
          "w": 19,
          "x": 0,
          "y": 46
        },
        "18": {
          "h": 1,
          "w": 19,
          "x": 0,
          "y": 53
        },
        "19": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 1
        },
        "20": {
          "h": 9,
          "w": 8,
          "x": 0,
          "y": 7
        },
        "21": {
          "h": 6,
          "w": 12,
          "x": 8,
          "y": 1
        },
        "22": {
          "h": 9,
          "w": 6,
          "x": 8,
          "y": 7
        },
        "23": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 17
        },
        "24": {
          "h": 6,
          "w": 12,
          "x": 8,
          "y": 17
        },
        "25": {
          "h": 9,
          "w": 8,
          "x": 0,
          "y": 23
        },
        "26": {
          "h": 9,
          "w": 6,
          "x": 8,
          "y": 23
        },
        "27": {
          "h": 9,
          "w": 6,
          "x": 14,
          "y": 7
        },
        "28": {
          "h": 9,
          "w": 6,
          "x": 14,
          "y": 23
        },
        "29": {
          "h": 6,
          "w": 10,
          "x": 0,
          "y": 33
        },
        "30": {
          "h": 6,
          "w": 10,
          "x": 10,
          "y": 33
        },
        "31": {
          "h": 6,
          "w": 10,
          "x": 0,
          "y": 40
        },
        "32": {
          "h": 6,
          "w": 10,
          "x": 10,
          "y": 40
        },
        "33": {
          "h": 6,
          "w": 10,
          "x": 0,
          "y": 47
        },
        "34": {
          "h": 6,
          "w": 10,
          "x": 10,
          "y": 47
        }
      },
      "settings": {},
      "tiles": {
        "13": {
          "content": "---  ",
          "type": "markdown"
        },
        "14": {
          "content": "---  ",
          "type": "markdown"
        },
        "15": {
          "content": "---  ",
          "type": "markdown"
        },
        "16": {
          "content": "---  ",
          "type": "markdown"
        },
        "17": {
          "content": "---  ",
          "type": "markdown"
        },
        "18": {
          "content": "---  ",
          "type": "markdown"
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "  timeseries avg(sfm.cisco.cc.get_devices_by_query.duration),\n  by: { config_name },\n  filter: { config_index == \"None\" and in(config_name, $config_name)}\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Device discovery query duration (by: config name)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1779172581409,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(sfm.cisco.cc.get_devices_by_query.duration)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "  timeseries avg(sfm.cisco.cc.get_devices_by_query.duration),\n  by: { config_name, config_index },\n  filter: { config_index != \"None\" and in(config_name, $config_name)}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Device metrics query duration (by: config name, group index)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "always"
            },
            "unitsOverrides": [
              {
                "added": 1779172601554,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(sfm.cisco.cc.get_devices_by_query.duration)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "21": {
          "content": "",
          "type": "markdown"
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "  timeseries avg(sfm.cisco.cc.group.records_fetched.gauge),\n  by: { entity_type, config_name, config_index },\n  filter: { entity_type == \"device\" and in(config_name, $config_name)}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Device metrics records fetched (by: config name, group index)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "always"
            },
            "unitsOverrides": [
              {
                "added": 1779172601554,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(sfm.cisco.cc.get_devices_by_query.duration)",
                "suffix": "",
                "unitCategory": "time"
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
          "description": "",
          "query": "  timeseries avg(sfm.cisco.cc.get_intent_api_interfaces.duration),\n  by: { config_name },\n  filter: { in(config_name, $config_name)}\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Interface discovery query duration (by: config name)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1747700000000,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(sfm.cisco.cc.get_intent_api_interfaces.duration)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "24": {
          "content": "",
          "type": "markdown"
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "  timeseries avg(sfm.cisco.cc.get_interfaces_by_query.duration),\n  by: { config_name, config_index },\n  filter: { config_index != \"None\" and in(config_name, $config_name)}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Interface metrics query duration (by: config name, group index)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "always"
            },
            "unitsOverrides": [
              {
                "added": 1747700000000,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(sfm.cisco.cc.get_interfaces_by_query.duration)",
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
          "query": "  timeseries avg(sfm.cisco.cc.group.records_fetched.gauge),\n  by: { entity_type, config_name, config_index },\n  filter: { entity_type == \"interface\" and in(config_name, $config_name)}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Interface metrics records fetched (by: config name, group index)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "always"
            },
            "unitsOverrides": []
          }
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "  timeseries avg(sfm.cisco.cc.group.entities_reported.gauge),\n  by: { entity_type, config_name, config_index },\n  filter: { entity_type == \"device\" and in(config_name, $config_name)}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Device metrics records reported (by: config name, group index)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "always"
            },
            "unitsOverrides": [
              {
                "added": 1779172601554,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(sfm.cisco.cc.get_devices_by_query.duration)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "  timeseries avg(sfm.cisco.cc.group.entities_reported.gauge),\n  by: { entity_type, config_name, config_index },\n  filter: { entity_type == \"interface\" and in(config_name, $config_name)}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Interface metrics records reported (by: config name, group index)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              },
              "pointsDisplay": "always"
            },
            "unitsOverrides": []
          }
        },
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "  timeseries avg(sfm.cisco.cc.get_sites.duration),\n  by: { config_name },\n  filter: { in(config_name, $config_name)}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Site discovery duration (by: config name)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1779200000000,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(sfm.cisco.cc.get_sites.duration)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "  timeseries avg(sfm.cisco.cc.get_site_health_summaries.duration),\n  by: { config_name },\n  filter: { in(config_name, $config_name)}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Site health summaries duration (by: config name)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1779200000000,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(sfm.cisco.cc.get_site_health_summaries.duration)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "  timeseries avg(sfm.cisco.cc.get_network_health.duration),\n  by: { config_name },\n  filter: { in(config_name, $config_name)}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Network health duration (by: config name)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1779200000000,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(sfm.cisco.cc.get_network_health.duration)",
                "suffix": "",
                "unitCategory": "time"
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
          "query": "  timeseries avg(sfm.cisco.cc.get_client_health.duration),\n  by: { config_name },\n  filter: { in(config_name, $config_name)}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Client health duration (by: config name)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1779200000000,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(sfm.cisco.cc.get_client_health.duration)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "  timeseries avg(sfm.cisco.cc.issues.duration),\n  by: { config_name },\n  filter: { in(config_name, $config_name)}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Issues collection duration (by: config name)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "chartSettings": {
              "gapPolicy": "connect",
              "legend": {
                "position": "bottom"
              }
            },
            "unitsOverrides": [
              {
                "added": 1779200000000,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(sfm.cisco.cc.issues.duration)",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "34": {
          "content": "",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch metric.series, from: now()-1d\n| filter metric.key == \"sfm.cisco.cc.get_devices_by_query.duration\"\n| summarize count(), by: { config_name }\n| fields config_name\n\n\n//fetch metric.series\n//| filter metric.key ~ \"com.dynatrace.extension.network_device\"\n//| filter dt.metrics.source ~ \"cisco-cc\"\n//| fieldsKeep center\n//| dedup center",
          "key": "config_name",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "com-dynatrace-extension-cisco-cc-catalyst-extension-sfm"
  # private = false
}
