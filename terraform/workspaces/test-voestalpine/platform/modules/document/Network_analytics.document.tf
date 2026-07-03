resource "dynatrace_document" "Network_analytics" {
  name      = "Network analytics"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 8,
          "w": 6,
          "x": 18,
          "y": 31
        },
        "11": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 39
        },
        "12": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 2
        },
        "13": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "14": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 10
        },
        "17": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 10
        },
        "18": {
          "h": 7,
          "w": 7,
          "x": 5,
          "y": 3
        },
        "20": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 52
        },
        "21": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "22": {
          "h": 7,
          "w": 12,
          "x": 12,
          "y": 23
        },
        "23": {
          "h": 7,
          "w": 12,
          "x": 12,
          "y": 16
        },
        "26": {
          "h": 8,
          "w": 6,
          "x": 12,
          "y": 31
        },
        "27": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 40
        },
        "28": {
          "h": 2,
          "w": 6,
          "x": 18,
          "y": 3
        },
        "29": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 3
        },
        "3": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 23
        },
        "30": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 40
        },
        "32": {
          "h": 7,
          "w": 6,
          "x": 6,
          "y": 16
        },
        "33": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 46
        },
        "34": {
          "h": 5,
          "w": 12,
          "x": 0,
          "y": 52
        },
        "35": {
          "h": 5,
          "w": 5,
          "x": 0,
          "y": 47
        },
        "36": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 47
        },
        "37": {
          "h": 5,
          "w": 7,
          "x": 5,
          "y": 47
        },
        "38": {
          "h": 7,
          "w": 5,
          "x": 0,
          "y": 3
        },
        "39": {
          "h": 8,
          "w": 6,
          "x": 6,
          "y": 31
        },
        "4": {
          "h": 7,
          "w": 6,
          "x": 0,
          "y": 16
        },
        "40": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 57
        },
        "7": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "8": {
          "h": 8,
          "w": 6,
          "x": 0,
          "y": 31
        },
        "9": {
          "h": 5,
          "w": 12,
          "x": 12,
          "y": 5
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "For more info about traffic paths recorded in flow logs see:\nhttps://docs.aws.amazon.com/vpc/latest/userguide/flow-log-records.html",
          "query": "// Aggregate traffic by traffic_path (sum of bytes), filter by log group, action and flow direction, and map traffic_path to human-friendly destination names.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Normalize: convert 'bytes' to an integer type to ensure accurate aggregation.\n| fieldsAdd bytes = toLong(bytes)\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize { Traffic = sum(bytes) }, by: { traffic_path }\n// Normalize: ensure field is a string for comparisons and mapping.\n| fieldsAdd traffic_path = toString(traffic_path)\n| fieldsAdd destination = coalesce(\n if(traffic_path == \"1\", \"Same VPC\"),\n if(traffic_path == \"2\", \"Internet gateway or a gateway VPC endpoint\"),\n if(traffic_path == \"3\", \"Virtual private gateway\"),\n if(traffic_path == \"4\", \"Intra-region VPC peering connectio\"),\n if(traffic_path == \"5\", \"Inter-region VPC peering connection\"),\n if(traffic_path == \"6\", \"Local gateway\"),\n if(traffic_path == \"7\", \"Gateway VPC endpoint (Nitro-based instances only)\"),\n if(traffic_path == \"8\", \"Internet gateway (Nitro-based instances only\"),\n \"Unknown\"\n )\n// Projection: select and format final output columns for the visualization.\n| fields Destination = concat(destination, \" (\", traffic_path, \")\"), Traffic\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Traffic types",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Destination",
                  "destination"
                ],
                "categoryAxisLabel": "Destination,destination"
              }
            },
            "legend": {
              "ratio": 13
            },
            "unitsOverrides": [
              {
                "added": 1757485743359,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "11": {
          "content": "### Transit gateway network flows",
          "type": "markdown"
        },
        "12": {
          "content": "### VPC - Network conversations",
          "type": "markdown"
        },
        "13": {
          "content": "### VPC - source/destination Ports",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Top 5 origin VPC by traffic (timeseries); summarize traffic timeseries by vpc_id and return top 5.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Timeseries: create timeseries buckets (interval-aligned) and aggregate metrics over timeframes.\n| makeTimeseries Traffic = sum(tolong(bytes)), by: { vpc_id }\n// Formatting: rename fields to human-friendly column names for the UI.\n| fieldsRename `Origin VPC` = vpc_id\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort arraySum(Traffic) desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 5",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 5 origin VPC ",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Traffic"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect"
            },
            "unitsOverrides": [
              {
                "added": 1757489172424,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "17": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Top 100 origin VPC entries by traffic grouped by vpc_id and destination address; aggregate bytes and sort.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize bytes = sum(toLong(bytes)), by: { vpc_id, pkt_dstaddr }\n// Formatting: rename fields to human-friendly column names for the UI.\n| fieldsRename `Origin VPC` = vpc_id, `Source Address` = pkt_dstaddr, `Traffic` = bytes\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 100 origin VPC ",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1706686216666,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Traffic",
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
            }
          },
          "query": "// Top 5 endpoint pairs as timeseries by traffic; concatenate addresses into a flow label and return top 5.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n| fieldsAdd flow = concat(pkt_srcaddr, \" ⇄ \", pkt_dstaddr)\n// Timeseries: create timeseries buckets (interval-aligned) and aggregate metrics over timeframes.\n| makeTimeseries Traffic = sum(toLong(bytes)), by: { `Flow` = flow }\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort arraySum(Traffic) desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 5",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 5 endpoint pairs",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Traffic"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect"
            },
            "legend": {
              "ratio": 24
            },
            "unitsOverrides": [
              {
                "added": 1756990533175,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Top 5 log groups by log count (timeseries); filter OK log_status and return top 5 log groups.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Timeseries: create timeseries buckets (interval-aligned) and aggregate metrics over timeframes.\n| makeTimeseries logCount = count(), by: { aws.log_group }\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort logCount desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 5",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 5 log group sources",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "logCount"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Log count"
              }
            },
            "legend": {
              "ratio": 28
            },
            "unitsOverrides": [
              {
                "added": 1757311552850,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "21": {
          "content": "### VPC network flows matrix",
          "type": "markdown"
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Top 100 destination addresses and ports by traffic; aggregate and rename output columns for readability.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize bytes = sum(toLong(bytes)), by: { dstport, pkt_dstaddr, vpc_id }\n// Formatting: rename fields to human-friendly column names for the UI.\n| fieldsRename `Origin VPC` = vpc_id, `Traffic` = bytes, `Port` = dstport, `Address` = pkt_dstaddr\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 100 destination addresses and ports",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnOrder": [
                "[\"Address\"]",
                "[\"Port\"]",
                "[\"Traffic\"]",
                "[\"Origin VPC\"]"
              ],
              "columnWidths": {
                "[\"Address\"]": 118.81,
                "[\"Destination Port\"]": 121,
                "[\"Origin VPC\"]": 189,
                "[\"Source Address\"]": 166,
                "[\"Traffic\"]": 91.23
              },
              "sortBy": [
                {
                  "columnId": "[\"Traffic\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1706688089510,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Traffic",
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
            }
          },
          "query": "// Top 10 source port/address pairs as timeseries by traffic; aggregate and return top 10.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Timeseries: create timeseries buckets (interval-aligned) and aggregate metrics over timeframes.\n| makeTimeseries Traffic = sum(tolong(bytes)), by: { srcport, pkt_srcaddr }\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort arraySum(Traffic) desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 source port, address",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Traffic"
                ],
                "timestamp": "timeframe"
              }
            },
            "unitsOverrides": [
              {
                "added": 1757504661027,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "26": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Inter-region traffic by region pairing and bidirectional bytes: aggregate per region-key and join reverse direction, then sum and sort.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Normalize: convert 'bytes' to an integer type to ensure accurate aggregation.\n| fieldsAdd bytes = toLong(bytes), key = record(a = pkt_srcaddr, b = pkt_dstaddr), region = coalesce(aws.region, cloud.region)\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize { s_bytes = sum(bytes) }, by: { region, key }\n// Lookup/Join: perform a lookup (like a join) against another dataset to enrich or correlate results.\n| lookup [\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\n fetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n | filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n | filter in(flow_direction, $FlowDirection)\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n | filter in(action, $Action)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n | filter log_status == \"OK\"\n// Normalize: convert 'bytes' to an integer type to ensure accurate aggregation.\n | fieldsAdd bytes = toLong(bytes), key = record(a = pkt_dstaddr, b = pkt_srcaddr), region = coalesce(aws.region, cloud.region)\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n | summarize { r_bytes = sum(bytes) }, by: { region, key }\n ], sourceField: key, lookupField: key, fields: { dst_region = region, r_bytes }\n// Filter: apply additional filtering to narrow dataset for correctness/performance.\n| filter isNotNull(dst_region) and region != dst_region\n| fieldsAdd bytesTotal = s_bytes + r_bytes\n| fieldsAdd pair = if(region \u003c= dst_region, concat(region, \" ⇄ \", dst_region), else: concat(dst_region, \" ⇄ \", region))\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize Traffic = sum(bytesTotal), by: { pair }\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Inter region traffic",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "pair"
                ],
                "categoryAxisLabel": "pair"
              }
            },
            "legend": {
              "ratio": 16
            },
            "unitsOverrides": [
              {
                "added": 1757486046052,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// TGW packet loss diagnostics: compute packet loss percentage per src/dst pair using various packets_lost_* fields, sorting by highest loss. (Query unchanged.)\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: restrict to records where TGW id is present (exclude placeholder '-' entries).\n| filter tgw_id != \"-\"\n| fieldsAdd totalPacketsLost = toLong(packets_lost_blackhole) + toLong(packets_lost_mtu_exceeded) + toLong(packets_lost_no_route) + toLong(packets-loss-ttl)\n// Filter: apply additional filtering to narrow dataset for correctness/performance.\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize `Packet Loss` = (toDouble(sum(totalPacketsLost)) * 100) / toDouble(sum(toLong(packets))), by: { srcaddr, dstaddr }\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort `Packet Loss` desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 TGW traffic with largest packet loss",
          "type": "data",
          "visualization": "heatmap",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "colorModeType": {
              "colorMode": "color-palette",
              "numericColorPalette": "red-green-inverted",
              "sequentialCustomColors": []
            },
            "coloring": {},
            "unitsOverrides": [
              {
                "added": 1706203395373,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Packet Loss",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "// Number of distinct outbound HTTPS/HTTP endpoints contacted by your workloads (egress): filter egress, ports 80/443 and count distinct dst addresses.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\" and flow_direction == \"egress\"\n// Filter: apply additional filtering to narrow dataset for correctness/performance.\n| filter in(toLong(dstport), { 80, 443 })\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize endpoints = countDistinct(pkt_dstaddr)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Outbound HTTP(S) endpoints your workloads contacted (egress)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "endpoints"
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
          "query": "// Number of distinct inbound clients contacting your HTTP(S) services (ingress): filter ingress, ports 80/443 and count distinct source addresses.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\" and flow_direction == \"ingress\"\n// Filter: apply additional filtering to narrow dataset for correctness/performance.\n| filter in(toLong(dstport), { 80, 443 })\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize endpoints = countDistinct(pkt_srcaddr)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Inbound clients hitting your HTTP(S) services (ingress)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none",
              "prefixIcon": "",
              "recordField": "endpoints"
            }
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Top 100 source addresses and ports by total traffic; filter OK log_status, aggregate bytes and rename output fields.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize bytes = sum(toLong(bytes)), by: { pkt_srcaddr, vpc_id, srcport }\n// Formatting: rename fields to human-friendly column names for the UI.\n| fieldsRename `Origin VPC` = vpc_id, `Address` = pkt_srcaddr, `Port` = srcport, `Traffic` = bytes\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 100
          },
          "title": "Top 100 source addresses and ports",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnOrder": [
                "[\"Address\"]",
                "[\"Port\"]",
                "[\"Traffic\"]",
                "[\"Origin VPC\"]"
              ],
              "columnWidths": {
                "[\"Address\"]": 117,
                "[\"Origin VPC\"]": 194.8,
                "[\"Port\"]": 63.19,
                "[\"Source Address\"]": 112,
                "[\"Source Port\"]": 61,
                "[\"Traffic\"]": 75
              },
              "sortBy": [
                {
                  "columnId": "[\"Traffic\"]",
                  "direction": "descending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1706688257029,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
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
          "query": "// Total TGW traffic by tgw_id (sum of bytes), filtered by flow direction and presence of tgw_id.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: restrict to records where TGW id is present (exclude placeholder '-' entries).\n| filter tgw_id != \"-\"\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize Traffic = sum(toLong(bytes)), by: tgw_id\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "TGW traffic",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "circleChartSettings": {
                "groupingThresholdValue": 1,
                "showTotalValue": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1706203474716,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "32": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Top destination ports by traffic and flow count; aggregate bytes and number of flows per dstport, return top 10.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize { bytes = sum(toLong(bytes)), flows = count() }, by: { dstport }\n// Formatting: rename fields to human-friendly column names for the UI.\n| fieldsRename `Destination Port` = dstport, Traffic = bytes, `Flows` = flows\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 destination ports",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Destination Port"
                ]
              },
              "circleChartSettings": {
                "showTotalValue": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1756988911977,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "33": {
          "content": "### Logs overview",
          "type": "markdown"
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize logCount = count(), by: { aws.log_group }\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort logCount desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 100 log group sources",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "honeycomb": {
              "labels": {
                "showLabels": true
              }
            }
          }
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Total log count across the selected log groups (no action or flow filters applied here unless variables are used).\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize `Log count` = count(), by: {}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total log count",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "LogsIcon"
            },
            "unitsOverrides": [
              {
                "added": 1757311552850,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Timeseries of log counts per log group to help identify NODATA/SKIPDATA sources: filter OK log_status and make timeseries per aws.log_group.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Timeseries: create timeseries buckets (interval-aligned) and aggregate metrics over timeframes.\n| makeTimeseries `Log count` = count(), by: { aws.log_group }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "NODATA and SKIPDATA log sources",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "logCount",
                  "Log count"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Log count"
              }
            },
            "legend": {
              "ratio": 33
            },
            "unitsOverrides": [
              {
                "added": 1757311552850,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "37": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Distribution of logs by flow_direction (egress vs ingress); aggregates counts and sorts.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize logCount = count(), by: flow_direction\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort logCount desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Egress/Ingress log distribution",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "legend": {
              "ratio": 14
            },
            "unitsOverrides": [
              {
                "added": 1757311552850,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "bytes",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Top endpoint pairs by traffic (top 10) with normalized pair ordering, aggregate bytes and sort.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n| fieldsAdd pair = if(pkt_srcaddr \u003c= pkt_dstaddr,\n concat(pkt_srcaddr, \" ⇄ \", pkt_dstaddr),\n else: concat(pkt_dstaddr, \" ⇄ \", pkt_srcaddr)\n )\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize bytes = sum(toLong(bytes)), by: { pair, vpc_id }\n// Formatting: rename fields to human-friendly column names for the UI.\n| fieldsRename `Origin VPC` = vpc_id, `Endpoint pair` = pair, `Traffic` = bytes\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 endpoint pairs",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Endpoint pair"
                ]
              },
              "circleChartSettings": {
                "showTotalValue": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1756969775826,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Inter-AZ traffic pairing (bidirectional) aggregated by az_id; sum bidirectional bytes and present top pairs.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Normalize: convert 'bytes' to an integer type to ensure accurate aggregation.\n| fieldsAdd bytes = toLong(bytes), key = record(a = pkt_srcaddr, b = pkt_dstaddr)\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize { s_bytes = sum(bytes) }, by: { az_id, key }\n// Lookup/Join: perform a lookup (like a join) against another dataset to enrich or correlate results.\n| lookup [\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\n fetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n | filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n | filter in(flow_direction, $FlowDirection)\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n | filter in(action, $Action)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n | filter log_status == \"OK\"\n// Normalize: convert 'bytes' to an integer type to ensure accurate aggregation.\n | fieldsAdd bytes = toLong(bytes), key = record(a = pkt_dstaddr, b = pkt_srcaddr)\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n | summarize { r_bytes = sum(bytes) }, by: { az_id, key }\n ], sourceField: key, lookupField: key, fields: { dst_az = az_id, r_bytes }\n// Filter: apply additional filtering to narrow dataset for correctness/performance.\n| filter isNotNull(dst_az) and az_id != dst_az\n| fieldsAdd bytesTotal = s_bytes + r_bytes\n| fieldsAdd pair = if(az_id \u003c= dst_az, concat(az_id, \" ⇄ \", dst_az), else: concat(dst_az, \" ⇄ \", az_id))\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize Traffic = sum(bytesTotal), by: { pair }\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 10000
          },
          "title": "Inter availability zone traffic",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "pair"
                ],
                "categoryAxisLabel": "pair"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 3
              }
            },
            "legend": {
              "ratio": 13
            },
            "unitsOverrides": [
              {
                "added": 1756969775826,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Top source ports by total traffic and flow count; filter OK log_status and sum bytes/flow counts.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize { bytes = sum(toLong(bytes)), flows = count() }, by: { srcport }\n// Formatting: rename fields to human-friendly column names for the UI.\n| fieldsRename `Source Port` = srcport, Traffic = bytes, `Flows` = flows\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top 10 source ports",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "Source Port"
                ],
                "categoryAxisLabel": "Source Port"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 1,
                "showTotalValue": true
              }
            },
            "unitsOverrides": [
              {
                "added": 1756988911977,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "40": {
          "content": "### Resources\nFor data onboarding and documentation, see the flow logs ingestion docs: [Documentation](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases/lma-e2e-observability)\n\nExplore this dashboard in the playground [Playground](https://wkf10640.apps.dynatrace.com/ui/apps/dynatrace.dashboards/dashboard/dynatrace.infraops.Network-analytics).",
          "type": "markdown"
        },
        "7": {
          "content": "### AWS Network Flow Analytics\nThis dashboard provides an overview of AWS Network Flows by utilising AWS Network Flow Logs. If you don't see any data, make sure that flow logs are ingested [Documentation](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases/lma-e2e-observability)",
          "type": "markdown"
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "// Calculate inter-VPC traffic by pairing source/destination addresses (bidirectional), summing bytes, and filtering out same-vpc traffic.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n// Normalize: convert 'bytes' to an integer type to ensure accurate aggregation.\n| fieldsAdd bytes = toLong(bytes), key = record(a = pkt_srcaddr, b = pkt_dstaddr)\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize { s_bytes = sum(bytes) }, by: { vpc_id, key }\n// Lookup/Join: perform a lookup (like a join) against another dataset to enrich or correlate results.\n| lookup [\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\n fetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n | filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n | filter in(flow_direction, $FlowDirection)\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n | filter in(action, $Action)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n | filter log_status == \"OK\"\n// Normalize: convert 'bytes' to an integer type to ensure accurate aggregation.\n | fieldsAdd bytes = toLong(bytes), key = record(a = pkt_dstaddr, b = pkt_srcaddr)\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n | summarize { r_bytes = sum(bytes) }, by: { vpc_id, key }\n ], sourceField: key, lookupField: key, fields: { dst_vpc = vpc_id, r_bytes }\n// Filter: apply additional filtering to narrow dataset for correctness/performance.\n| filter isNotNull(dst_vpc) and vpc_id != dst_vpc\n| fieldsAdd bytesTotal = s_bytes + r_bytes\n| fieldsAdd pair = if(vpc_id \u003c= dst_vpc,\n concat(vpc_id, \" ⇄ \", dst_vpc),\n else: concat(dst_vpc, \" ⇄ \", vpc_id)\n )\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize Traffic = sum(bytesTotal), by: { pair }\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 10000
          },
          "title": "Inter VPC traffic",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "pair"
                ],
                "categoryAxisLabel": "pair"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 3
              }
            },
            "legend": {
              "ratio": 17
            },
            "unitsOverrides": [
              {
                "added": 1756969775826,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Traffic",
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
            }
          },
          "query": "// Top 100 endpoint (address) pairs by traffic; normalize pair ordering, aggregate bytes and sort.\n// Source: fetch the base dataset for this tile (e.g., logs, events, or dt.entity.*).\nfetch logs\n// Filter: limit to selected log group(s) via the $LogGroupFilter variable.\n| filter matchesValue(aws.log_group, {$LogGroupFilter})\n// Filter: include only records matching the selected action (variable $Action, e.g. ACCEPT/REJECT).\n| filter in(action, $Action)\n// Filter: include only the selected flow direction(s) (variable $FlowDirection, e.g. ingress/egress).\n| filter in(flow_direction, $FlowDirection)\n// Filter: include only logs with status 'OK' to avoid partial/invalid records.\n| filter log_status == \"OK\"\n| fieldsAdd pair = if(pkt_srcaddr \u003c= pkt_dstaddr,\n concat(pkt_srcaddr, \" ⇄ \", pkt_dstaddr),\n else: concat(pkt_dstaddr, \" ⇄ \", pkt_srcaddr)\n )\n// Aggregate: summarize/rollup step (e.g., sum bytes, count flows) to compute metrics used by visualization.\n| summarize bytes = sum(toLong(bytes)), by: { pair, vpc_id }\n// Formatting: rename fields to human-friendly column names for the UI.\n| fieldsRename `Origin VPC` = vpc_id, `Endpoint pair` = pair, `Traffic` = bytes\n// Sort: order results (commonly descending by traffic or counts) so top items surface first.\n| sort Traffic desc\n// Limit: restrict the number of returned rows for performance and UI readability.\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 100
          },
          "title": "Top 100 endpoint pairs",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "unitsOverrides": [
              {
                "added": 1706688301679,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": true,
                "displayUnit": null,
                "identifier": "Traffic",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        }
      },
      "variables": [
        {
          "defaultValue": "*flow-logs*",
          "editable": true,
          "key": "LogGroupFilter",
          "type": "text",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "egress"
          ],
          "editable": true,
          "input": "ingress,egress",
          "key": "FlowDirection",
          "multiple": true,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "ACCEPT",
          "editable": true,
          "input": "ACCEPT,REJECT",
          "key": "Action",
          "multiple": false,
          "type": "csv",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.infraops.Network-analytics"
  # private = false
}
