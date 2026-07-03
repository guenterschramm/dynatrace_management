resource "dynatrace_document" "Infrastructure_Observability_Dashboard" {
  name      = "Infrastructure Observability Dashboard"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "1": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "10": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 60
        },
        "11": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 59
        },
        "12": {
          "h": 2,
          "w": 6,
          "x": 12,
          "y": 2
        },
        "13": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 37
        },
        "14": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 29
        },
        "15": {
          "h": 6,
          "w": 6,
          "x": 18,
          "y": 2
        },
        "16": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 43
        },
        "17": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 47
        },
        "18": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 51
        },
        "2": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 4
        },
        "21": {
          "h": 3,
          "w": 3,
          "x": 12,
          "y": 8
        },
        "22": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 55
        },
        "23": {
          "h": 3,
          "w": 6,
          "x": 0,
          "y": 11
        },
        "25": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 30
        },
        "26": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 11
        },
        "27": {
          "h": 3,
          "w": 12,
          "x": 12,
          "y": 30
        },
        "3": {
          "h": 3,
          "w": 12,
          "x": 0,
          "y": 8
        },
        "31": {
          "h": 2,
          "w": 6,
          "x": 6,
          "y": 2
        },
        "32": {
          "h": 3,
          "w": 9,
          "x": 15,
          "y": 8
        },
        "33": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 33
        },
        "34": {
          "h": 3,
          "w": 6,
          "x": 6,
          "y": 11
        },
        "35": {
          "h": 4,
          "w": 18,
          "x": 0,
          "y": 25
        },
        "38": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 25
        },
        "39": {
          "h": 9,
          "w": 24,
          "x": 0,
          "y": 16
        },
        "4": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 4
        },
        "40": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 64
        },
        "6": {
          "h": 2,
          "w": 6,
          "x": 0,
          "y": 2
        },
        "9": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 41
        }
      },
      "settings": {},
      "tiles": {
        "0": {
          "content": "### Hosts Health \u0026 Performance \nGet broad visibility into key information, metrics and problems of hosts and infrastructure. For deeper analysis, please use the [Infrastructure \u0026 Operations](/ui/apps/dynatrace.infraops/explorer/Hosts) app.",
          "type": "markdown"
        },
        "1": {
          "content": "### Impacted hosts\nFocus on immediate problems and prioritization.\n",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve the total count of log statuses grouped by log level, filtering for logs associated with hosts, and sort the results by log level in descending order.\ntimeseries values = sum(dt.log.status_per_entity_count, default: 0), \nfilter: isNotNull(dt.entity.host) or matchesPhrase(toString(dt.source.entity), \"HOST\"),\nby: {loglevel=status} | sort loglevel desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Logs accross all hosts",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "log-level",
              "fieldMapping": {
                "leftAxisValues": [
                  "values"
                ],
                "timestamp": "timeframe"
              },
              "leftYAxisSettings": {
                "label": "dt.log.status_per_entity_count"
              },
              "seriesOverrides": [
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                    }
                  },
                  "seriesId": [
                    "ERROR"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    }
                  },
                  "seriesId": [
                    "INFO"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                    }
                  },
                  "seriesId": [
                    "NONE"
                  ]
                },
                {
                  "override": {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-06-default, #a9780f)"
                    }
                  },
                  "seriesId": [
                    "WARN"
                  ]
                }
              ],
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
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
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-loglevel-emergency-default, #ae132d)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "ERROR"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "INFO"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-02-default, #2c2f3f)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "NONE"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-06-default, #a9780f)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "WARN"
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
        "11": {
          "content": "### Logs\n",
          "type": "markdown"
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Average availability for all hosts. Only active hosts are counted in. Availability is reported every couple of minutes, thus timeframe should include at least 5 minutes period.",
          "query": "// Calculate average host availability percentage, calculated from timeseries data over a defined timeframe.\nfetch dt.entity.host\n\n// exclude monitoring candidates and standalone hosts from the results\n| filterOut isMonitoringCandidate == true or standalone == true\n\n| lookup [\n  timeseries m1 = sum(dt.host.availability),\n  filter: availability.state == \"up\",\n  by: { availability.state, dt.entity.host }, \n  from: toTimestamp($dt_timeframe_from),\n  to: toTimestamp($dt_timeframe_to) - 2m\n\n  | fieldsAdd intervalToMinutes = toLong(interval) / 60 / power(10, 9)\n\n  // Clamp reported availability values at the interval limit to fix data anomalies\n  // Example: for 5-minute interval, for host with 100% availability, aggregation and rollup being \"sum\"\n  //          timeseries should look like that: [5, 5, 5, 5, 5]. Sometimes agent reports duplicate values, \n  //          which results in actual query look the following: [5, 10, 5, 5, 10].                         \n  | fieldsAdd m1 = if(m1[] \u003e intervalToMinutes, intervalToMinutes, else: m1[])\n\n  // parse command has following syntax: parse stringToParse, rulesToParse. So logic for that line does the following.\n  // 1. Replace \"null\" values with \"0\".\n  // 2. \"parse\" command does the following:\n  //   2.1. \"`[`ARRAY{...}\" - Parse string (result of replaceString(m1,...)) as array starting from \"[\" in string.\n  //   2.2. \"ARRAY{...}{1,10000}\" - Array should have length between 1 and 10000 elements. Extra elements are cut.\n  //   2.3. \"ARRAY{DOUBLE:i, ', '}\" - Split string into array. \n  //        Mask for element is \"DOUBLE:i, ', '\". For example, string \"3.0, \" would be set to \"3.0\" as only DOUBLE part is assigned to be extracted via ':i'.\n  //        Note: Since last element in array would look like \"1]\", it won't be attached to resulting array and that is expected. \n  //              We remove last element of array because availability is not yet calculated for current timeseries bucket.\n  //   2.4. \":m1Pop\" - attach result to query as \"m1Pop\" field.\n  | parse replaceString(toString(m1), \"null\", \"0\"), \n          \"\"\"'['ARRAY{ DOUBLE:i ', '}{1,10000}:m1Pop\"\"\"\n\n  // Availability is calculated as ratio of array values sum to array length.\n  // For example, for following array: m1Pop=[1, 1, 1, 0, 0] availability would be (3 / 5 * 100%), equating to 60%. \n  // Given that array has only 1 and 0 values in it, to count amount of values we can just summarize all array values instead of conditionally counting every \"1\" value in array.\n  // Division by intervalToMinutes is necessary because for bigger intervals values in each bucket inside timeseries can be [5,5,5,0,3]. Without division by interval, availability would be over 100% due to rollup being \"sum\" in timeseries.\n  | fieldsAdd availability = toDouble(arraySum(m1Pop) / arraySize(m1Pop) * 100) / intervalToMinutes\n], sourceField: id, lookupField: dt.entity.host, fields: {availability}\n\n| fields id, availability = coalesce(availability, 0)\n\n| summarize avg(availability)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Hosts availability",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "avg(availability)",
              "labelMode": "none",
              "prefixIcon": "HostsIcon",
              "recordField": "avg(availability)",
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1701249707791,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "avg(availability)",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "This chart is affected by the \"TopLimit\" variable.",
          "query": "// Retrieve the top process group instances by average CPU usage, sort them in descending order, and add a readable process name.\ntimeseries cpuUsage = avg(dt.process.cpu.usage), by:{dt.entity.process_group_instance}\n| sort arrayAvg(cpuUsage) desc\n| limit toLong($TopLimit)\n| fieldsAdd processName = entityName(dt.entity.process_group_instance)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit processes by highest CPU",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "cpuUsage"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Process CPU usage",
                "max": {
                  "mode": "custom",
                  "value": 100
                }
              },
              "legend": {
                "position": "right"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "processName"
              ]
            },
            "legend": {
              "ratio": 40
            }
          }
        },
        "14": {
          "content": "### Technologies and processes",
          "type": "markdown"
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Click on honeycomb to see the name of the host tooltip and click in \"Open with...\" to view host details in the Infrastructure \u0026 Operations app.\nThis chart is affected by the \"TopLimit\" variable.",
          "query": "// Calculate and rank hosts by their average availability percentage, calculated from timeseries data over a defined timeframe.\nfetch dt.entity.host\n\n// Exclude monitoring candidates and standalone hosts from the results\n| filterOut isMonitoringCandidate == true or standalone == true\n\n| lookup [\n  timeseries m1 = sum(dt.host.availability),\n  filter: availability.state == \"up\",\n  by: { availability.state, dt.entity.host },\n  from: toTimestamp($dt_timeframe_from),\n  to: toTimestamp($dt_timeframe_to) - 2m\n\n  | fieldsAdd intervalToMinutes = toLong(interval) / 60000000000\n\n  // Clamp reported availability values at the interval limit to fix data anomalies\n  // Example: for 5-minute interval, for host with 100% availability, aggregation and rollup being \"sum\"\n  //          timeseries should look like that: [5, 5, 5, 5, 5]. Sometimes agent reports duplicate values, \n  //          which results in actual query look the following: [5, 10, 5, 5, 10].                         \n  | fieldsAdd m1 = if(m1[] \u003e intervalToMinutes, intervalToMinutes, else: m1[])\n\n  // parse command has following syntax: parse stringToParse, rulesToParse. So logic for that line does the following.\n  // 1. Replace \"null\" values with \"0\".\n  // 2. \"parse\" command does the following:\n  //   2.1. \"`[`ARRAY{...}\" - Parse string (result of replaceString(m1,...)) as array starting from \"[\" in string.\n  //   2.2. \"ARRAY{...}{1,10000}\" - Array should have length between 1 and 10000 elements. Extra elements are cut.\n  //   2.3. \"ARRAY{DOUBLE:i, ', '}\" - Split string into array. \n  //        Mask for element is \"DOUBLE:i, ', '\". For example, string \"3.0, \" would be set to \"3.0\" as only DOUBLE part is assigned to be extracted via ':i'.\n  //        Note: Since last element in array would look like \"1]\", it won't be attached to resulting array and that is expected. \n  //              We remove last element of array because availability is not yet calculated for current timeseries bucket.\n  //   2.4. \":m1Pop\" - attach result to query as \"m1Pop\" field.\n  | parse replaceString(toString(m1), \"null\", \"0\"), \n          \"\"\"'['ARRAY{ DOUBLE:i ', '}{1,10000}:m1Pop\"\"\"\n\n  // Availability is calculated as ratio of array values sum to array length.\n  // For example, for following array: m1Pop=[1, 1, 1, 0, 0] availability would be (3 / 5 * 100%), equating to 60%. \n  // Given that array has only 1 and 0 values in it, to count amount of values we can just summarize all array values instead of conditionally counting every \"1\" value in array.\n  // Division by intervalToMinutes is necessary because for bigger intervals values in each bucket inside timeseries can be [5,5,5,0,3]. Without division by interval, availability would be over 100% due to rollup being \"sum\" in timeseries.\n  | fieldsAdd availability = toDouble(arraySum(m1Pop) / arraySize(m1Pop) * 100) / intervalToMinutes\n], sourceField: id, lookupField: dt.entity.host, fields: { availability }\n\n| fields Name = entityName(id, type: \"dt.entity.host\"), id, `Availability %` = coalesce(availability, 0)\n\n| sort `Availability %` ASC\n| limit toLong($TopLimit)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit hosts by lowest availability",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "red-green-inverted",
                  "comparator": "= *value*",
                  "field": "",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "honeycomb": {
              "colorPalette": "red-green-inverted",
              "labels": {
                "showLabels": true
              },
              "max": {
                "mode": "custom",
                "value": 100
              },
              "min": {
                "mode": "custom",
                "value": 0
              },
              "truncationMode": "middle"
            },
            "unitsOverrides": [
              {
                "added": 1770735433060,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Availability %",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "16": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "This chart is affected by the \"TopLimit\" variable.",
          "query": "// Retrieve the top hosts by average CPU usage, sort them in descending order.\ntimeseries t_cpu=avg(dt.host.cpu.usage),by:{dt.entity.host}\n| sort arrayAvg(t_cpu) desc\n// limit number of results using variable\n| limit toLong($TopLimit)\n// add a readable host name\n| fieldsAdd hostName = entityName(dt.entity.host)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit hosts by highest CPU load",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "t_cpu"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "CPU usage %",
                "max": {
                  "mode": "custom",
                  "value": 100
                }
              },
              "legend": {
                "position": "right"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "hostName"
              ]
            },
            "legend": {
              "ratio": 39
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
          "description": "This chart is affected by the \"TopLimit\" variable.",
          "query": "// Retrieve the top hosts by average memory usage, calculate the average memory for each host, sort them in descending order.\ntimeseries t_mem=avg(dt.host.memory.used), by:{dt.entity.host}\n| fieldsAdd avg_mem=arrayAvg(t_mem)\n| sort avg_mem desc\n// limit number of results using variable\n| limit toLong($TopLimit)\n| fieldsAdd hostName = entityName(dt.entity.host)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit hosts by highest memory consumption",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "t_mem"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Memory used"
              },
              "legend": {
                "position": "right"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "hostName"
              ]
            },
            "legend": {
              "ratio": 40
            },
            "unitsOverrides": [
              {
                "added": 1729690610327,
                "baseUnit": "byte",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "t_mem",
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
          "description": "This chart is affected by the \"TopLimit\" variable.",
          "query": "// Retrieve the top hosts by average disk usage, calculate the average disk usage for each host, sort them in descending order.\ntimeseries t_disk=min(dt.host.disk.free), by:{dt.entity.host}\n| fieldsAdd t_disk = 100 - t_disk[]\n| fieldsAdd avg_disk=arrayAvg(t_disk)\n| sort avg_disk desc\n// limit number of results using variable\n| limit toLong($TopLimit)\n| fields t_disk, timeframe, interval, hostName = entityName(dt.entity.host), dt.entity.host\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit hosts by highest disk usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "t_disk"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Disk usage",
                "min": {
                  "mode": "data-min"
                }
              },
              "legend": {
                "position": "right"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "hostName"
              ]
            },
            "legend": {
              "ratio": 40
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
          "query": "// Count the number of hosts by their state, excluding null states, and sort the results in descending orde\nfetch dt.entity.host\n| fieldsAdd state\n| fieldsRemove entity.name\n| fieldsRemove id\n| filterOut isNull(state)\n| summarize count = count(), by: { state }\n| sort count DESC",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Hosts states",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "state",
                  "count"
                ],
                "categoryAxisLabel": "state,count"
              },
              "categoryOverrides": {
                "MONITORING_DISABLED • 65": {
                  "added": 1702389138386,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                  }
                },
                "OFFLINE • 58": {
                  "added": 9909674.7,
                  "color": "#C4233B"
                },
                "RUNNING • 1739": {
                  "added": 1702388089047,
                  "color": "#2F6863"
                },
                "SHUTDOWN • 42": {
                  "added": 9982800.899999999,
                  "color": "#C4233B"
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "legend": {
                "position": "right"
              },
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
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#2F6863",
                  "field": "DT.name",
                  "type": "string",
                  "value": "RUNNING • 1739"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "MONITORING_DISABLED • 65"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#C4233B",
                  "field": "DT.name",
                  "type": "string",
                  "value": "OFFLINE • 58"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#C4233B",
                  "field": "DT.name",
                  "type": "string",
                  "value": "SHUTDOWN • 42"
                }
              ]
            },
            "legend": {
              "ratio": 51
            },
            "unitsOverrides": []
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Calculated as sum of inbound and outbound traffic for all hosts within a dashboard timeframe.",
          "query": "// Calculate the total network traffic volume (bytes received and transmitted) across all hosts using timeseries data.\ntimeseries {\n  bytes_rx = avg(dt.host.net.nic.bytes_rx), // bytes/s\n  bytes_tx = avg(dt.host.net.nic.bytes_tx)\n}, by: { dt.entity.host }\n// Convert the `interval` field from nanoseconds to seconds for accurate time-based calculation\n| fieldsAdd intervalToSeconds = toLong(interval) / power(10, 9)\n| fieldsAdd trafficVolume = (arraySum(bytes_rx) + arraySum(bytes_tx)) * intervalToSeconds\n| summarize sum(trafficVolume)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total traffic",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "label": "traffic_gb",
              "labelMode": "none",
              "prefixIcon": "HostsIcon",
              "recordField": "sum(trafficVolume)",
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1701249745190,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "sum(trafficVolume)",
                "suffix": "",
                "unitCategory": "data"
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
          "description": "This chart is affected by the \"TopLimit\" variable.",
          "query": "// Retrieve the top hosts by total network traffic, sort them in descending order.\ntimeseries by:{dt.entity.host},{\n  bytes_rx = avg(dt.host.net.nic.bytes_rx),\n  bytes_tx = avg(dt.host.net.nic.bytes_tx)\n}\n\n// sum of bytes received and transmitted\n| fieldsAdd Bps = bytes_rx[]+bytes_tx[]\n\n| sort arraySum(Bps) desc\n\n// limit number of results using variable\n| limit toLong($TopLimit)\n\n| fieldsAdd hostName = entityName(dt.entity.host)\n| fieldsRemove bytes_tx, bytes_rx",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit hosts by highest network traffic",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "Bps"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "NIC bytes received • NIC bytes sent on host"
              },
              "legend": {
                "position": "right"
              },
              "tooltip": {
                "variant": "shared"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "hostName"
              ]
            },
            "legend": {
              "ratio": 40
            },
            "unitsOverrides": [
              {
                "added": 1770739206749,
                "baseUnit": "Bps",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Bps",
                "suffix": "",
                "unitCategory": "datarate"
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
          "query": "// Count hosts by cloud provider, replacing \"EC2\" with \"AWS\", and sort the results in descending order\nfetch dt.entity.host\n| fields cloudType, id\n| filterOut isNull(cloudType)\n| fieldsAdd cloudType = replaceString(cloudType, \"EC2\",\"AWS\")\n| summarize count = count(), by: { cloudType }\n| sort count DESC",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Hosts cloud types",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "cloudType",
                  "count"
                ]
              },
              "categoryOverrides": {
                "AWS • 1239": {
                  "added": 1702456719523,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  }
                },
                "AZURE • 306": {
                  "added": 1702456759884,
                  "color": "#b3007d"
                },
                "GOOGLE_CLOUD_PLATFORM • 301": {
                  "added": 1702456789759,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-15-default, #9033a3)"
                  }
                },
                "UNKNOWN": {
                  "added": 1702456873253,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                  }
                },
                "VMWARE": {
                  "added": 1702456855562,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  }
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "legend": {
                "position": "right"
              },
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
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "AWS • 1239"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#b3007d",
                  "field": "DT.name",
                  "type": "string",
                  "value": "AZURE • 306"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-15-default, #9033a3)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "GOOGLE_CLOUD_PLATFORM • 301"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-14-default, #d56b1a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "VMWARE"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "UNKNOWN"
                }
              ]
            },
            "legend": {
              "ratio": 55
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
          "query": "// Calculate the average CPU usage percentage per cloud type.\nfetch dt.entity.host\n\n// exclude hosts without cloud type\n| filterOut isNull(cloudType)\n\n// Grail technical value \"EC2\" stands for \"AWS\"\n| fieldsAdd cloudType = replaceString(cloudType, \"EC2\",\"AWS\")\n\n// attach CPU consumption to hosts\n| lookup [\n  timeseries cpu = avg(dt.host.cpu.usage), by: dt.entity.host\n  | fieldsAdd lastCpu = arrayLast(cpu)\n], sourceField: id, lookupField: dt.entity.host, fields: lastCpu\n\n// summarize CPU usage per cloud type \n| summarize `Average CPU %` = avg(lastCpu), by: {`Cloud Type` = cloudType}\n\n| sort `Average CPU %` DESC\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average CPU for Cloud types",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"Cloud Type\"]": 278.63
              },
              "sortBy": [
                {
                  "columnId": "[\"Average CPU %\"]",
                  "direction": "ascending"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1770385391172,
                "baseUnit": "percent",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Average CPU %",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "// Count hosts grouped by their hypervisor type, excluding those with a null hypervisorType value\nfetch dt.entity.host\n| filterOut isNull(hypervisorType)\n| summarize count = count(), by:{ hypervisorType }",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Hosts Hypervisor type",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "hypervisorType",
                  "count"
                ]
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "truncationMode": "middle"
            },
            "legend": {
              "ratio": 58
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
          "query": "// Calculate the average CPU usage for each hypervisor type, rename fields for better readability, and sort the results in descending order of average CPU usage\nfetch dt.entity.host\n\n// exclude hosts without hypervisor type\n| filterOut isNull(hypervisorType)\n\n// attach CPU consumption metric to hosts\n| lookup [\n  timeseries cpu=avg(dt.host.cpu.usage), by: { dt.entity.host }\n  | fieldsAdd lastCpu = arrayLast(cpu)\n], sourceField: id, lookupField: dt.entity.host, fields: { lastCpu }\n\n// summarize CPU usage per hypervisor type \n| summarize averageCpuPerType = avg(lastCpu), by: { hypervisorType }\n\n| sort averageCpuPerType desc\n| fieldsRename `Hypervisor type` = hypervisorType\n| fieldsRename `Average CPU %` = averageCpuPerType\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average CPU for Hypervisor types",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"Hypervisor Type\"]": 200
              }
            },
            "unitsOverrides": [
              {
                "added": 1770384870860,
                "baseUnit": "percent",
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Average CPU %",
                "suffix": "",
                "unitCategory": "percentage"
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
          "query": "// Retrieve timeseries data for average CPU, memory, and disk usage percentages across hosts.\ntimeseries {\n `CPU usage` = avg(dt.host.cpu.usage),\n `Memory usage` = avg(dt.host.memory.usage),\n `Disk usage` = avg(dt.host.disk.free)\n}, union: true\n| fieldsAdd `Disk usage` = 100 - `Disk usage`[]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average resources usage",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "CPU usage",
                  "Memory usage",
                  "Disk usage"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "CPU usage % • Memory available % • Disk used %",
                "max": {
                  "mode": "custom",
                  "value": 100
                }
              },
              "tooltip": {
                "variant": "shared"
              },
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "Memory usage",
                "Disk usage",
                "CPU usage"
              ]
            }
          }
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Counts hosts with problems that were reported at least within 6 hours of timeframe end date.",
          "query": "// Count hosts with active problems\nfetch dt.davis.events, \n  from: toTimestamp($dt_timeframe_to)-6h-10m, \n  to: toTimestamp($dt_timeframe_to)\n\n// filter in events related to host entity\n| filter contains(toString(affected_entity_ids), \"HOST\") \n      or contains(toString(related_entity_ids), \"HOST\")\n\n| summarize {\n  event.start = takeLast(event.start),\n  event.end = takeLast(event.end),\n  dt.davis.is_duplicate = takeLast(dt.davis.is_duplicate),\n  affected_entities = takeLast(affected_entity_ids),\n  event.status = takeLast(event.status),\n  related_entities = takeLast(related_entity_ids)\n},\nby: { event.id }\n\n// filter out duplicate events, filter in only active events\n| filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n| filter event.status == \"ACTIVE\"\n| filter isNull(event.end) OR event.end \u003e= toTimestamp($dt_timeframe_to)-6h-10m\n| filter event.start \u003c= toTimestamp($dt_timeframe_to)\n\n// expand command will split \u003cevent, entity[]\u003e into \u003cevent, entity\u003e   \n// note: event may be affecting not just host entities, but disk, nic etc.\n| expand affectedEntity = affected_entities\n| expand related_entity = related_entities\n\n// filter out non-host entities\n| filter startsWith(affectedEntity, \"HOST-\") or startsWith(related_entity, \"HOST-\")\n| fieldsAdd host = if(startsWith(affectedEntity, \"HOST-\"), affectedEntity, else: related_entity)\n\n// arraySize of distinct events will count problems per host\n| summarize arraySize(collectDistinct(event.id)), \n  alias: problems, \n  by: { host }\n\n// host without problems are not counted\n| filter problems \u003e 0\n\n// countDistinct will count records by skipping duplicates from field host\n| summarize hosts = countDistinct(host)\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Hosts with problems",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "label": "hosts",
              "labelMode": "none",
              "prefixIcon": "HostsIcon",
              "recordField": "hosts",
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1756111976142,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "hosts",
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
          "query": "// Retrieve the total number of NIC bytes received and sent over time, using summed rollups for accuracy\ntimeseries \n{\n `NIC bytes received`=sum(dt.host.net.nic.bytes_rx),\n `NIC bytes sent`=sum(dt.host.net.nic.bytes_tx)\n}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Hosts network traffic ",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "NIC bytes received",
                  "NIC bytes sent"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "NIC bytes received • NIC bytes sent on host"
              },
              "tooltip": {
                "variant": "shared"
              },
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "unitsOverrides": []
          }
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Retrieve timeseries data for average CPU and memory usage of processes.\ntimeseries {\n  `CPU usage` = avg(dt.process.cpu.usage),\n  `Memory usage` = avg(dt.process.memory.usage)\n}\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Average CPU and memory usage across all processes",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "CPU usage",
                  "Memory usage"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "label": "Process CPU usage • Process memory usage",
                "max": {
                  "mode": "custom",
                  "value": 100
                }
              },
              "legend": {
                "position": "right"
              },
              "tooltip": {
                "variant": "shared"
              },
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            }
          }
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Classify hosts by their monitoring mode (or assign default categories) and count them, sorted in descending order.\nfetch dt.entity.host\n// if monitoring mode specified, leave it as is.\n// if monitoring mode is unknown:\n//   1. set it to \"MONITORING_CANDIDATE\" for monitoring candidates.\n//   2. set it to \"APP_ONLY\" for standalone hosts.\n//   3. set it to \"UNKNOWN\" if neither of above cases are true.\n| fieldsAdd monitoringMode = if(\n  isNotNull(monitoringMode), \n  monitoringMode, \n  else: if(\n    isMonitoringCandidate, \n    \"MONITORING_CANDIDATE\", \n    else: if(\n      standalone, \n      \"APP_ONLY\", \n      else: \"UNKNOWN\"\n  )))\n\n| summarize count = count(), by:{ monitoringMode }\n| sort count DESC",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Hosts monitoring modes",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "count",
                  "monitoringMode"
                ]
              },
              "categoryOverrides": {
                "APP_ONLY • 2": {
                  "added": 1702388151228,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  }
                },
                "DISCOVERY • 1": {
                  "added": 1702388172961,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-04-default, #d85a9f)"
                  }
                },
                "FULL_STACK • 1868": {
                  "added": 1702388137365,
                  "color": "#2F6863"
                },
                "MONITORING_CANDIDATE • 247": {
                  "added": 1702388186359,
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                  }
                }
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "valueType": "relative"
              },
              "legend": {
                "position": "right"
              },
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
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": "#2F6863",
                  "field": "DT.name",
                  "type": "string",
                  "value": "FULL_STACK • 1868"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "APP_ONLY • 2"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-04-default, #d85a9f)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "DISCOVERY • 1"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-categorical-color-05-default, #84859a)"
                  },
                  "field": "DT.name",
                  "type": "string",
                  "value": "MONITORING_CANDIDATE • 247"
                }
              ]
            },
            "legend": {
              "ratio": 69
            }
          }
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Click on a specific id field in the table below and select \"Open with...\" to view host details in the Infrastructure \u0026 Operations app.",
          "query": "// Fetch active hosts affected by disk space, high CPU, or high memory events in the last 6 hours and 10 minutes\nfetch dt.entity.host\n| fields name = entity.name, dt.entity.host = id\n| lookup \n[\n  fetch events, from: toTimestamp($dt_timeframe_to)-6h-10m, to: toTimestamp($dt_timeframe_to), scanLimitGBytes:-1\n  | filter in(dt.system.bucket, { \"default_davis_events\", \"default_davis_custom_events\", \"default_k8s_ops_events\"})\n  | filter event.kind == \"DAVIS_EVENT\"\n  | filter contains(toString(affected_entity_ids),\"HOST\")\n  | filter matchesPhrase(event.name, \"CPU\") or matchesPhrase(event.name, \"Memory\") or matchesPhrase(event.name, \"Disk\") or matchesPhrase(event.group_label, \"Disk\")\n  | fieldsAdd eventType = if(matchesPhrase(event.name, \"Disk\") or matchesPhrase(event.group_label, \"Disk\"), \"Disk\", else: \n      if(matchesPhrase(event.name, \"Cpu\"), \"CPU\", else: \"Memory\"))\n  | sort timestamp\n  // Deduplicate per event.id and keep relevant fields\n  | summarize {\n    event.start = takeLast(event.start),\n    event.end = takeLast(event.end),\n    event.status = takeLast(event.status),\n    dt.davis.is_duplicate = takeLast(dt.davis.is_duplicate),\n    affected_entities = takeLast(affected_entity_ids),\n    related_entities = takeLast(related_entity_ids),\n    eventType = takeLast(eventType)\n  }, by:{event.id}\n  | filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n  | filter event.status == \"ACTIVE\"\n  | filter isNull(event.end) OR event.end \u003e= toTimestamp($dt_timeframe_to)-6h-10m\n  | filter event.start \u003c= toTimestamp($dt_timeframe_to)\n  | expand host = affected_entities\n  | filter startsWith(host,\"HOST-\")\n  // Summarize counts per event type for each host (use named else:)\n  | summarize \n      CPU_events = sum(if(eventType == \"CPU\", 1, else: 0)),\n      Memory_events = sum(if(eventType == \"Memory\", 1, else: 0)),\n      Disk_events = sum(if(eventType == \"Disk\", 1, else: 0))\n    , by:{host}\n], sourceField: dt.entity.host, lookupField:host, fields: {CPU_events, Memory_events, Disk_events}\n| filter (not(isNull(CPU_events)) or not(isNull(Memory_events)) or not(isNull(Disk_events)))\n| lookup \n// The last lookup retrieves the latest average CPU, memory, and disk usage metrics for each host to provide up-to-date resource usage information.\n[\n  timeseries {\n    CPU = avg(dt.host.cpu.usage),\n    Memory = avg(dt.host.memory.usage),\n    Disk = min(dt.host.disk.free)\n  }, by: {dt.entity.host}, union: true\n  | fields dt.entity.host, \n           CPU = arrayLast(CPU), \n           Memory = arrayLast(Memory), \n           Disk = 100 - arrayLast(Disk)\n], sourceField: dt.entity.host, lookupField: dt.entity.host, fields: {CPU, Memory, Disk}\n| fields \n  Name = name,\n  dt.entity.host,\n  CPU,\n  `CPU events` = if(isNull(CPU_events) or CPU_events == 0, \"-\", else: toLong(CPU_events)),\n  Memory,\n  `Memory events` = if(isNull(Memory_events) or Memory_events == 0, \"-\", else: toLong(Memory_events)),\n  Disk,\n  `Disk events` = if(isNull(Disk_events) or Disk_events == 0, \"-\", else: toLong(Disk_events))",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Hosts reaching resource saturation (CPU, memory or disk)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"CPU events\"]": 109,
                "[\"CPU_warning\"]": 134,
                "[\"Disk_warning\"]": 135,
                "[\"Mem_warning\"]": 140,
                "[\"Name\"]": 326,
                "[\"avg_cpu\"]": 109,
                "[\"avg_disk\"]": 105,
                "[\"avg_mem\"]": 112,
                "[\"host.entity.name\"]": 222.00000000000003,
                "[\"host.id\"]": 185
              },
              "hiddenColumns": [
                [
                  "dt.entity.host"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"Disk\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// Aggregate distinct CPU / Memory / Disk events\nfetch events, from: toTimestamp($dt_timeframe_to)-6h-10m, to: toTimestamp($dt_timeframe_to), scanLimitGBytes:-1\n| filter in(dt.system.bucket, { \"default_davis_events\", \"default_davis_custom_events\", \"default_k8s_ops_events\"})\n| filter event.kind == \"DAVIS_EVENT\"\n| filter contains(toString(affected_entity_ids), \"HOST\")\n| filter matchesPhrase(event.name, \"CPU\") or matchesPhrase(event.name, \"Memory\") or matchesPhrase(event.name, \"Disk\") or matchesPhrase(event.group_label, \"Disk\")\n// assign eventType BEFORE dedupe\n| fieldsAdd eventType = if(matchesPhrase(event.name, \"Disk\") or matchesPhrase(event.group_label, \"Disk\"), \"Disk\", else:\n    if(matchesPhrase(event.name, \"Cpu\"), \"CPU\", else: \"Memory\"))\n| sort timestamp\n// deduplicate per event.id and keep eventType (and other fields you need)\n| summarize {\n    event.start = takeLast(event.start),\n    event.end = takeLast(event.end),\n    event.name = takeLast(event.name),\n    event.category = takeLast(event.category),\n    event.status = takeLast(event.status),\n    event.description = takeLast(event.description),\n    eventType = takeLast(eventType),\n    dt.davis.is_duplicate = takeLast(dt.davis.is_duplicate)\n  }, by:{event.id}\n| filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n| filter event.status == \"ACTIVE\"\n| filter isNull(event.end) OR event.end \u003e= toTimestamp($dt_timeframe_to)-6h-10m\n| filter event.start \u003c= toTimestamp($dt_timeframe_to)\n// now aggregate by eventType (each record is one deduped event.id)\n| summarize event_count = count(), by:{eventType}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Events distribution by type",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            },
            "legend": {
              "ratio": 46
            }
          }
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Click on a specific id field in the table below and select \"Open with...\" to view host details in the Infrastructure \u0026 Operations app.",
          "query": "// Identify the top 5 hosts with the highest CPU, memory, and disk usage, and fetch their latest usage metrics.\nfetch dt.entity.host\n| filter id in [\n\n  timeseries { \n    CPU = avg(dt.host.cpu.usage) \n  }, by: { dt.entity.host }\n  | fieldsAdd CPU = arrayLast(CPU)\n  | filterOut isNull(CPU)\n  | sort CPU desc\n  | limit 5\n\n  | append [\n    timeseries { \n      Memory = avg(dt.host.memory.usage) \n    }, by: { dt.entity.host }\n    | fieldsAdd Memory = arrayLast(Memory)\n    | filterOut isNull(Memory)\n    | sort Memory desc\n    | limit 5 \n  ]\n\n  | append [\n    timeseries {\n      Disk = min(dt.host.disk.free)\n    }, by: { dt.entity.host }\n    | fieldsAdd Disk = 100 - arrayLast(Disk)\n    | filterOut isNull(Disk)\n    | sort Disk desc\n    | limit 5 \n  ]\n\n  | fields dt.entity.host\n]\n\n// Enrich the selected top hosts with their latest CPU, memory, and disk usage metrics by performing a lookup on timeseries data\n| lookup [\n  timeseries {\n    CPU = avg(dt.host.cpu.usage),\n    Memory = avg(dt.host.memory.usage),\n    Disk = min(dt.host.disk.free)\n  }, by: { dt.entity.host }, union: true\n  | fields \n      CPU = arrayLast(CPU), \n      Memory = arrayLast(Memory), \n      Disk = 100 - arrayLast(Disk), \n      dt.entity.host\n], \nsourceField: id, \nlookupField: dt.entity.host, \nfields: { CPU, Memory, Disk, dt.entity.host }, \nexecutionOrder: leftFirst\n\n| fields Name = entityName(`dt.entity.host`), \n         CPU, Memory, Disk, dt.entity.host",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "15 hosts with highest utilization (5 highest CPU, 5 highest memory, 5 highest disk usages)",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnWidths": {
                "[\"CPU_warning\"]": 134,
                "[\"Disk\"]": 85,
                "[\"Disk_warning\"]": 135,
                "[\"Mem_warning\"]": 140,
                "[\"Memory\"]": 94,
                "[\"avg_cpu\"]": 109,
                "[\"avg_disk\"]": 105,
                "[\"avg_mem\"]": 112,
                "[\"entity.name\"]": 315,
                "[\"host.entity.name\"]": 222.00000000000003,
                "[\"host.id\"]": 185
              },
              "hiddenColumns": [
                [
                  "dt.entity.host"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"Disk\"]",
                  "direction": "descending"
                }
              ]
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
          "description": "Click on honeycomb to see the name of the host tooltip and click in \"Open with...\" to view host details in the Infrastructure \u0026 Operations app.\nThis chart is affected but the \"TopLimit\" variable.",
          "query": "// Retrieve the top hosts with the most active problems\nfetch dt.davis.events, from: toTimestamp($dt_timeframe_from)-6h-10m, to: toTimestamp($dt_timeframe_to)\n  | filter contains(toString(affected_entity_ids),\"HOST\") or contains(toString(related_entity_ids),\"HOST\")\n  | sort timestamp\n  | summarize {\n    event.start = takeLast(event.start),\n    event.end = takeLast(event.end),\n    dt.davis.is_duplicate = takeLast(dt.davis.is_duplicate),\n    affected_entities = takeLast(affected_entity_ids),\n    event.status = takeLast(event.status),\n    related_entities = takeLast(related_entity_ids)\n  },\n  by:{event.id}\n  | filter isNull(dt.davis.is_duplicate) OR not(dt.davis.is_duplicate)\n  | filter event.status == \"ACTIVE\"\n  | filter isNull(event.end) OR event.end \u003e= toTimestamp($dt_timeframe_to)-6h-10m\n  | filter event.start \u003c= toTimestamp($dt_timeframe_to)\n  | expand affectedEntity = affected_entities\n  | expand related_entity = related_entities\n  // filter for events related with host entities\n  | filter startsWith(affectedEntity,\"HOST-\") or startsWith(related_entity,\"HOST-\")\n  | fieldsAdd host = if(startsWith(affectedEntity, \"HOST-\"), affectedEntity, else: related_entity), id = affectedEntity\n  | summarize arraySize(collectDistinct(event.id)), alias: problems, by:{host}\n  | filter problems \u003e 0 \n\n  // Create a typed entity column from the host id string so entityName() accepts it\n  | fieldsAdd `dt.entity.host` = host\n\n  // sort by problem count\n  | sort problems desc\n  | limit toLong($TopLimit)\n\n  // Now safely call entityName() on the typed entity column\n  | fields Name = entityName(`dt.entity.host`), `dt.entity.host`, Problems = problems",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Top $TopLimit hosts by problems",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "color-palette",
                  "colorPalette": "red",
                  "comparator": "= *value*",
                  "field": "Problems",
                  "type": "string",
                  "value": ""
                }
              ]
            },
            "honeycomb": {
              "colorPalette": "red",
              "dataMappings": {
                "value": "Problems"
              },
              "displayedFields": [
                "Name",
                "HostId"
              ],
              "labels": {
                "showLabels": true
              },
              "legend": {
                "position": "right"
              },
              "truncationMode": "middle"
            }
          }
        },
        "40": {
          "content": "**Data is missing? Please follow the links below to complete your data onboarding:**\n\n* [Ingest data](https://docs.dynatrace.com/docs/ingest-from)\n* [Infrastructure observability](https://docs.dynatrace.com/docs/observe/infrastructure-monitoring/hosts)",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "",
          "query": "// Count monitored hosts, excluding monitoring candidates\nfetch dt.entity.host\n| filterOut isMonitoringCandidate == true\n| summarize count(), alias: hosts",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Total hosts",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "isIconVisible": true,
              "label": "hosts",
              "labelMode": "none",
              "prefixIcon": "HostsIcon",
              "recordField": "hosts",
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1756107722330,
                "baseUnit": "count",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "hosts",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "9": {
          "content": "### Resource hotspots\nIdentify the most resource-intensive hosts to address potential bottlenecks or optimize resource usage.",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": "5",
          "editable": true,
          "input": "data \nrecord(limit = 1),\nrecord(limit = 5),\nrecord(limit = 10),\nrecord(limit = 50),\nrecord(limit = 100)",
          "key": "TopLimit",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.infraops.Infrastructure-Observability"
  # private = false
}
