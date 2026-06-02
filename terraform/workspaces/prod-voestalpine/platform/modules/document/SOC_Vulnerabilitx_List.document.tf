resource "dynatrace_document" "SOC_Vulnerabilitx_List" {
  name    = "SOC Vulnerabilitx List"
  type    = "dashboard"
  content = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "0": {
          "h": 15,
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
          "query": "fetch security.events\n| filter event.kind==\"SECURITY_EVENT\"\n| filter event.category==\"VULNERABILITY_MANAGEMENT\"\n| filter event.provider==\"Dynatrace\"\n| filter event.type==\"VULNERABILITY_STATE_REPORT_EVENT\"\n| filter event.level==\"ENTITY\"\n// allow to select either Davis or CVSS Score\n| fieldsAdd risk_level\n| expand related_entities.hosts.ids, alias:dt.entity.host\n| lookup [\n  fetch dt.entity.host\n| fields entity.name, monitoringMode, id, hostGroupName\n], sourceField:dt.entity.host, lookupField:id\n| filter vulnerability.resolution.status == \"OPEN\" and vulnerability.mute.status == \"NOT_MUTED\"\n| dedup vulnerability.id, affected_entity.id\n| expand pid=affected_entity.affected_processes.ids\n| lookup [\n  fetch dt.entity.process_group_instance\n  | fields process_id=id, process_name=entity.name, host_id=belongs_to[dt.entity.host]\n  | lookup [ fetch dt.entity.host | fieldsAdd tags], sourceField:host_id, lookupField:id, fields:{host_name=entity.name,host.tags=tags}\n  ], sourceField: pid, lookupField:process_id, fields:{process_id,process_name, host_id, host_name,host.tags}\n//| fieldsRename host_id=dt.entity.host\n// | fieldsAdd hostname=entityName(dt.entity.host), host.tags=entityAttr(dt.entity.host,\"tags\")\n| fieldsAdd description_clean = replacePattern(replacePattern(vulnerability.description,\"CR\",\" \"),\"LF\",\" \")\n| filter isNotNull(vulnerability.display_id)\n| fields \n  `ID`=vulnerability.display_id,\n  `Risk Level`=vulnerability.risk.level,\n  `CVE`=vulnerability.references.cve,\n  `Davis Score`=vulnerability.davis_assessment.score, \n  `CVSS Score`=vulnerability.cvss.base_score, \n  `Stack`=vulnerability.stack,\n  `Technology`= vulnerability.technology,\n  `Affected Component`=affected_entity.vulnerable_component.name,\n  `Title`=vulnerability.title,\n  `Detailed Description`=description_clean,\n  `Fix available`= if(isNotNull(vulnerability.is_fix_available),if(vulnerability.is_fix_available,\"yes\",else:\"no\"),else:\"unknown\"),\n  `Remediation`= if(isNotNull(vulnerability.remediation.description),vulnerability.remediation.description,else:\"\"),\n  `Host Group`=lookup.hostGroupName,\n  `Host Name`=host_name,\n  `Process`=process_name,\n  `Related Webapplication`=related_entities.applications.names,\n  `Related Services`=related_entities.services.names,\n  `Related Databases`=related_entities.databases.names,\n  `Exposure`=vulnerability.davis_assessment.exposure_status, \n  `Exploit`=vulnerability.davis_assessment.exploit_status,\n  `Data Assets`=vulnerability.davis_assessment.data_assets_status,\n  `Dynatrace Details`=concat(\"https://voestalpine.apps.dynatrace.com/ui/apps/dynatrace.security.vulnerabilities/vulnerabilities/\", vulnerability.id, \"?from=now-24h\u0026to=now\"),\n  `Vulnerability External URL`=vulnerability.external_url\n  \n// | fields ID, CVE, Severity, `Davis Score`, `CVSS Score`, Title, Event_Description, host_name, process_name, Vulnerable_Library, `Public Exposure`, `Reachable Data`, `Vulnerable Function`, URL",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 10,
            "maxResultRecords": 5000
          },
          "title": "Vulnerabilty List",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": true,
            "table": {
              "columnWidths": {
                "[\"Dynatrace Details\"]": 385
              },
              "hideColumnsForLargeResults": true,
              "sortBy": [
                {
                  "columnId": "[\"Risk Level\"]",
                  "direction": "ascending"
                }
              ]
            }
          }
        }
      },
      "variables": [],
      "version": 21
    })
  private = true
}
