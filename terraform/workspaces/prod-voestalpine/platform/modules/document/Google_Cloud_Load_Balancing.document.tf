resource "dynatrace_document" "Google_Cloud_Load_Balancing" {
  name      = "Google Cloud Load Balancing"
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
          "y": 13
        },
        "11": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 13
        },
        "12": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 18
        },
        "13": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 18
        },
        "14": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 23
        },
        "15": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 24
        },
        "16": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 24
        },
        "19": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 29
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
          "y": 29
        },
        "21": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 34
        },
        "24": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 35
        },
        "25": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 35
        },
        "3": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 3
        },
        "4": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 3
        },
        "6": {
          "h": 5,
          "w": 8,
          "x": 0,
          "y": 8
        },
        "7": {
          "h": 5,
          "w": 8,
          "x": 8,
          "y": 8
        },
        "8": {
          "h": 5,
          "w": 8,
          "x": 16,
          "y": 8
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "# Google Cloud Load Balancing Overview\nThis dashboard provides insights into your GCP Load Balancers including HTTPS, TCP/SSL Proxy, and Network Load Balancers.",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Bytes sent by clients to the HTTPS LB as request payloads.",
          "query": "timeseries val=sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.request_bytes_count), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.url_map_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region)) AND in(gcp.resource_labels.forwarding_rule_name, array($ForwardingRule)) AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.url_map_name, array($UrlMapName)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Frontend request bytes",
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
                "added": 1769103722765,
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
          "description": "Bytes sent by the HTTPS LB to clients as response payloads.",
          "query": "timeseries val=sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.response_bytes_count), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.url_map_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region)) AND in(gcp.resource_labels.forwarding_rule_name, array($ForwardingRule)) AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.url_map_name, array($UrlMapName)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Frontend response bytes",
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
                "added": 1769103730352,
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
          "description": "Bytes sent by the HTTPS LB to backends as request payloads.",
          "query": "timeseries val=sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.backend_request_bytes_count), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.url_map_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region)) AND in(gcp.resource_labels.forwarding_rule_name, array($ForwardingRule)) AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.url_map_name, array($UrlMapName)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Backend request bytes",
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
                "added": 1769103738520,
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
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Bytes sent by backends to the HTTPS LB as response payloads.",
          "query": "timeseries val=sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.backend_response_bytes_count), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.url_map_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region)) AND in(gcp.resource_labels.forwarding_rule_name, array($ForwardingRule)) AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.url_map_name, array($UrlMapName)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Backend response bytes",
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
                "added": 1769103745349,
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
          "content": "##### TCP/SSL Proxy Load Balancer",
          "type": "markdown"
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "New TCP/SSL connections established between clients and the proxy LB.",
          "query": "timeseries val=sum(cloud.gcp.tcp_ssl_proxy_rule.loadbalancing_googleapis_com.tcp_ssl_proxy.new_connections), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.target_proxy_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region))   AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.target_proxy_name, array($TargetProxyName)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "New connections",
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
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "TCP/SSL connections closed between clients and the proxy LB.",
          "query": "timeseries val=sum(cloud.gcp.tcp_ssl_proxy_rule.loadbalancing_googleapis_com.tcp_ssl_proxy.closed_connections), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.target_proxy_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region))   AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.target_proxy_name, array($TargetProxyName)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Closed connections",
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
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Bytes received by the TCP/SSL proxy LB from clients.",
          "query": "timeseries val=sum(cloud.gcp.tcp_ssl_proxy_rule.loadbalancing_googleapis_com.tcp_ssl_proxy.ingress_bytes_count), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.target_proxy_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region))  AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.target_proxy_name, array($TargetProxyName)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingress bytes",
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
                "added": 1769103758187,
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
        "2": {
          "content": "##### HTTPS Load Balancer",
          "type": "markdown"
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Bytes sent by the TCP/SSL proxy LB to clients.",
          "query": "timeseries val=sum(cloud.gcp.tcp_ssl_proxy_rule.loadbalancing_googleapis_com.tcp_ssl_proxy.egress_bytes_count), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.target_proxy_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region))  AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.target_proxy_name, array($TargetProxyName)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Egress bytes",
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
                "added": 1769103765225,
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
        "21": {
          "content": "##### Network (TCP/UDP) Load Balancer - L3",
          "type": "markdown"
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Bytes received by the L3 Network LB from external sources.",
          "query": "timeseries val=sum(cloud.gcp.tcp_lb_rule.loadbalancing_googleapis_com.l3.external.ingress_bytes_count), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.load_balancer_name, gcp.resource_labels.backend_name, gcp.resource_labels.network_name }, filter: { in(gcp.project.id, array($Project)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingress bytes",
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
                "added": 1769103774790,
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
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Bytes sent by the L3 Network LB to external destinations.",
          "query": "timeseries val=sum(cloud.gcp.tcp_lb_rule.loadbalancing_googleapis_com.l3.external.egress_bytes_count), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.load_balancer_name, gcp.resource_labels.backend_name, gcp.resource_labels.network_name }, filter: { in(gcp.project.id, array($Project)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Egress bytes",
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
                "added": 1769103781232,
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
          "description": "Requests received by the HTTPS LB from clients.",
          "query": "timeseries val=sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.request_count), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.url_map_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region)) AND in(gcp.resource_labels.forwarding_rule_name, array($ForwardingRule)) AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.url_map_name, array($UrlMapName)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Frontend requests",
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
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Requests sent from the HTTPS LB to backends.",
          "query": "timeseries val=sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.backend_request_count), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.url_map_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region)) AND in(gcp.resource_labels.forwarding_rule_name, array($ForwardingRule)) AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.url_map_name, array($UrlMapName)) }\n| sort arraySum(val) desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Backend requests",
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
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "End-to-end latency from client to HTTPS LB, including backend processing time.",
          "query": "timeseries val=avg(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.total_latencies), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.url_map_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region)) AND in(gcp.resource_labels.forwarding_rule_name, array($ForwardingRule)) AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.url_map_name, array($UrlMapName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Total latencies",
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
                "added": 1769103600302,
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
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Latency between the HTTPS LB and backends, excluding client-side network time.",
          "query": "timeseries val=avg(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.backend_latencies), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.url_map_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region)) AND in(gcp.resource_labels.forwarding_rule_name, array($ForwardingRule)) AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.url_map_name, array($UrlMapName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Backend latencies",
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
                "added": 1769103609975,
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
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "TCP round-trip time measured between clients and the HTTPS LB frontend.",
          "query": "timeseries val=avg(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.frontend_tcp_rtt), by: { gcp.project.id, gcp.resource_labels.forwarding_rule_name, gcp.resource_labels.url_map_name, gcp.resource_labels.backend_name }, filter: { in(gcp.project.id, array($Project)) AND in(gcp.location, array($Location)) AND in(gcp.resource_labels.region, array($Region)) AND in(gcp.resource_labels.forwarding_rule_name, array($ForwardingRule)) AND in(gcp.resource_labels.backend_name, array($BackendName)) AND in(gcp.resource_labels.url_map_name, array($UrlMapName)) }\n| sort val desc\n| limit toLong($Limit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Frontend TCP RTT",
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
                "added": 1769103707988,
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
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "timeseries sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.request_count, scalar:true), by: {gcp.project.id}\n| summarize collectDistinct(gcp.project.id)",
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
          "input": "timeseries sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.request_count, scalar:true), by: {gcp.location}\n| summarize collectDistinct(gcp.location)",
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
          "input": "timeseries sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.request_count, scalar:true), by: {gcp.resource_labels.region}\n| summarize collectDistinct(gcp.resource_labels.region)",
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
          "input": "timeseries sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.request_count, scalar:true), by: {gcp.resource_labels.forwarding_rule_name}\n| summarize collectDistinct(gcp.resource_labels.forwarding_rule_name)",
          "key": "ForwardingRule",
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
          "input": "timeseries sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.request_count, scalar:true), by: {gcp.resource_labels.backend_name}\n| summarize collectDistinct(gcp.resource_labels.backend_name)",
          "key": "BackendName",
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
          "input": "timeseries sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.request_count, scalar:true), by: {gcp.resource_labels.url_map_name}\n| summarize collectDistinct(gcp.resource_labels.url_map_name)",
          "key": "UrlMapName",
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
          "input": "timeseries sum(cloud.gcp.https_lb_rule.loadbalancing_googleapis_com.https.request_count, scalar:true), by: {gcp.resource_labels.target_proxy_name}\n| summarize collectDistinct(gcp.resource_labels.target_proxy_name)",
          "key": "TargetProxyName",
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
  custom_id = "dynatrace.clouds.gcp-load-balancing"
  # private = false
}
