resource "dynatrace_document" "MR_Vulnerabilities_by_Host_mode_link" {
  name    = "MR Vulnerabilities by Host + mode + link"
  type    = "dashboard"
  content = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 17
        },
        "10": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "11": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "12": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "27": {
          "h": 9,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "29": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 8
        },
        "39": {
          "h": 4,
          "w": 10,
          "x": 7,
          "y": 31
        },
        "4": {
          "h": 4,
          "w": 5,
          "x": 0,
          "y": 3
        },
        "43": {
          "h": 5,
          "w": 8,
          "x": 11,
          "y": 3
        },
        "46": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 17
        },
        "47": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 13
        },
        "49": {
          "h": 4,
          "w": 7,
          "x": 0,
          "y": 31
        },
        "5": {
          "h": 2,
          "w": 2,
          "x": 5,
          "y": 3
        },
        "50": {
          "h": 6,
          "w": 24,
          "x": 0,
          "y": 36
        },
        "51": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 35
        },
        "6": {
          "h": 2,
          "w": 2,
          "x": 7,
          "y": 3
        },
        "7": {
          "h": 2,
          "w": 2,
          "x": 5,
          "y": 5
        },
        "8": {
          "h": 2,
          "w": 2,
          "x": 7,
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
          "query": "fetch events\n| filter event.kind==\"SECURITY_EVENT\"\n| filter event.category==\"VULNERABILITY_MANAGEMENT\"\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n| sort timestamp desc\n// | expand `Host Name`=related_entities.hosts.names\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| fieldsAdd host.tags=entityAttr(dt.entity.host,\"tags\")\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n// | filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize by:{vulnerability.display_id, dt.entity.host}, {risk_level=takefirst(vulnerability.davis_assessment.level)}\n| summarize by:{dt.entity.host}, { Total=count(), Critical=countIf(risk_level == \"CRITICAL\" ), High=countIf(risk_level == \"HIGH\" ), Medium=countIf(risk_level == \"MEDIUM\" ), Low=countIf(risk_level == \"LOW\" )}\n| fieldsAdd `Host Name`=entityName(dt.entity.host)\n| fields `Host Name`, Total, Critical, High, Medium, Low\n// | filter in(\"All\",$Host) OR in(`Host Name`,$Host)\n| sort Critical desc, High desc, Medium desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnOrder": [
                "[\"Host Name\"]",
                "[\"Total\"]",
                "[\"Critical\"]",
                "[\"High\"]",
                "[\"Medium\"]",
                "[\"Low\"]"
              ],
              "columnWidths": {
                "[\"Critical\"]": 62.77,
                "[\"High\"]": 48.32,
                "[\"Host ID\"]": 467.25,
                "[\"Host Name\"]": 373.87,
                "[\"Medium\"]": 66.47
              },
              "lineWrapIds": [
                [
                  "Host Name"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"Host Name\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": []
          }
        },
        "10": {
          "content": "# Filter by TAG = $tag_filter\n# If ON - Security Overview for $tagkey:$tagvalue \n___\nShowing vulnerabilities for hosts matching the tag $tagkey:$tagvalue when filter by TAG is ON. Otherwise Tag Ignored",
          "type": "markdown"
        },
        "11": {
          "content": "### Overview by Host and Entity\n___",
          "type": "markdown"
        },
        "12": {
          "content": "### Vulnerability Details by host and process\n___",
          "type": "markdown"
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch security.events\n| filter event.kind==\"SECURITY_EVENT\"\n| filter event.category==\"VULNERABILITY_MANAGEMENT\"\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n| expand pid=affected_entity.affected_processes.ids\n| lookup [\n  fetch dt.entity.process_group_instance\n  | fields process_id=id, process_name=entity.name, host_id=belongs_to[dt.entity.host]\n  | lookup [ fetch dt.entity.host | fieldsAdd tags], sourceField:host_id, lookupField:id, fields:{host_name=entity.name,host.tags=tags}\n  ], sourceField: pid, lookupField:process_id, fields:{process_id,process_name, host_id, host_name,host.tags}\n//| fieldsRename host_id=dt.entity.host\n// | fieldsAdd hostname=entityName(dt.entity.host), host.tags=entityAttr(dt.entity.host,\"tags\")\n| filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| fields vulnerability.display_id, \n  `CVE`=vulnerability.references.cve, \n  `Davis Score`=vulnerability.davis_assessment.score, \n  `CVSS Score`=vulnerability.cvss.base_score, \n  `Stack`=vulnerability.stack,\n  `Title`=vulnerability.title,\n  `Fix available`= if(isNotNull(vulnerability.is_fix_available),if(vulnerability.is_fix_available,\"yes\",else:\"no\"),else:\"unknown\"),\n  `Remediation`= if(isNotNull(vulnerability.remediation.description),vulnerability.remediation.description,else:\"\"),\n  `Host Name`=host_name, \n  `Process`=process_name, \n  `Exposure`=vulnerability.davis_assessment.exposure_status, \n  `Exploit`=vulnerability.davis_assessment.exploit_status, \n  `Vulnerable Function`=vulnerability.davis_assessment.vulnerable_function_status, \n  `Vulnerabiliy Details`=concat($Environment_url, \"ui/apps/dynatrace.security.vulnerabilities/vulnerabilities/\", vulnerability.id, \"?from=now-24h\u0026to=now\"),\n  `Data Assets`=vulnerability.davis_assessment.data_assets_status, host.tags\n// | fields ID, CVE, Severity, `Davis Score`, `CVSS Score`, Title, Event_Description, host_name, process_name, Vulnerable_Library, `Public Exposure`, `Reachable Data`, `Vulnerable Function`, URL\n| sort if($riskassessment == \"Davis\",`Davis Score`, else:`CVSS Score`)  desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 10000
          },
          "title": "Vulnerabilities by Host and Process",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnOrder": [
                "[\"vulnerability.display_id\"]",
                "[\"CVE\"]",
                "[\"Davis Score\"]",
                "[\"CVSS Score\"]",
                "[\"Stack\"]",
                "[\"Title\"]",
                "[\"Fix available\"]",
                "[\"Remediation\"]",
                "[\"Host Name\"]",
                "[\"Process\"]",
                "[\"Exposure\"]",
                "[\"Exploit\"]",
                "[\"Vulnerable Function\"]",
                "[\"Vulnerabiliy Details\"]",
                "[\"Data Assets\"]",
                "[\"host.tags\"]"
              ],
              "columnWidths": {
                "[\"CVE\"]": 133,
                "[\"Event_Description\"]": 528.5250091552734,
                "[\"ID\"]": 75,
                "[\"Level\"]": 94,
                "[\"Public Exposure\"]": 162,
                "[\"Reachable Data\"]": 160,
                "[\"Score\"]": 96,
                "[\"Title\"]": 309,
                "[\"URL\"]": 546,
                "[\"Vulnerabiliy Details\"]": 559.7,
                "[\"Vulnerable Function\"]": 160,
                "[\"host_name\"]": 249,
                "[\"process_name\"]": 414
              },
              "lineWrapIds": [
                [
                  "Process Name"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"Stack\"]",
                  "direction": "ascending"
                }
              ]
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
                    "label": ""
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
        "29": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch security.events, from:now()-7d\n// fetch vulnerabilities by entity\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n// filter by host tag\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| fieldsAdd hostname=entityName(dt.entity.host), host.tags=entityAttr(dt.entity.host,\"tags\")\n| filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| makeTimeseries { vulnerabilities=countDistinctExact(vulnerability.id,default: 0)}, interval:1h",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Open Vulnerabilites over time",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "colorPalette": "log-level",
              "gapPolicy": "connect",
              "truncationMode": "middle",
              "xAxisScaling": "analyzedTimeframe"
            },
            "thresholds": []
          }
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch events\n| filter event.kind==\"SECURITY_EVENT\"\n| filter event.category==\"VULNERABILITY_MANAGEMENT\"\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n| sort timestamp desc\n// | expand `Host Name`=related_entities.hosts.names\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| fieldsAdd host.tags=entityAttr(dt.entity.host,\"tags\")\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n// | filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize by:{vulnerability.display_id, affected_entity.name}, {risk_level=takefirst(vulnerability.davis_assessment.level)}\n| summarize by:{affected_entity.name}, { Total=count(), Critical=countIf(risk_level == \"CRITICAL\" ), High=countIf(risk_level == \"HIGH\" ), Medium=countIf(risk_level == \"MEDIUM\" ), Low=countIf(risk_level == \"LOW\" )}\n| fields `Affected Entities`=affected_entity.name, Total, Critical, High, Medium, Low\n// | filter in(\"All\",$Host) OR in(`Host Name`,$Host)\n| sort Critical desc, High desc, Medium desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnOrder": [
                "[\"Affected Entities\"]",
                "[\"Total\"]",
                "[\"Critical\"]",
                "[\"High\"]",
                "[\"Medium\"]",
                "[\"Low\"]"
              ],
              "columnWidths": {
                "[\"Affected Entities\"]": 481,
                "[\"Affected Entity\"]": 647,
                "[\"Critical\"]": 69.77,
                "[\"High\"]": 57.32,
                "[\"Host ID\"]": 467.25,
                "[\"Host Name\"]": 511.87,
                "[\"Medium\"]": 63.47,
                "[\"Total\"]": 54
              },
              "lineWrapIds": [
                [
                  "Host Name"
                ]
              ],
              "sortBy": [
                {
                  "columnId": "[\"Host Name\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": []
          }
        },
        "4": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch events\n// fetch vulnerabilities by entity\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n// filter by host tag\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| fieldsAdd hostname=entityName(dt.entity.host), host.tags=entityAttr(dt.entity.host,\"tags\")\n| filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize\n`Vulnerabilities`=countDistinct(vulnerability.display_id)\n| fields `Total vulnerabilities`= if(isNotNull(Vulnerabilities), Vulnerabilities, else:0)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "label": "Total vulnerabilities",
              "prefixIcon": "BugReportIcon",
              "recordField": "Total vulnerabilities",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": []
          }
        },
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch events\n// fetch vulnerabilities by entity\n| filter dt.system.bucket==\"default_security_events\"\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter vulnerability.davis_assessment.exploit_status == \"AVAILABLE\"\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| fieldsAdd hostname=entityName(dt.entity.host), host.tags=entityAttr(dt.entity.host,\"tags\")\n| filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize\n    publicExposure=countif(vulnerability.davis_assessment.exposure_status == \"PUBLIC_NETWORK\"),\n    dataAssets=countif(vulnerability.davis_assessment.data_assets_status == \"REACHABLE\"),\n    publicExploit=countif(vulnerability.davis_assessment.exploit_status == \"AVAILABLE\"),\n    vulnerableFunction=countif(vulnerability.davis_assessment.vulnerable_function_status == \"IN_USE\")\n| fields properties=array(\n  record(property=\" 🌐 Internet Exposure\", value=publicExposure),\n  record(property=\" 💾 Reachable Data Assets\", value=dataAssets),\n  record(property=\" 💣 Exploit Available\", value=publicExploit),\n  record(property=\" ⚙️ Code in use\", value=vulnerableFunction))\n| expand properties\n| fieldsFlatten properties\n| fields Assessment=properties.property, Count=properties.value\n\n\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"Assessment\"]",
                "[\"Count\"]"
              ],
              "columnWidths": {
                "[\"Assessment\"]": 305
              },
              "rowDensity": "default",
              "sortBy": [
                {
                  "columnId": "[\"Assessment\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": [
              {
                "field": "Exploit available",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c62239)"
                    },
                    "comparator": "=",
                    "id": 2,
                    "label": "",
                    "value": "0"
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "46": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch events\n| filter event.kind==\"SECURITY_EVENT\"\n| filter event.category==\"VULNERABILITY_MANAGEMENT\"\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n| sort timestamp desc\n// | expand `Host Name`=related_entities.hosts.names\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n| fieldsAdd host.tags=entityAttr(dt.entity.host,\"tags\")\n// | filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize by:{vulnerability.display_id, affected_entity.vulnerable_component.name}, {risk_level=takefirst(vulnerability.davis_assessment.level)}\n| summarize by:{package=affected_entity.vulnerable_component.name}, { Total=count(), Critical=countIf(risk_level == \"CRITICAL\" ), High=countIf(risk_level == \"HIGH\" ), Medium=countIf(risk_level == \"MEDIUM\" ), Low=countIf(risk_level == \"LOW\" )}\n| fields `Package`=package, Total, Critical, High, Medium, Low\n// | filter in(\"All\",$Host) OR in(`Host Name`,$Host)\n| sort Critical desc, High desc, Medium desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnWidths": {
                "[\"Package\"]": 326.5
              },
              "sortBy": [
                {
                  "columnId": "[\"Package\"]",
                  "direction": "ascending"
                }
              ]
            },
            "thresholds": []
          }
        },
        "47": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch events\n| filter event.kind==\"SECURITY_EVENT\"\n| filter event.category==\"VULNERABILITY_MANAGEMENT\"\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n| sort timestamp desc\n// | expand `Host Name`=related_entities.hosts.names\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| fieldsAdd host.tags=entityAttr(dt.entity.host,\"tags\")\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n// | filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize by:{vulnerability.display_id, dt.entity.host}, {risk_level=takefirst(vulnerability.davis_assessment.level)}\n| summarize by:{dt.entity.host}, { Total=count(), Critical=countIf(risk_level == \"CRITICAL\" ), High=countIf(risk_level == \"HIGH\" ), Medium=countIf(risk_level == \"MEDIUM\" ), Low=countIf(risk_level == \"LOW\" )}\n| fieldsAdd `Host Name`=entityName(dt.entity.host)\n| fields `Host Name`, Total, Critical, High, Medium, Low\n// | filter in(\"All\",$Host) OR in(`Host Name`,$Host)\n| sort Critical desc, High desc, Medium desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "honeycomb": {
              "colorMode": "custom-colors",
              "customColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                  },
                  "comparator": "≥",
                  "id": 13169047,
                  "value": 0
                },
                {
                  "color": "#FF9999",
                  "comparator": "≥",
                  "id": 13173327,
                  "value": 1
                },
                {
                  "color": "#FF6B6B",
                  "comparator": "≥",
                  "id": 13175276,
                  "value": 5
                },
                {
                  "color": "#DB1F48",
                  "comparator": "≥",
                  "id": 13177363,
                  "value": 10
                },
                {
                  "color": "#B80F0A",
                  "comparator": "≥",
                  "id": 13180521,
                  "value": 30
                },
                {
                  "color": "#800000",
                  "comparator": "≥",
                  "id": 13196052,
                  "value": 100
                }
              ],
              "dataMappings": {
                "value": "Total"
              },
              "displayedFields": [
                "Host Name"
              ],
              "labels": {
                "showLabels": true
              }
            },
            "thresholds": []
          }
        },
        "49": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch events\n| filter event.kind==\"SECURITY_EVENT\"\n| filter event.category==\"VULNERABILITY_MANAGEMENT\"\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n| sort timestamp desc\n// | expand `Host Name`=related_entities.hosts.names\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| fieldsAdd host.tags=entityAttr(dt.entity.host,\"tags\")\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n// | filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize by:{vulnerability.display_id, affected_entity.name}, {risk_level=takefirst(vulnerability.davis_assessment.level)}\n| summarize by:{affected_entity.name}, { Total=count(), Critical=countIf(risk_level == \"CRITICAL\" ), High=countIf(risk_level == \"HIGH\" ), Medium=countIf(risk_level == \"MEDIUM\" ), Low=countIf(risk_level == \"LOW\" )}\n| fields `Affected Entities`=affected_entity.name, Total, Critical, High, Medium, Low\n// | filter in(\"All\",$Host) OR in(`Host Name`,$Host)\n| sort Critical desc, High desc, Medium desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "honeycomb": {
              "colorMode": "custom-colors",
              "customColors": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-categorical-themed-blue-steel-color-05-default, #134fc9)"
                  },
                  "comparator": "≥",
                  "id": 13169047,
                  "value": 0
                },
                {
                  "color": "#FF9999",
                  "comparator": "≥",
                  "id": 13173327,
                  "value": 1
                },
                {
                  "color": "#FF6B6B",
                  "comparator": "≥",
                  "id": 13175276,
                  "value": 5
                },
                {
                  "color": "#DB1F48",
                  "comparator": "≥",
                  "id": 13177363,
                  "value": 10
                },
                {
                  "color": "#B80F0A",
                  "comparator": "≥",
                  "id": 13180521,
                  "value": 30
                },
                {
                  "color": "#800000",
                  "comparator": "≥",
                  "id": 13196052,
                  "value": 100
                }
              ],
              "dataMappings": {
                "value": "Total"
              },
              "displayedFields": [
                "Host Name",
                "Affected Entities"
              ],
              "labels": {
                "showLabels": true
              },
              "shape": "square"
            },
            "thresholds": []
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch events\n// fetch vulnerabilities by entity\n| filter dt.system.bucket==\"default_security_events\"\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter risk_level == \"CRITICAL\"\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| fieldsAdd hostname=entityName(dt.entity.host), host.tags=entityAttr(dt.entity.host,\"tags\")\n| filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize\n`Vulnerabilities`=countDistinct(vulnerability.display_id)\n| fields `Critical`= Vulnerabilities",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Critical",
              "prefixIcon": "SecurityCriticalIcon",
              "recordField": "Critical",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "Critical",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#AB0C17",
                    "comparator": "!=",
                    "id": 0,
                    "label": "",
                    "value": "0"
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch events\n| filter event.kind==\"SECURITY_EVENT\"\n| filter event.category==\"VULNERABILITY_MANAGEMENT\"\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n| sort timestamp desc\n// | expand `Host Name`=related_entities.hosts.names\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n| fieldsAdd host.tags=entityAttr(dt.entity.host,\"tags\")\n// | filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize by:{vulnerability.display_id, affected_entity.vulnerable_component.name}, {risk_level=takefirst(vulnerability.davis_assessment.level), remediation=collectArray(vulnerability.remediation.description)}\n| summarize by:{package=affected_entity.vulnerable_component.name}, { Total=count(), Critical=countIf(risk_level == \"CRITICAL\" ), High=countIf(risk_level == \"HIGH\" ), Medium=countIf(risk_level == \"MEDIUM\" ), Low=countIf(risk_level == \"LOW\" ), remediation=collectArray(remediation)}\n| fields `Package`=package, Total, Critical, High, Medium, Low, Remediation=arrayRemoveNulls(arrayFlatten(remediation))\n// | filter in(\"All\",$Host) OR in(`Host Name`,$Host)\n| sort Critical desc, High desc, Medium desc\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnOrder": [
                "[\"Package\"]",
                "[\"Total\"]",
                "[\"Critical\"]",
                "[\"High\"]",
                "[\"Medium\"]",
                "[\"Low\"]",
                "[\"Remediation\"]"
              ],
              "columnWidths": {
                "[\"Package\"]": 427,
                "[\"arrayRemoveNulls(arrayFlatten(remediation))\"]": 627
              },
              "linewrapEnabled": true
            },
            "thresholds": []
          }
        },
        "51": {
          "content": "### Third party library details\n___",
          "type": "markdown"
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch security.events\n// fetch vulnerabilities by entity\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter risk_level == \"HIGH\"\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| fieldsAdd hostname=entityName(dt.entity.host), host.tags=entityAttr(dt.entity.host,\"tags\")\n| filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize\n`Vulnerabilities`=countDistinct(vulnerability.display_id)\n| fields `High`= Vulnerabilities",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "High",
              "prefixIcon": "SecurityHighIcon",
              "recordField": "High",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "High",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#DC172A",
                    "comparator": "!=",
                    "id": 1,
                    "label": "",
                    "value": "0"
                  }
                ],
                "title": ""
              }
            ]
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch security.events\n// fetch vulnerabilities by entity\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter risk_level == \"MEDIUM\"\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| fieldsAdd hostname=entityName(dt.entity.host), host.tags=entityAttr(dt.entity.host,\"tags\")\n| filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize\n`Vulnerabilities`=countDistinct(vulnerability.display_id)\n| fields `Medium`= Vulnerabilities",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Medium",
              "prefixIcon": "SecurityHighIcon",
              "recordField": "Medium",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "Medium",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#C9A000",
                    "comparator": "!=",
                    "id": 0,
                    "label": "",
                    "value": "0"
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
            }
          },
          "query": "fetch security.events\n// fetch vulnerabilities by entity\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level = if( $riskassessment == \"Davis\", vulnerability.davis_assessment.level ,else: vulnerability.risk.level)\n// filter by severity\n| filter in( risk_level, $Severity) or in( \"All\", $Severity)\n| filter vulnerability.davis_assessment.exposure_status == $PublicExposure or $PublicExposure == \"All\"\n| filter vulnerability.davis_assessment.data_assets_status == $ReachableData or $ReachableData == \"All\"\n| filter vulnerability.davis_assessment.exploit_status == $PublicExploit or $PublicExploit == \"All\"\n| filter vulnerability.davis_assessment.vulnerable_function_status == $VulnerableFunction or $VulnerableFunction == \"All\"\n| filter in(vulnerability.references.cve, $CVE)\n\n| filter risk_level == \"LOW\"\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| fieldsAdd hostname=entityName(dt.entity.host), host.tags=entityAttr(dt.entity.host,\"tags\")\n| filter in(\"All\",$Host) OR in(hostname.names,$Host)\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n], sourceField:dt.entity.host, lookupField:id\n| filter in(lookup.monitoringMode, $monitoringMode)\n| filter ($tag_filter == \"ON\" AND in(concat($tagkey, \":\", $tagvalue), host.tags)) OR ($tag_filter == \"OFF\" AND isNotNull(vulnerability.display_id))\n| summarize\n`Vulnerabilities`=countDistinct(vulnerability.display_id)\n| fields `Low`= Vulnerabilities",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "colorThresholdTarget": "background",
              "label": "Low",
              "prefixIcon": "SecurityHighIcon",
              "recordField": "Low",
              "trend": {
                "isVisible": true
              }
            },
            "thresholds": [
              {
                "field": "Low",
                "id": 1,
                "isEnabled": true,
                "rules": [
                  {
                    "color": "#008CDB",
                    "comparator": "!=",
                    "id": 0,
                    "label": "",
                    "value": "0"
                  }
                ],
                "title": ""
              }
            ]
          }
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "fetch dt.entity.host\n| fields entity.name = array(\"All\", entity.name)\n| sort entity.name asc",
          "key": "Host",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "editable": true,
          "input": "fetch dt.entity.host\n| filter entity.name == $Host or $Host == \"All\"\n| expand tags, alias:tag\n| parse tag, \"\"\"LD:key  (!\u003c\u003c'\\\\' ':')\"\"\"\n| fields key\n//| fields array(\"All\", key)",
          "key": "tagkey",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch dt.entity.host\n| filter entity.name == $Host or $Host == \"All\"\n| expand tags, alias:tag\n| parse tag, \"\"\"LD:key  (!\u003c\u003c'\\\\' ':') LD:value \"\"\"\n| filter key == $tagkey\n| fields value",
          "key": "tagvalue",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch events\n| filter event.kind == \"SECURITY_EVENT\"\n| filter event.category == \"VULNERABILITY_MANAGEMENT\"\n| filter event.provider == \"Dynatrace\"\n| filter event.type == \"VULNERABILITY_STATE_REPORT_EVENT\" | filter event.level == \"ENTITY\" | summarize takeLast(vulnerability.id), by: affected_entity.management_zones.names | fields values = affected_entity.management_zones.names | fields values = array(\"All\", values)",
          "key": "ManagementZone",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "editable": true,
          "input": "fetch security.events\n| filter event.kind == \"SECURITY_EVENT\"\n| filter event.category == \"VULNERABILITY_MANAGEMENT\"\n| filter event.provider == \"Dynatrace\"\n| filter event.type == \"VULNERABILITY_STATE_REPORT_EVENT\" | filter event.level == \"ENTITY\"\n| summarize takeLast(vulnerability.id), by: vulnerability.risk.level\n| fields values = vulnerability.risk.level",
          "key": "Severity",
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
          "input": "fetch security.events\n| filter event.kind == \"SECURITY_EVENT\"\n| filter event.category == \"VULNERABILITY_MANAGEMENT\"\n| filter event.provider == \"Dynatrace\"\n| filter event.type == \"VULNERABILITY_STATE_REPORT_EVENT\" | filter event.level == \"ENTITY\" | summarize takeLast(vulnerability.id), by: vulnerability.references.cve | fields values = vulnerability.references.cve ",
          "key": "CVE",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch security.events\n| filter event.kind == \"SECURITY_EVENT\"\n| filter event.category == \"VULNERABILITY_MANAGEMENT\"\n| filter event.provider == \"Dynatrace\"\n| filter event.type == \"VULNERABILITY_STATE_REPORT_EVENT\" | filter event.level == \"ENTITY\" | summarize takeLast(vulnerability.id), by: vulnerability.parent.davis_assessment.exposure_status | fields values = vulnerability.parent.davis_assessment.exposure_status | fields values = array(\"All\", values)",
          "key": "PublicExposure",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch security.events\n| filter event.kind == \"SECURITY_EVENT\"\n| filter event.category == \"VULNERABILITY_MANAGEMENT\"\n| filter event.provider == \"Dynatrace\"\n| filter event.type == \"VULNERABILITY_STATE_REPORT_EVENT\" | filter event.level == \"ENTITY\" | summarize takeLast(vulnerability.id), by: vulnerability.davis_assessment.data_assets_status | fields values = vulnerability.davis_assessment.data_assets_status | fields values = array(\"All\", values)",
          "key": "ReachableData",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch security.events\n| filter event.kind == \"SECURITY_EVENT\"\n| filter event.category == \"VULNERABILITY_MANAGEMENT\"\n| filter event.provider == \"Dynatrace\"\n| filter event.type == \"VULNERABILITY_STATE_REPORT_EVENT\" | filter event.level == \"ENTITY\" | summarize takeLast(vulnerability.id), by: vulnerability.parent.davis_assessment.vulnerable_function_status | fields values = vulnerability.parent.davis_assessment.vulnerable_function_status | fields values = array(\"All\", values)",
          "key": "VulnerableFunction",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch security.events\n| filter event.kind == \"SECURITY_EVENT\"\n| filter event.category == \"VULNERABILITY_MANAGEMENT\"\n| filter event.provider == \"Dynatrace\"\n| filter event.type == \"VULNERABILITY_STATE_REPORT_EVENT\" | filter event.level == \"ENTITY\" | summarize takeLast(vulnerability.id), by: affected_entity.vulnerable_component.name | fields values = affected_entity.vulnerable_component.name | fields values = array(\"All\", values)\n",
          "key": "VulnerableLibrary",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        },
        {
          "editable": true,
          "input": "Davis, CVSS",
          "key": "riskassessment",
          "multiple": false,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch security.events\n| filter event.kind == \"SECURITY_EVENT\"\n| filter event.category == \"VULNERABILITY_MANAGEMENT\"\n| filter event.provider == \"Dynatrace\"\n| filter event.type == \"VULNERABILITY_STATE_REPORT_EVENT\" \n| filter event.level == \"ENTITY\" \n| summarize by:{vulnerability.davis_assessment.exploit_status}, count()\n| fields values = vulnerability.davis_assessment.exploit_status | fields values = array(\"All\", values)",
          "key": "PublicExploit",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "fetch dt.entity.host\n| fields entity.name, monitoringMode, id\n//| summarize by:{monitoringMode},count()\n| fieldsKeep monitoringMode\n| dedup monitoringMode\n| filter isNotNull(monitoringMode)",
          "key": "monitoringMode",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "OFF",
          "editable": true,
          "input": "ON,OFF",
          "key": "tag_filter",
          "multiple": false,
          "type": "csv",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": "https://demo.apps.dynatrace.com/",
          "editable": true,
          "key": "Environment_url",
          "type": "text",
          "version": 2,
          "visible": false
        }
      ],
      "version": 21
    })
  private = true
}
