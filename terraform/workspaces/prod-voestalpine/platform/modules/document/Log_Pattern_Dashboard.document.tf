resource "dynatrace_document" "Log_Pattern_Dashboard" {
  name    = "Log Pattern Dashboard"
  type    = "dashboard"
  content = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 14,
          "w": 24,
          "x": 0,
          "y": 11
        },
        "2": {
          "h": 7,
          "w": 24,
          "x": 0,
          "y": 4
        },
        "3": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 0
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
          "query": "fetch logs, samplingRatio:toLong($Sampling)\n| filter in(dt.system.bucket, $Buckets)\n| filter (isNull(k8s.namespace.name) and in(\"Non-Kubernetes\",array($Namespace)) or in(k8s.namespace.name, array($Namespace))) and in(status, array($Log_Level)) and contains(content, $ContentSearch)\n| filterOut contains(content, \"Failed to export to Stackdriver\")\n| parse content, \"DATA* JSON:json\"\n| fieldsAdd pattern=coalesce(message,msg,json[message],json[msg],content)\n| fieldsAdd pattern=replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(pattern, \"UUIDSTRING\", \"UUID\"), \"(ISO8601|HTTPDATE|JSONTIMESTAMP|TIMESTAMP|TIME)\", \"TIME\"),\"IPADDR\", \"IP\"), \"'-' ALNUM{10} '-' ALNUM{5}\", \"-PODID\"), \"XDIGIT{5,}\", \"*\"), \"DIGIT\", \"*\"), \"' /' NSPACE*\", \" /URLPATH\"), \"'://' [^/ ] '/'? NSPACE*\", \"://URL\"), \"'[!dt' LD ']'\", \"\"), \"[ ]+\", \" \")\n| summarize {Count=count() * toLong($Sampling), example=takeFirst(record(timestamp, content, trace_id, span_id, dt.entity.cloud_application_instance, dt.entity.process_group_instance, dt.entity.process_group, dt.entity.service))}, by: {pattern, status}\n| fieldsAdd severity = if(status==\"ERROR\", 0, else: if(status==\"WARN\", 1, else:if(status==\"NONE\", 2, else: 3)))\n| fields Count, Status=status, Pattern=pattern, Example=example[content], trace_id=example[trace_id], timestamp=example[timestamp], span_id=example[span_id], dt.entity.service=example[dt.entity.service], dt.entity.cloud_application_instance=example[dt.entity.cloud_application_instance],dt.entity.process_group_instance=example[dt.entity.process_group_instance], dt.entity.process_group=arrayFirst(toArray(example[dt.entity.process_group])), severity\n| sort severity asc, Count desc\n| limit 100\n//Add Service on best-effort basis\n| fieldsAdd dt.entity.service=coalesce(dt.entity.service, arrayFirst(toArray(entityAttr(dt.entity.process_group, \"runs\")[dt.entity.service]))),\nprompt=concat(\"Analyze the log \", substring(Example, to:4900), \" and provide some recommendation on how to fix this.\")\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 50,
            "enableSampling": false,
            "maxResultMegaBytes": 20,
            "maxResultRecords": 1000
          },
          "title": "Log Pattern Examples",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "colorThresholdTarget": "background",
              "columnTypeOverrides": [
                {
                  "fields": [
                    "Pattern",
                    "Example"
                  ],
                  "id": 105565.60000000056,
                  "value": "log-content"
                }
              ],
              "columnWidths": {
                "[\"Pattern\"]": 836,
                "[\"example\"]": 1736,
                "[\"pattern\"]": 905
              },
              "hiddenColumns": [
                [
                  "trace_id"
                ],
                [
                  "timestamp"
                ],
                [
                  "span_id"
                ],
                [
                  "dt.entity.service"
                ],
                [
                  "dt.entity.cloud_application_instance"
                ],
                [
                  "dt.entity.process_group_instance"
                ],
                [
                  "dt.entity.process_group"
                ],
                [
                  "severity"
                ],
                [
                  "prompt"
                ]
              ],
              "lineWrapIds": [
                [
                  "Example"
                ],
                [
                  "Pattern"
                ]
              ],
              "linewrapEnabled": true,
              "monospacedFontColumns": [
                [
                  "Pattern"
                ],
                [
                  "Example"
                ]
              ],
              "monospacedFontEnabled": true,
              "sortBy": {
                "columnId": "[\"count()\"]",
                "direction": "descending"
              }
            },
            "thresholds": [
              {
                "field": "Status",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-12-default, #cd3741)"
                    },
                    "comparator": "=",
                    "id": 0,
                    "label": "",
                    "value": "ERROR"
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "=",
                    "id": 1,
                    "label": "",
                    "value": "WARN"
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-01-default, #134fc9)"
                    },
                    "comparator": "=",
                    "id": 2,
                    "label": "",
                    "value": "INFO"
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-categorical-color-04-default, #d85a9f)"
                    },
                    "comparator": "=",
                    "id": 3,
                    "label": "",
                    "value": "NONE"
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
          "query": "fetch logs, samplingRatio:toLong($Sampling)\n| filter in(dt.system.bucket, $Buckets)\n| filter (isNull(k8s.namespace.name) and in(\"Non-Kubernetes\",array($Namespace)) or in(k8s.namespace.name, array($Namespace))) and in(status, array($Log_Level)) and contains(content, $ContentSearch)\n| filterOut contains(content, \"Failed to export to Stackdriver\")\n| parse content, \"DATA* JSON:json\"\n| fieldsAdd pattern=coalesce(message,msg,json[message],json[msg],content)\n| fieldsAdd pattern=replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(replacePattern(pattern, \"UUIDSTRING\", \"UUID\"), \"(ISO8601|HTTPDATE|JSONTIMESTAMP|TIMESTAMP|TIME)\", \"TIME\"),\"IPADDR\", \"IP\"), \"'-' ALNUM{10} '-' ALNUM{5}\", \"-PODID\"), \"XDIGIT{5,}\", \"*\"), \"DIGIT\", \"*\"), \"' /' NSPACE*\", \" /URLPATH\"), \"'://' [^/ ] '/'? NSPACE*\", \"://URL\"), \"'[!dt' LD ']'\", \"\"), \"SPACE+\", \" \")\n| maketimeseries {count=count(default:0)}, by: {pattern,status}, bins:60\n| fieldsAdd count=count[] * toLong($Sampling)\n| sort arraySum(count) desc\n| limit 15",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 50,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Log Patterns over Time",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "chartSettings": {
              "colorPalette": "log-level",
              "fieldMapping": {
                "leftAxisValues": [
                  "count"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "xAxisLabel": "timeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "pattern",
                "status"
              ]
            },
            "thresholds": []
          }
        },
        "3": {
          "content": "# Log Pattern Dashboard\nThis dashboard automatically identifies common patterns of logs by using capabilities of DQL (Dynatrace Query Language) such as pattern, replacePattern and others.\n\nThe variables on the top allow you to filter on \n* **Buckets**: filter logs by storage location (=application), only buckets you are entitled to will return data\n* **Namespaces**: only valid for Kubernetes applications, select those namespaces your are responsible for\n* **Log_Level**: focus on info, Warn or Error\n* **Sampling**: e.g: only analyze every 100th log",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "fetch dt.system.buckets\n| filter dt.system.table==\"logs\"\n| fields name\n| sort name",
          "key": "Buckets",
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
          "input": "data record(entity.name=\"Non-Kubernetes\")\n| append [fetch dt.entity.cloud_application_namespace\n| fields entity.name\n| sort entity.name]",
          "key": "Namespace",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "ERROR",
            "WARN",
            "INFO"
          ],
          "editable": true,
          "input": "NONE,INFO,WARN,ERROR",
          "key": "Log_Level",
          "multiple": true,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "100",
          "editable": true,
          "input": "10000,1000,100,10,1",
          "key": "Sampling",
          "multiple": false,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "key": "ContentSearch",
          "type": "text",
          "version": 2,
          "visible": true
        }
      ],
      "version": 19
    })
  private = true
}
