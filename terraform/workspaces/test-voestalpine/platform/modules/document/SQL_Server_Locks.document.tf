resource "dynatrace_document" "SQL_Server_Locks" {
  name      = "SQL Server Locks"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 6,
          "w": 8,
          "x": 0,
          "y": 24
        },
        "10": {
          "h": 2,
          "w": 11,
          "x": 0,
          "y": 8
        },
        "11": {
          "h": 5,
          "w": 11,
          "x": 10,
          "y": 3
        },
        "12": {
          "h": 2,
          "w": 11,
          "x": 10,
          "y": 1
        },
        "13": {
          "h": 1,
          "w": 18,
          "x": 0,
          "y": 14
        },
        "14": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 31
        },
        "15": {
          "h": 1,
          "w": 8,
          "x": 0,
          "y": 23
        },
        "16": {
          "h": 1,
          "w": 16,
          "x": 8,
          "y": 23
        },
        "17": {
          "h": 1,
          "w": 16,
          "x": 0,
          "y": 30
        },
        "18": {
          "h": 1,
          "w": 16,
          "x": 0,
          "y": 35
        },
        "19": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 36
        },
        "2": {
          "h": 1,
          "w": 18,
          "x": 0,
          "y": 0
        },
        "20": {
          "h": 1,
          "w": 16,
          "x": 0,
          "y": 40
        },
        "21": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 41
        },
        "22": {
          "h": 6,
          "w": 16,
          "x": 8,
          "y": 24
        },
        "3": {
          "h": 5,
          "w": 10,
          "x": 0,
          "y": 3
        },
        "4": {
          "h": 2,
          "w": 10,
          "x": 0,
          "y": 1
        },
        "5": {
          "h": 4,
          "w": 21,
          "x": 0,
          "y": 10
        },
        "7": {
          "h": 2,
          "w": 19,
          "x": 0,
          "y": 21
        },
        "8": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 15
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
          "query": "fetch logs\n| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"\nand event.group == \"all_requests\"\nand device.name == $Server and database.name == $Database\n| sort  timestamp desc\n| fieldsAdd toTimestamp(timestamp), alias:at_timestamp\n| fields at_timestamp, session.id\n| summarize count(), alias: connections, by: {at_timestamp}\n| sort at_timestamp desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-30m",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "connections",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "connections"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "fieldMapping": {
                "leftAxisValues": [
                  "connections"
                ],
                "timestamp": "at_timestamp"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "connections"
              ],
              "leftYAxisSettings": {},
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "at_timestamp",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "connections"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "connections"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "connections",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "timestamp",
              "prefixIcon": "",
              "recordField": "timestamp",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"timestamp\"]": 160.9375
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1741365950798,
                "baseUnit": "none",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "connections",
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
        "10": {
          "content": "--- \n \n### Query Duration",
          "type": "markdown"
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "timeseries time=avg(`sql-server.locks.byWaitType`), by:{wait_type}, filter:contains(device.name,$Server)\n| fields wait_type, arrayAvg(time), alias:total_wait_time_in_seconds",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "wait_type"
                ],
                "categoryAxisLabel": "wait_type",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "total_wait_time_in_seconds"
                ],
                "valueAxisLabel": "total_wait_time_in_seconds"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "total_wait_time_in_seconds"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "total_wait_time_in_seconds"
                }
              ],
              "displayedFields": [
                "wait_type"
              ],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "blue",
              "dataMappings": {
                "value": "total_wait_time_in_seconds"
              },
              "displayedFields": [
                "wait_type"
              ],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "total_wait_time_in_seconds",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "total_wait_time_in_seconds",
              "prefixIcon": "",
              "recordField": "total_wait_time_in_seconds",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "12": {
          "content": "--- \n \n### Wait Time by Wait Type",
          "type": "markdown"
        },
        "13": {
          "content": "### Most Recent pull of all requests",
          "type": "markdown"
        },
        "14": {
          "input": "import { queryExecutionClient } from \"@dynatrace-sdk/client-query\";\n\nexport default async function () {\n  \n  const timestamp = $timestamp\n  const server = $Server\n  const database = $Database\n  const query = 'fetch logs'+\n    '| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"'+\n    'and event.group == \"all_requests\"'+\n    'and timestamp == toTimestamp(\"'+ timestamp +'\")'+\n    'and device.name == \"' + server +'\"'+\n    'and database.name == \"' + database + '\"'+\n    '| sort  timestamp desc'+\n    '| fields timestamp'+\n    '| limit 1'+\n    '| join [fetch logs'+\n    '| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"'+\n    'and event.group == \"all_requests\"],'+ \n    'on: {timestamp}'+\n    '| fields timestamp,{right.session.id, alias:session_id}, '+\n    '{right.content, alias: Query_Statement}, {right.total.elapsed.time, alias: Elapsed_Duration},'+\n    '{right.blocking.session.id, alias:blocking_session_id}, {right.total.wait.time, alias: wait_time},'+\n    '{right.wait.type, alias: wait_type}, {right.database.name, alias: Database},' +\n    '{right.login.name, alias: user}';\n  \n  \n  const data = await queryExecutionClient.queryExecute({\n      body: {\n        query,\n         requestTimeoutMilliseconds: 30000,\n      },\n    });\n\n  let results = data.result.records\n  \n  const roots = [];\n\n  results.forEach(obj =\u003e {\n    if (obj.blocking_session_id === null) {\n      roots.push(obj);\n    }\n  });\n  \n  const sortedData = [];\n\n  function buildChain(root) {\n    sortedData.push(root);\n    let queue = [root.session_id];\n    \n    while (queue.length \u003e 0) {\n      let currentSession = queue.shift();\n      results.forEach(obj =\u003e {\n        if (obj.blocking_session_id === currentSession) {\n          sortedData.push(obj);\n          queue.push(obj.session_id);\n        }\n      });\n    }\n  }\n  \n  roots.forEach(root =\u003e buildChain(root));\n  \n  return sortedData;\n}",
          "title": "",
          "type": "code",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "timestamp,session_id,Query_Statement,Elapsed_Duration,wait_time,Database,user,wait_type,blocking_session_id",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": ""
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "progress"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "displayedFields": [
                "timestamp",
                "session_id",
                "Query_Statement",
                "Elapsed_Duration",
                "Database",
                "user"
              ],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "timestamp"
              },
              "displayedFields": [
                "timestamp",
                "session_id",
                "Query_Statement",
                "Elapsed_Duration",
                "wait_time",
                "Database",
                "user"
              ],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "progress",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "element",
              "prefixIcon": "",
              "recordField": "element",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"session_id\"]": 131.3625030517578
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "15": {
          "content": "### Connections at each timestamp",
          "type": "markdown"
        },
        "16": {
          "content": "### All Requests at Selected Time",
          "type": "markdown"
        },
        "17": {
          "content": "### All Requests ordered by Blocking Chain",
          "type": "markdown"
        },
        "18": {
          "content": "### Blocking Sessions Only",
          "type": "markdown"
        },
        "19": {
          "input": "import { queryExecutionClient } from \"@dynatrace-sdk/client-query\";\n\nexport default async function () {\n  \n  const timestamp = $timestamp\n  const server = $Server\n  const database = $Database\n  const query = 'fetch logs'+\n    '|filter dt.extension.name == \"com.dynatrace.extension.sql-server\"'+\n    'and event.group == \"all_requests\"'+\n    'and timestamp == toTimestamp(\"'+ timestamp +'\") '+\n    'and device.name == \"' + server +'\" '+\n    'and database.name == \"' + database + '\"'+\n    '| fields timestamp,{session.id, alias:session_id}, content, total.elapsed.time,'+ \n    'total.wait.time,{blocking.session.id, alias: blocking_session_id}, '+\n    'wait.type, database.name, login.name'\n  \n  const data = await queryExecutionClient.queryExecute({\n      body: {\n        query,\n         requestTimeoutMilliseconds: 30000,\n      },\n    });\n\n  let results = data.result.records\n  \n  const blockers = [];\n\n  for (let x = 0; x \u003c results.length; x++){\n    for(let y = 0; y\u003cresults.length; y++) {\n      if(results[x].session_id === results[y].blocking_session_id){\n        blockers.push(results[x]);\n        break;\n      }\n    }\n  }\n  return blockers;\n  \n}",
          "title": "",
          "type": "code",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "timestamp",
                  "session_id",
                  "content",
                  "total.elapsed.time",
                  "total.wait.time",
                  "wait.type",
                  "database.name",
                  "login.name",
                  "blocking_session_id"
                ],
                "categoryAxisLabel": "timestamp,session_id,content,total.elapsed.time,total.wait.time,wait.type,database.name,login.name,blocking_session_id",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [],
                "valueAxisLabel": ""
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "progress"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "displayedFields": [
                "timestamp",
                "session_id",
                "content",
                "total.elapsed.time",
                "database.name",
                "login.name",
                "wait.type",
                "blocking_session_id"
              ],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "timestamp"
              },
              "displayedFields": [
                "timestamp",
                "session_id",
                "content",
                "total.elapsed.time",
                "wait.type",
                "database.name",
                "login.name",
                "blocking_session_id"
              ],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "progress",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "element",
              "prefixIcon": "",
              "recordField": "element",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "content"
                  ],
                  "id": 1741374994790,
                  "value": "log-content"
                }
              ],
              "columnWidths": {
                "[\"session_id\"]": 131.3625030517578
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "2": {
          "content": "# MS SQL Waits Locks",
          "type": "markdown"
        },
        "20": {
          "content": "### Blocked Sessions Only",
          "type": "markdown"
        },
        "21": {
          "input": "import { queryExecutionClient } from \"@dynatrace-sdk/client-query\";\n\nexport default async function () {\n  \n  const timestamp = $timestamp\n  const server = $Server\n  const database = $Database\n  const query = \n    'fetch logs'+\n    '|filter dt.extension.name == \"com.dynatrace.extension.sql-server\"'+\n    'and event.group == \"all_requests\"'+\n    'and timestamp == toTimestamp(\"'+ timestamp +'\") '+\n    'and device.name == \"' + server +'\" '+\n    'and database.name == \"' + database + '\"'+\n    'and isNotNull(blocking.session.id)'+\n    '| fields timestamp,session.id, content, total.elapsed.time, total.wait.time,'+ \n    'blocking.session.id, wait.type, database.name, login.name'\n  \n  const data = await queryExecutionClient.queryExecute({\n      body: {\n        query,\n         requestTimeoutMilliseconds: 30000,\n      },\n    });\n\n  let results = data.result.records\n  return results\n  \n}",
          "title": "",
          "type": "code",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "timestamp",
                  "session.id",
                  "content",
                  "total.elapsed.time",
                  "total.wait.time",
                  "blocking.session.id",
                  "wait.type",
                  "database.name",
                  "login.name"
                ],
                "categoryAxisLabel": "timestamp,session.id,content,total.elapsed.time,total.wait.time,blocking.session.id,wait.type,database.name,login.name",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [],
                "valueAxisLabel": ""
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "progress"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "displayedFields": [
                "timestamp",
                "session.id",
                "content",
                "total.elapsed.time",
                "database.name",
                "login.name",
                "wait.type",
                "blocking.session.id"
              ],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "timestamp"
              },
              "displayedFields": [
                "timestamp",
                "session.id",
                "content",
                "total.elapsed.time",
                "blocking.session.id",
                "wait.type",
                "database.name",
                "login.name"
              ],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "progress",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "element",
              "prefixIcon": "",
              "recordField": "element",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "content"
                  ],
                  "id": 1741374508649,
                  "value": "log-content"
                }
              ],
              "columnWidths": {
                "[\"session_id\"]": 131.3625030517578
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "22": {
          "input": "import { queryExecutionClient } from \"@dynatrace-sdk/client-query\";\n\nexport default async function () {\n  \n  const timestamp = $timestamp\n  const server = $Server\n  const database = $Database\n  const query = 'fetch logs'+\n    '| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"'+\n    'and event.group == \"all_requests\" '+\n    'and timestamp == toTimestamp(\"'+ timestamp +'\")'+ \n    'and device.name == \"' + server +'\"'+\n    'and database.name == \"' + database + '\"'+\n    '| sort  timestamp desc'+\n    '| fields timestamp'+\n    '| limit 1'+\n    '| join ['+\n     'fetch logs'+\n    '| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"'+\n    'and event.group == \"all_requests\"], on: {timestamp}'+\n    '| fields timestamp,{right.session.id, alias:session_id}, {right.content, alias: Query_Statement}, {right.total.elapsed.time, alias: Elapsed_Duration},{right.blocking.session.id, alias:blocking_session_id}, {right.total.wait.time, alias: wait_time}, {right.wait.type, alias: wait_type}, {right.database.name, alias: Database}, {right.login.name, alias: user}';\n  \n  \n  const data = await queryExecutionClient.queryExecute({\n      body: {\n        query,\n         requestTimeoutMilliseconds: 30000,\n      },\n    });\n\n  let results = data.result.records\n  return results\n  \n  return sortedData;\n}",
          "title": "",
          "type": "code",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "timestamp,session_id,Query_Statement,Elapsed_Duration,wait_time,Database,user,wait_type,blocking_session_id",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": ""
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "progress"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "displayedFields": [
                "timestamp",
                "session_id",
                "Query_Statement",
                "Elapsed_Duration",
                "Database",
                "user"
              ],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "timestamp"
              },
              "displayedFields": [
                "timestamp",
                "session_id",
                "Query_Statement",
                "Elapsed_Duration",
                "wait_time",
                "Database",
                "user"
              ],
              "legend": {
                "hidden": false,
                "position": "auto",
                "ratio": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "progress",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "element",
              "prefixIcon": "",
              "recordField": "element",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {
                "[\"session_id\"]": 131.3625030517578
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch logs\n| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"\nand event.group == \"all_requests\"\nand device.name == $Server and database.name == $Database\nand isNotNull(wait.type)\n| makeTimeseries sessions = count(), by: {wait.type}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-30m",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "barChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "wait.type"
                ],
                "categoryAxisLabel": "wait.type",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxis": [
                  "interval"
                ],
                "valueAxisLabel": "interval"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "fieldMapping": {
                "leftAxisValues": [
                  "sessions"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "gap",
              "hiddenLegendFields": [
                "interval"
              ],
              "leftYAxisSettings": {},
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "interval"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "interval"
                }
              ],
              "displayedFields": [
                "wait.type"
              ],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "wait.type"
              },
              "displayedFields": [
                "wait.type"
              ],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "interval",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "wait.type",
              "prefixIcon": "",
              "recordField": "wait.type",
              "showLabel": true,
              "sparklineSettings": {
                "record": "sessions"
              },
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "sessions"
                  ],
                  "id": 1741191138235,
                  "value": "sparkline"
                }
              ],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "4": {
          "content": "--- \n \n### Active Connections by Wait Group",
          "type": "markdown"
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch logs\n| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"\nand event.group == \"all_requests\"\nand device.name == $Server and database.name == $Database\n| summarize ((sum(toDouble(total.elapsed.time)/1000)/60)/60), alias:total_duration_in_hours, by:{timestamp}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-30m",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "Query Duration",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "total_duration_in_hours",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": "total_duration_in_hours"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "fieldMapping": {
                "leftAxisValues": [
                  "total_duration_in_hours"
                ],
                "timestamp": "timestamp"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "total_duration_in_hours"
              ],
              "leftYAxisSettings": {
                "isLabelVisible": true,
                "label": "Total Duration in Hours"
              },
              "legend": {
                "hidden": true
              },
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timestamp",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "value": "total_duration_in_hours"
            },
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [
                {
                  "rangeAxis": "",
                  "valueAxis": "total_duration_in_hours"
                }
              ],
              "displayedFields": [],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {},
              "displayedFields": [],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "label": "total_duration_in_hours",
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "error",
              "prefixIcon": "",
              "recordField": "error",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [],
              "columnWidths": {},
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed"
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        },
        "7": {
          "content": "--- \n ### Snapshot Drilldown section\n---",
          "type": "markdown"
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "fetch logs\n| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"\nand event.group == \"all_requests\"\n| sort  timestamp desc\n| fields timestamp\n| limit 1\n| join [\nfetch logs\n| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"\nand event.group == \"all_requests\"], on: {timestamp}\n| fields timestamp,{right.session.id, alias:session_id}, {right.content, alias: Query_Statement}, {right.total.elapsed.time, alias: Elapsed_Duration},{right.blocking.session.id, alias:blocking_session_id}, {right.total.wait.time, alias: wait_time}, {right.wait.type, alias: wait_type}, {right.database.name, alias: Database}, {right.login.name, alias: user}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "timeframe": {
            "tileTimeframe": {
              "from": "now()-30m",
              "to": "now()"
            },
            "tileTimeframeEnabled": false
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxisLabel": "session_id,Query_Statement,Elapsed_Duration,wait_time,Database,user,wait_type,blocking_session_id",
                "categoryAxisTickLayout": "horizontal",
                "colorPaletteMode": "multi-color",
                "groupMode": "stacked",
                "layout": "horizontal",
                "scale": "absolute",
                "tooltipVariant": "single",
                "valueAxisLabel": ""
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative",
                "groupingThresholdValue": 0,
                "valueType": "relative"
              },
              "colorPalette": "categorical",
              "curve": "linear",
              "gapPolicy": "gap",
              "hiddenLegendFields": [],
              "leftYAxisSettings": {},
              "pointsDisplay": "auto",
              "truncationMode": "middle",
              "valueRepresentation": "absolute",
              "xAxisIsLabelVisible": false,
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {},
            "histogram": {
              "colorPalette": "categorical",
              "dataMappings": [],
              "displayedFields": [
                "session_id",
                "Query_Statement",
                "Elapsed_Duration",
                "Database",
                "user"
              ],
              "legend": "auto",
              "truncationMode": "middle",
              "variant": "single",
              "yAxis": {
                "label": "Frequency",
                "scale": "linear"
              }
            },
            "honeycomb": {
              "colorMode": "color-palette",
              "colorPalette": "categorical",
              "dataMappings": {
                "value": "session_id"
              },
              "displayedFields": [
                "session_id",
                "Query_Statement",
                "Elapsed_Duration",
                "wait_time",
                "Database",
                "user"
              ],
              "legend": {
                "hidden": false,
                "position": "auto"
              },
              "shape": "hexagon",
              "truncationMode": "middle"
            },
            "icon": {
              "icon": "",
              "showIcon": false
            },
            "label": {
              "showLabel": false
            },
            "singleValue": {
              "alignment": "center",
              "autoscale": true,
              "colorThresholdTarget": "value",
              "label": "wait.type",
              "prefixIcon": "",
              "recordField": "wait.type",
              "showLabel": true,
              "sparklineSettings": {},
              "trend": {
                "isVisible": true,
                "trendType": "auto"
              }
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "fields": [
                    "content"
                  ],
                  "id": 1733859306216,
                  "value": "log-content"
                }
              ],
              "columnWidths": {
                "[\"Elapsed_Duration\"]": 166.5,
                "[\"Query_Statement\"]": 802,
                "[\"blocking_session_id\"]": 170.828125,
                "[\"content\"]": 716,
                "[\"right.content\"]": 462,
                "[\"wait.type\"]": 256.921875
              },
              "enableSparklines": false,
              "hiddenColumns": [],
              "lineWrapIds": [],
              "linewrapEnabled": false,
              "monospacedFontColumns": [],
              "monospacedFontEnabled": false,
              "rowDensity": "condensed",
              "sortBy": {
                "columnId": "[\"timestamp\"]",
                "direction": "descending"
              }
            },
            "thresholds": [],
            "valueBoundaries": {
              "max": "auto",
              "min": "auto"
            }
          }
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "fetch logs\n| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"\nand event.group == \"all_requests\"\n| sort  device.name\n| fields device.name, session.id\n| summarize count(), alias: connections, by: {device.name}\n| sort device.name\n| fields device.name",
          "key": "Server",
          "multiple": false,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch logs\n| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"\nand event.group == \"all_requests\" and device.name == $Server\n| sort  timestamp desc\n| fields database.name\n| summarize count(), alias: connections, by: {database.name}\n| sort database.name\n| fields database.name\n",
          "key": "Database",
          "multiple": false,
          "type": "query",
          "version": 1,
          "visible": true
        },
        {
          "editable": true,
          "input": "import { queryExecutionClient } from \"@dynatrace-sdk/client-query\";\n\nexport default async function () {\n  \n  const server = $Server;\n  const database = $Database;\n  \n  const query = 'fetch logs '+\n    '| filter dt.extension.name == \"com.dynatrace.extension.sql-server\"'+\n    'and event.group == \"all_requests\"'+\n    '| sort  timestamp desc'+\n    '| fields timestamp, session.id'+\n    '| summarize count(), alias: connections, by: {timestamp}'+\n    '| sort timestamp desc'+\n    '| fields timestamp'  \n\n\n  \n  const data = await queryExecutionClient.queryExecute({\n      body: {\n        query,\n         requestTimeoutMilliseconds: 30000,\n      },\n    });\n  \n  let results = data.result.records;\n  // Convert the UTC timestamps to local time\n  let stringList = data.result.records.map(record =\u003e new Date(record.timestamp));\n  \n  return stringList\n}",
          "key": "timestamp",
          "multiple": false,
          "type": "code",
          "version": 1,
          "visible": true
        }
      ],
      "version": 18
    })
  custom_id = "com-dynatrace-extension-sql-server-waits-locks"
  # private = false
}
