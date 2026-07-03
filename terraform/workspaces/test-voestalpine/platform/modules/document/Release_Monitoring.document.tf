resource "dynatrace_document" "Release_Monitoring" {
  name      = "Release Monitoring"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [
        {
          "dataMapping": {
            "description": {
              "field": "stage",
              "type": "string"
            },
            "name": {
              "field": "deployment_name",
              "type": "string"
            },
            "start": {
              "field": "timestamp",
              "type": "timestamp"
            }
          },
          "displaySettings": {
            "color": "#eca440",
            "pinned": false,
            "referenceIds": [
              "38",
              "43"
            ]
          },
          "input": "fetch events\n| filter event.kind == \"SDLC_EVENT\" and event.type == \"deployment\" and event.status == \"finished\"\n| filter in(cicd.deployment.release_stage, array($Stage))\n| fieldsRename deployment_name = cicd.deployment.name, stage = cicd.deployment.release_stage\n| fields timestamp, deployment_name, stage",
          "key": "a187d07d-eaf4-4851-9484-89110a13a379",
          "name": "Deployments",
          "type": "query",
          "version": 2
        }
      ],
      "layouts": {
        "1": {
          "h": 9,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "13": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 109
        },
        "14": {
          "h": 9,
          "w": 13,
          "x": 0,
          "y": 111
        },
        "15": {
          "h": 9,
          "w": 11,
          "x": 13,
          "y": 111
        },
        "24": {
          "h": 10,
          "w": 24,
          "x": 0,
          "y": 77
        },
        "25": {
          "h": 10,
          "w": 5,
          "x": 0,
          "y": 67
        },
        "26": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 58
        },
        "3": {
          "h": 4,
          "w": 6,
          "x": 0,
          "y": 11
        },
        "30": {
          "h": 12,
          "w": 24,
          "x": 0,
          "y": 97
        },
        "31": {
          "h": 10,
          "w": 5,
          "x": 0,
          "y": 87
        },
        "33": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 46
        },
        "34": {
          "h": 9,
          "w": 24,
          "x": 0,
          "y": 49
        },
        "36": {
          "h": 5,
          "w": 24,
          "x": 0,
          "y": 17
        },
        "37": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 15
        },
        "38": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 61
        },
        "39": {
          "h": 4,
          "w": 6,
          "x": 6,
          "y": 11
        },
        "40": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 11
        },
        "41": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 11
        },
        "42": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "43": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 61
        },
        "54": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 25
        },
        "56": {
          "h": 10,
          "w": 19,
          "x": 5,
          "y": 87
        },
        "57": {
          "h": 10,
          "w": 19,
          "x": 5,
          "y": 67
        },
        "6": {
          "h": 3,
          "w": 24,
          "x": 0,
          "y": 22
        },
        "7": {
          "h": 13,
          "w": 24,
          "x": 0,
          "y": 33
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "# Release Monitoring\n\nUnified view of deployed versions, K8s workloads, active problems, vulnerabilities, and SDLC deployment events.\n\n---\n\n| Filter | Scope | Applied to |\n|--------|-------|------------|\n| **Stage** | Release stage (dev, staging, production) | All tiles |\n| **Product** | Product / service family | All release inventory, problems, and vulnerability tiles |\n| **Version** | Specific version | All release inventory, problems, and vulnerability tiles |\n| **Cluster** | Kubernetes cluster name | K8s Workloads table, Version Distribution chart |\n| **Namespace** | Kubernetes namespace | K8s Workloads table |\n| **HostGroup** | Host group identifier | Non-K8s Processes table (VM only) |\n\n\u003e Filters are cascading  -  Stage narrows Product, Product narrows Version, Cluster narrows Namespace.",
          "type": "markdown"
        },
        "13": {
          "content": "---\n\n### SDLC Deployment Events\nDeployment events from the SDLC events API  -  recent deployments, their status, and outcome trends over time.",
          "type": "markdown"
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Recent finished SDLC deployment events scoped by Stage. \n\nProduct and Version filters do not apply  -  SDLC events carry no product field. \nUse the Deployment Name column to correlate with specific releases.",
          "query": "fetch events\n| filter event.kind == \"SDLC_EVENT\" and event.type == \"deployment\" and event.status == \"finished\"\n| filter in(cicd.deployment.release_stage, array($Stage))\n| fieldsRename\n    deployment_name = cicd.deployment.name,\n    stage           = cicd.deployment.release_stage,\n    status          = cicd.deployment.status,\n    provider        = event.provider,\n    version         = event.version,\n    commit          = vcs.ref.head.revision\n| sort timestamp desc\n| limit 200",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Recent Deployments",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {}
        },
        "15": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Succeeded vs failed deployment counts over the selected time window, filtered by Stage. \n\nSpikes in failed deployments correlate with timestamps in Recent Deployments above.",
          "query": "fetch events\n| filter event.kind == \"SDLC_EVENT\" and event.type == \"deployment\" and event.status == \"finished\"\n| filter in(cicd.deployment.release_stage, array($Stage))\n| makeTimeseries\n    succeeded = countIf(cicd.deployment.status == \"succeeded\"),\n    failed = countIf(cicd.deployment.status == \"failed\")",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Deployment Outcomes Over Time",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {}
        },
        "24": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "One row per problem Ãƒâ€” affected service. \n\nA single incident touching multiple services produces multiple rows  -  use this to measure blast radius. \n\nRelated Process / Version / Stage columns identify which deployment is involved. ",
          "query": "fetch dt.davis.problems\n| filter not(dt.davis.is_duplicate) and event.status == \"ACTIVE\"\n| expand smartscape.affected_entity.ids\n| fieldsRename affected_entity_id = smartscape.affected_entity.ids\n| join\n  [smartscapeNodes \"PROCESS\"\n  | filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n  | filter in(tags[DT_RELEASE_STAGE], array($Stage))\n  | filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n  | filter in(tags[DT_RELEASE_VERSION], array($Version))\n  | fieldsAdd proc_name = name, proc_version = tags[DT_RELEASE_VERSION], proc_stage = tags[DT_RELEASE_STAGE], proc_product = tags[DT_RELEASE_PRODUCT]\n  | traverse edgeTypes: {runs_on}, targetTypes: {SERVICE}, direction: backward, fieldsKeep: {proc_name, proc_version, proc_stage, proc_product}\n  | fieldsAdd traverse_elem = arrayElement(dt.traverse.history, 0)\n  | fieldsAdd \n    process_name = traverse_elem[proc_name],\n    version = traverse_elem[proc_version],\n    stage = traverse_elem[proc_stage],\n    service_name = name\n  | dedup id\n  | fields id, process_name, version, stage, service_name],\n  on: {left[`affected_entity_id`] == right[`id`]}\n| fields \n  timestamp, \n  problem_id = concat(\n    \"[\", display_id, \"](/ui/apps/dynatrace.davis.problems/problem/\", event.id, \")\"),\n  event.name, \n  event.category, \n  service_name = right.service_name,\n  related_process = right.process_name,\n  version = right.version,\n  stage = right.stage,\n  id = right.id\n\n  \n\n// | fieldsAdd ServiceLink = concat(\"[\", Service, \"](/ui/apps/dynatrace.services/explorer/services?detailsId=\", serviceId, \n// \"\u0026perspective=performance\u0026sort=healthIndicators%3Adescending\u0026tf=\", encodeurl($dt_timeframe_from), \"%3B\", encodeurl($dt_timeframe_to), \")\")\n\n\n\n| sort timestamp desc\n| limit 100",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active Problems  -  Blast Radius by Service",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#c4233b"
                  },
                  "field": "event.category",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "event.category"
                    ]
                  },
                  "type": "string",
                  "value": "AVAILABILITY"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#e07c00"
                  },
                  "field": "event.category",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "event.category"
                    ]
                  },
                  "type": "string",
                  "value": "ERROR"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#e8c600"
                  },
                  "field": "event.category",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "event.category"
                    ]
                  },
                  "type": "string",
                  "value": "SLOWDOWN"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#8a6bbe"
                  },
                  "field": "event.category",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "event.category"
                    ]
                  },
                  "type": "string",
                  "value": "RESOURCE_CONTENTION"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#5aaafa"
                  },
                  "field": "event.category",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "event.category"
                    ]
                  },
                  "type": "string",
                  "value": "CUSTOM_ALERT"
                }
              ]
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "problem_id"
                  ],
                  "id": 1329495,
                  "value": "markdown"
                }
              ],
              "hiddenColumns": [
                [
                  "id"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"related_process\"]",
                  "direction": "ascending"
                }
              ]
            }
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Distinct incident count by Davis category. \n\nComplements the blast-radius table by showing the incident type distribution without per-service inflation.",
          "query": "fetch dt.davis.problems\n| filter not(dt.davis.is_duplicate) and event.status == \"ACTIVE\"\n| expand smartscape.affected_entity.ids\n| fieldsRename affected_entity_id = smartscape.affected_entity.ids\n| join\n  [smartscapeNodes \"PROCESS\"\n  | filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n  | filter in(tags[DT_RELEASE_STAGE], array($Stage))\n  | filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n  | filter in(tags[DT_RELEASE_VERSION], array($Version))\n  | traverse edgeTypes: {runs_on}, targetTypes: {SERVICE}, direction: backward\n  | dedup id\n  | fields id],\n  on: {left[`affected_entity_id`] == right[`id`]}\n| dedup event.id\n| summarize active_problems = count(), by:{event.category}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active Problems by Category",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#c4233b"
                  },
                  "field": "event.category",
                  "type": "string",
                  "value": "AVAILABILITY"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#e07c00"
                  },
                  "field": "event.category",
                  "type": "string",
                  "value": "ERROR"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#e8c600"
                  },
                  "field": "event.category",
                  "type": "string",
                  "value": "SLOWDOWN"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#8a6bbe"
                  },
                  "field": "event.category",
                  "type": "string",
                  "value": "RESOURCE_CONTENTION"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#5aaafa"
                  },
                  "field": "event.category",
                  "type": "string",
                  "value": "CUSTOM_ALERT"
                }
              ]
            }
          }
        },
        "26": {
          "content": "---\n\n### Active Problems \u0026 Risk Assessment\n\nService traffic health, active Davis AI incidents, and security vulnerabilities for the filtered release. Narrow **Product** and **Version** for the most focused signals.",
          "type": "markdown"
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Count of distinct release versions currently active across the filtered scope. ",
          "query": "smartscapeNodes \"PROCESS\"\n| filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n| filter in(tags[DT_RELEASE_STAGE], array($Stage))\n| filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n| filter in(tags[DT_RELEASE_VERSION], array($Version))\n| summarize version_count = countDistinct(tags[DT_RELEASE_VERSION])",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Distinct Versions Deployed",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-apdex-excellent-default, #2a7453)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "version_count",
                  "type": "long",
                  "value": null
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "ShipFilledIcon",
              "trend": {
                "isVisible": true,
                "trendField": "version_count"
              }
            },
            "unitsOverrides": []
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "One row per CVE across the filtered processes. `affected_processes` counts distinct process instances carrying the vulnerability; `affected_products` and `affected_versions` show blast radius. Sorted CRITICAL-first, then by most-affected processes.",
          "query": "fetch security.events\n| filter event.type == \"VULNERABILITY_FINDING\" and isNotNull(dt.smartscape.process)\n| join\n  [smartscapeNodes \"PROCESS\"\n  | filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n  | filter in(tags[DT_RELEASE_STAGE], array($Stage))\n  | filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n  | filter in(tags[DT_RELEASE_VERSION], array($Version))\n  | fieldsAdd proc_stage = tags[DT_RELEASE_STAGE], proc_product = tags[DT_RELEASE_PRODUCT], proc_version = tags[DT_RELEASE_VERSION]\n  | fields id, name, proc_stage, proc_product, proc_version],\n  on: {left[`dt.smartscape.process`] == right[`id`]}\n| dedup vulnerability.id, dt.smartscape.process\n| fieldsAdd process_link = concat(\"[\", toString(right.name), \"](/ui/apps/dynatrace.infraops/smartscape/Compute/Processes?perspective=Health\u0026fullPageId=\", toString(right.id), \")\")\n| summarize\n    affected_processes = count(),\n    affected_products  = countDistinct(right.proc_product),\n    affected_versions  = countDistinct(right.proc_version),\n    processes          = collectDistinct(process_link),\n  by: {vulnerability.id, vulnerability.title, vulnerability.risk.level}\n| fieldsAdd severity_order = if(vulnerability.risk.level == \"CRITICAL\", 1, else: if(vulnerability.risk.level == \"HIGH\", 2, else: if(vulnerability.risk.level == \"MEDIUM\", 3, else: if(vulnerability.risk.level == \"LOW\", 4, else: 5))))\n| sort severity_order asc, affected_processes desc\n| limit 500",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Vulnerabilities Related to Filtered Processes",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#c4233b"
                  },
                  "field": "vulnerability.risk.level",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "vulnerability.risk.level"
                    ]
                  },
                  "type": "string",
                  "value": "CRITICAL"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#e07c00"
                  },
                  "field": "vulnerability.risk.level",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "vulnerability.risk.level"
                    ]
                  },
                  "type": "string",
                  "value": "HIGH"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#e8c600"
                  },
                  "field": "vulnerability.risk.level",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "vulnerability.risk.level"
                    ]
                  },
                  "type": "string",
                  "value": "MEDIUM"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#5aaafa"
                  },
                  "field": "vulnerability.risk.level",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "vulnerability.risk.level"
                    ]
                  },
                  "type": "string",
                  "value": "LOW"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#abb4be"
                  },
                  "field": "vulnerability.risk.level",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "vulnerability.risk.level"
                    ]
                  },
                  "type": "string",
                  "value": "NONE"
                }
              ]
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "processes"
                  ],
                  "id": 9876543,
                  "value": "markdown"
                }
              ],
              "hiddenColumns": [
                [
                  "severity_order"
                ]
              ],
              "lineWrapIds": [
                [
                  "processes"
                ]
              ],
              "linewrapEnabled": true,
              "sortBy": [
                {
                  "columnId": "[\"severity_order\"]",
                  "direction": "ascending"
                }
              ]
            }
          }
        },
        "31": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Distribution of vulnerability findings by risk level across filtered processes. \n\nUse alongside the table to understand the severity mix at a glance.",
          "query": "fetch security.events\n| filter event.type == \"VULNERABILITY_FINDING\" and isNotNull(dt.smartscape.process)\n| join\n  [smartscapeNodes \"PROCESS\"\n  | filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n  | filter in(tags[DT_RELEASE_STAGE], array($Stage))\n  | filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n  | filter in(tags[DT_RELEASE_VERSION], array($Version))\n  | fields id],\n  on: {left[`dt.smartscape.process`] == right[`id`]}\n| dedup vulnerability.id, dt.smartscape.process\n| summarize vulnerability_count = count(), by:{vulnerability.risk.level}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Vulnerabilities by Risk Level",
          "type": "data",
          "visualization": "donutChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#c4233b"
                  },
                  "field": "vulnerability.risk.level",
                  "type": "string",
                  "value": "CRITICAL"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#e07c00"
                  },
                  "field": "vulnerability.risk.level",
                  "type": "string",
                  "value": "HIGH"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#e8c600"
                  },
                  "field": "vulnerability.risk.level",
                  "type": "string",
                  "value": "MEDIUM"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#5aaafa"
                  },
                  "field": "vulnerability.risk.level",
                  "type": "string",
                  "value": "LOW"
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "=",
                  "customColor": {
                    "Default": "#abb4be"
                  },
                  "field": "vulnerability.risk.level",
                  "type": "string",
                  "value": "NONE"
                }
              ]
            }
          }
        },
        "33": {
          "content": "---\n\n### Non-K8s Processes  -  Release Inventory\nProcesses with `DT_RELEASE_VERSION` running outside Kubernetes  -  VM/bare-metal deployments and AWS ECS tasks.",
          "type": "markdown"
        },
        "34": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "VM and ECS processes with DT_RELEASE_VERSION. \n\n**Type** column shows ECS or VM; \n\n**Group** shows host group (VM) or ECS container name. \n\nHostGroup filter applies to VM processes only  -  ECS processes appear regardless. ",
          "query": "smartscapeNodes \"PROCESS\"\n| filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n| filter isNull(process.metadata[KUBERNETES_NAMESPACE])\n| filter isNotNull(name) and name != \"\"\n| filter\n    (isNotNull(process.metadata[AWS_ECS_CLUSTER])\n        and in(tags[DT_RELEASE_STAGE], array($Stage))\n        and in(tags[DT_RELEASE_PRODUCT], array($Product))\n        and in(tags[DT_RELEASE_VERSION], array($Version)))\n    or\n    (isNull(process.metadata[AWS_ECS_CLUSTER])\n        and in(dt.host_group.id, array($HostGroup))\n        and (isNull(tags[DT_RELEASE_STAGE]) or in(tags[DT_RELEASE_STAGE], array($Stage)))\n        and (isNull(tags[DT_RELEASE_PRODUCT]) or in(tags[DT_RELEASE_PRODUCT], array($Product))))\n\n| fieldsAdd\n    deployment_type = if(isNotNull(process.metadata[AWS_ECS_CLUSTER]), \"ECS\", else: \"VM\"),\n    group = if(isNotNull(process.metadata[AWS_ECS_CLUSTER]),\n               process.metadata[AWS_ECS_CONTAINERNAME],\n               else: dt.host_group.id),\n\n    process_name = concat(\"[\",toString(name),\"](/ui/apps/dynatrace.infraops/smartscape/Compute/Processes?perspective=Health\u0026fullPageId=\",\n      toString(id), \")\")\n    \n| fields\n    deployment_type, group, host_name = host.name, process_name,\n    version = tags[DT_RELEASE_VERSION], stage = tags[DT_RELEASE_STAGE],\n    product = tags[DT_RELEASE_PRODUCT], id\n\n| sort deployment_type asc, group asc, host_name asc, process_name asc\n| limit 500",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Non-K8s Processes  -  Release Inventory",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "table": {
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "process_name"
                  ],
                  "id": 1228204,
                  "value": "markdown"
                }
              ],
              "hiddenColumns": [
                [
                  "id"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"version\"]",
                  "direction": "ascending"
                }
              ]
            }
          }
        },
        "36": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Distinct product Ãƒâ€” stage Ãƒâ€” version combinations running now. \n\nKeep the Version filter at 'all' to see true drift  -  selecting a specific version hides stages that don't have it yet. \nMultiple rows per stage signal a rolling deployment in progress.",
          "query": "smartscapeNodes \"PROCESS\"\n| filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n| filter isNotNull(tags[DT_RELEASE_STAGE]) and tags[DT_RELEASE_STAGE] != \"\"\n| filter in(tags[DT_RELEASE_STAGE], array($Stage))\n| filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n| summarize process_count = count(), by: {\n    product = tags[DT_RELEASE_PRODUCT],\n    stage = tags[DT_RELEASE_STAGE],\n    version = tags[DT_RELEASE_VERSION]\n  }\n| sort product asc, version desc, stage asc\n| limit 500",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Version Drift Across Stages",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {}
        },
        "37": {
          "content": "---\n\n### Version Drift Across Stages\nEvery **product × stage × version** combination currently running  -  spot promotion gaps and rolling deployment progress.",
          "type": "markdown"
        },
        "38": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total request count over time across all services backed by the filtered release. \n\nRising requests confirm traffic is flowing to the new version.",
          "query": "timeseries requests = sum(dt.service.request.count),\nfilter: dt.smartscape.service in [\n    smartscapeNodes \"PROCESS\"\n    | filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n    | filter in(tags[DT_RELEASE_STAGE], array($Stage))\n    | filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n    | filter in(tags[DT_RELEASE_VERSION], array($Version))\n    | traverse edgeTypes: {runs_on}, targetTypes: {SERVICE}, direction: backward\n    | dedup id\n    | fields id\n]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Service Requests",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {}
        },
        "39": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Distinct Dynatrace Intelligence incidents opened in the last 24 hours on services backed by the filtered release. \nTurns red at 1  -  drill into Active Problems  -  Blast Radius below for details.",
          "query": "fetch dt.davis.problems, from: now() - 1d\n| filter not(dt.davis.is_duplicate) and event.status == \"ACTIVE\"\n| expand smartscape.affected_entity.ids\n| fieldsRename affected_entity_id = smartscape.affected_entity.ids\n| join\n  [smartscapeNodes \"PROCESS\"\n  | filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n  | filter in(tags[DT_RELEASE_STAGE], array($Stage))\n  | filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n  | filter in(tags[DT_RELEASE_VERSION], array($Version))\n  | traverse edgeTypes: {runs_on}, targetTypes: {SERVICE}, direction: backward\n  | dedup id\n  | fields id],\n  on: {left[`affected_entity_id`] == right[`id`]}\n| dedup event.id\n| summarize problem_count = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active Problems  -  New Today",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "problem_count",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "problem_count",
                  "value": 1
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "CriticalFailedIcon",
              "recordField": "problem_count"
            }
          }
        },
        "40": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Count of CRITICAL and HIGH CVE findings on processes in the filtered scope. \n\n| Color | Condition\n --- | --- \n Green | at 0\n Amber | at 1-4\n Red | at 5+\n\nSee the Vulnerabilities table below for the full breakdown.",
          "query": "fetch security.events\n| filter event.type == \"VULNERABILITY_FINDING\" and isNotNull(dt.smartscape.process)\n| filter in(vulnerability.risk.level, array(\"CRITICAL\", \"HIGH\"))\n| join\n  [smartscapeNodes \"PROCESS\"\n  | filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n  | filter in(tags[DT_RELEASE_STAGE], array($Stage))\n  | filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n  | filter in(tags[DT_RELEASE_VERSION], array($Version))\n  | fields id],\n  on: {left[`dt.smartscape.process`] == right[`id`]}\n| dedup vulnerability.id, dt.smartscape.process\n| summarize vuln_count = count()",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Critical/High Vulnerabilities",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "field": "vuln_count",
                  "value": 0
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "field": "vuln_count",
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "vuln_count",
                  "value": 5
                }
              ]
            },
            "singleValue": {
              "colorThresholdTarget": "background",
              "isIconVisible": true,
              "labelMode": "none",
              "prefixIcon": "SecurityCriticalIcon",
              "recordField": "vuln_count"
            }
          }
        },
        "41": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Distinct products with at least one active Davis AI incident vs total filtered products. \n\nRed if any product is affected  -  narrow by Product and Version to scope the investigation.",
          "query": "smartscapeNodes \"PROCESS\"\n| filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n| filter in(tags[DT_RELEASE_STAGE], array($Stage))\n| filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n| filter in(tags[DT_RELEASE_VERSION], array($Version))\n| fieldsAdd proc_product = tags[DT_RELEASE_PRODUCT]\n| traverse edgeTypes: {runs_on}, targetTypes: {SERVICE}, direction: backward,\n    fieldsKeep: {proc_product}\n| dedup id\n| fieldsAdd product = dt.traverse.history[0][proc_product]\n| join [\n    fetch dt.davis.problems\n    | filter not(dt.davis.is_duplicate) and event.status == \"ACTIVE\"\n    | expand smartscape.affected_entity.ids\n    | fieldsRename affected_entity_id = smartscape.affected_entity.ids\n    | dedup affected_entity_id\n    | fields affected_entity_id\n  ], on: {left[id] == right[affected_entity_id]}, kind: leftOuter\n| fieldsAdd has_problem = isNotNull(right.affected_entity_id)\n| summarize\n    product_count = countDistinct(if(has_problem, product, else: null)),\n    total_products = countDistinct(product)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Products with Active Problems",
          "type": "data",
          "visualization": "meterBar",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "field": "product_count",
                  "type": "long",
                  "value": 1
                }
              ]
            },
            "dataMapping": {
              "maxDataField": "total_products"
            },
            "valueBoundaries": {
              "max": {
                "mode": "data-field"
              }
            }
          }
        },
        "42": {
          "content": "## Release Health Overview\n\nKey metrics across the filtered release scope: version diversity, active incidents, security exposure, and products at risk.",
          "type": "markdown"
        },
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Total failed requests over time on services backed by the filtered release. \n\nErrors spiking while requests stay steady indicate a regression introduced by the deployment.",
          "query": "timeseries errors = sum(dt.service.request.failure_count),\nfilter: dt.smartscape.service in [\n    smartscapeNodes \"PROCESS\"\n    | filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n    | filter in(tags[DT_RELEASE_STAGE], array($Stage))\n    | filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n    | filter in(tags[DT_RELEASE_VERSION], array($Version))\n    | traverse edgeTypes: {runs_on}, targetTypes: {SERVICE}, direction: backward\n    | dedup id\n    | fields id\n]",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Service Errors",
          "type": "data",
          "visualization": "areaChart",
          "visualizationSettings": {}
        },
        "54": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Each cell is one K8s workload. \n\n| Color | Content \n --- | --- \n Green | DT_RELEASE_VERSION matches the container image tag (rollout complete). \n Red  |  mismatch, rolling deployment still in progress.\n",
          "query": "smartscapeNodes \"PROCESS\"\n| filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n| filter in(tags[DT_RELEASE_STAGE], array($Stage))\n| filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n| filter in(tags[DT_RELEASE_VERSION], array($Version))\n| filter isNotNull(process.metadata[KUBERNETES_NAMESPACE]) and process.metadata[KUBERNETES_NAMESPACE] != \"\"\n| filter in(k8s.cluster.name, array($Cluster))\n| filter in(process.metadata[KUBERNETES_NAMESPACE], array($Namespace))\n| fieldsAdd\n    proc_version = tags[DT_RELEASE_VERSION],\n    proc_cluster = k8s.cluster.name,\n    proc_ns      = process.metadata[KUBERNETES_NAMESPACE]\n| traverse edgeTypes: {runs_on}, targetTypes: {CONTAINER}, direction: forward,\n    fieldsKeep: {proc_version, proc_cluster, proc_ns}\n| fieldsAdd container_version = container.image.version\n| traverse edgeTypes: {is_part_of}, targetTypes: {K8S_DEPLOYMENT, K8S_STATEFULSET, K8S_DAEMONSET}, direction: forward,\n    fieldsKeep: {container_version}\n| fieldsAdd\n    pv       = dt.traverse.history[0][proc_version],\n    cv       = dt.traverse.history[1][container_version],\n    cluster  = dt.traverse.history[0][proc_cluster],\n    ns       = dt.traverse.history[0][proc_ns],\n    workload = k8s.workload.name\n| summarize version_match = min(if(pv == cv, 1.0, else: 0.0)), by: {workload, cluster, ns}\n| sort version_match asc\n| limit 1000",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "K8s Workloads  -  Version Alignment",
          "type": "data",
          "visualization": "honeycomb",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "version_match",
                  "type": "double",
                  "value": 0
                },
                {
                  "color": "var(--dt-colors-charts-loglevel-notice-default, #2a7453)",
                  "colorMode": "single-color",
                  "comparator": "≥",
                  "field": "version_match",
                  "type": "double",
                  "value": 1
                }
              ]
            },
            "honeycomb": {
              "labels": {
                "showLabels": true
              },
              "legend": {
                "hidden": true,
                "position": "right"
              }
            }
          }
        },
        "56": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Top 10 processes by vulnerability count, sorted CRITICAL-first then HIGH, MEDIUM, LOW. Each row is one process instance (name + version + stage). Use to identify the most exposed processes in the filtered release scope.",
          "query": "fetch security.events\n| filter event.type == \"VULNERABILITY_FINDING\" and isNotNull(dt.smartscape.process)\n| join\n  [smartscapeNodes \"PROCESS\"\n  | filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n  | filter in(tags[DT_RELEASE_STAGE], array($Stage))\n  | filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n  | filter in(tags[DT_RELEASE_VERSION], array($Version))\n  | fieldsAdd proc_stage = tags[DT_RELEASE_STAGE], proc_product = tags[DT_RELEASE_PRODUCT], proc_version = tags[DT_RELEASE_VERSION]\n  | fields id, name, proc_stage, proc_product, proc_version],\n  on: {left[`dt.smartscape.process`] == right[`id`]}\n| dedup vulnerability.id, dt.smartscape.process\n| summarize\n    critical = countIf(vulnerability.risk.level == \"CRITICAL\"),\n    high     = countIf(vulnerability.risk.level == \"HIGH\"),\n    medium   = countIf(vulnerability.risk.level == \"MEDIUM\"),\n    low      = countIf(vulnerability.risk.level == \"LOW\"),\n    total    = count(),\n  by: {process_name = right.name, id = right.id, stage = right.proc_stage, product = right.proc_product, version = right.proc_version}\n| fieldsAdd process_name = concat(\"[\", toString(process_name), \"](/ui/apps/dynatrace.infraops/smartscape/Compute/Processes?perspective=Health\u0026fullPageId=\", toString(id), \")\")\n| sort critical desc, high desc, medium desc, low desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 10 Processes by Vulnerability Count",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "coloring": {
              "colorRules": [
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "#c4233b"
                  },
                  "field": "critical",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "critical"
                    ]
                  },
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "#e07c00"
                  },
                  "field": "high",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "high"
                    ]
                  },
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "#e8c600"
                  },
                  "field": "medium",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "medium"
                    ]
                  },
                  "value": 1
                },
                {
                  "colorMode": "custom-color",
                  "comparator": "≥",
                  "customColor": {
                    "Default": "#5aaafa"
                  },
                  "field": "low",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "low"
                    ]
                  },
                  "value": 1
                }
              ]
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "process_name"
                  ],
                  "id": 9876544,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"critical\"]": 90,
                "[\"high\"]": 80,
                "[\"low\"]": 80,
                "[\"medium\"]": 90,
                "[\"process_name\"]": 420,
                "[\"product\"]": 140,
                "[\"stage\"]": 100,
                "[\"total\"]": 80,
                "[\"version\"]": 140
              },
              "hiddenColumns": [
                [
                  "process_id"
                ],
                [
                  "id"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"critical\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        },
        "57": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "query": "fetch dt.davis.problems\n| filter not(dt.davis.is_duplicate) and event.status == \"ACTIVE\"\n| fieldsAdd problem_link = concat(\"[\", display_id, \"](/ui/apps/dynatrace.davis.problems/problem/\", event.id, \")\")\n| expand smartscape.affected_entity.ids\n| fieldsRename affected_entity_id = smartscape.affected_entity.ids\n| join\n  [smartscapeNodes \"PROCESS\"\n  | filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n  | filter in(tags[DT_RELEASE_STAGE], array($Stage))\n  | filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n  | filter in(tags[DT_RELEASE_VERSION], array($Version))\n  | fieldsAdd proc_name = name, proc_version = tags[DT_RELEASE_VERSION], proc_stage = tags[DT_RELEASE_STAGE], proc_product = tags[DT_RELEASE_PRODUCT]\n  | traverse edgeTypes: {runs_on}, targetTypes: {SERVICE}, direction: backward, fieldsKeep: {proc_name, proc_version, proc_stage, proc_product}\n  | fieldsAdd traverse_elem = arrayElement(dt.traverse.history, 0)\n  | fieldsAdd\n    process_name = traverse_elem[proc_name],\n    version      = traverse_elem[proc_version],\n    stage        = traverse_elem[proc_stage],\n    product      = traverse_elem[proc_product],\n    service_name = name\n  | dedup id\n  | fields id, process_name, version, stage, product, service_name],\n  on: {left[`affected_entity_id`] == right[`id`]}\n| dedup event.id, right.id\n| summarize\n    problem_count = count(),\n    problem_ids   = collectDistinct(problem_link),\n  by: {id = right.id, service_name = right.service_name, stage = right.stage, product = right.product, version = right.version, related_process = right.process_name}\n| sort problem_count desc\n| limit 10",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Top 10 Services by Active Problems",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "problem_ids"
                  ],
                  "id": 9876545,
                  "value": "markdown"
                }
              ],
              "columnWidths": {
                "[\"problem_ids\"]": 383.29
              },
              "hiddenColumns": [
                [
                  "service_id"
                ],
                [
                  "id"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "lineWrapIds": [
                [
                  "problem_ids"
                ]
              ],
              "linewrapEnabled": true
            }
          }
        },
        "6": {
          "content": "---\n\n### Kubernetes Workload Release Inventory\nK8s deployments, statefulsets, and daemonsets linked to processes via `DT_RELEASE_VERSION`. Use **Cluster** and **Namespace** filters to scope.",
          "type": "markdown"
        },
        "7": {
          "customLinkSettings": {
            "customLinks": [],
            "version": 1
          },
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "**version** = DT_RELEASE_VERSION process tag (updates immediately on deployment change); \n\n**k8s_container_version** = container image tag (lags during rolling deploys). \n\nA mismatch (alignment = Rolling) means the rollout is still in progress. \n\nWorkload names are clickable entity links.",
          "query": "smartscapeNodes \"PROCESS\"\n| filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n| filter in(tags[DT_RELEASE_STAGE], array($Stage))\n| filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n| filter in(tags[DT_RELEASE_VERSION], array($Version))\n| filter isNotNull(process.metadata[KUBERNETES_NAMESPACE]) and process.metadata[KUBERNETES_NAMESPACE] != \"\"\n| filter in(k8s.cluster.name, array($Cluster))\n| filter in(process.metadata[KUBERNETES_NAMESPACE], array($Namespace))\n| fieldsAdd\n    proc_version       = tags[DT_RELEASE_VERSION],\n    proc_stage         = tags[DT_RELEASE_STAGE],\n    proc_product       = tags[DT_RELEASE_PRODUCT],\n    proc_k8s_namespace = process.metadata[KUBERNETES_NAMESPACE],\n    proc_k8s_cluster   = k8s.cluster.name\n| traverse edgeTypes: {runs_on}, targetTypes: {CONTAINER}, direction: forward,\n    fieldsKeep: {proc_version, proc_stage, proc_product, proc_k8s_namespace, proc_k8s_cluster}\n| fieldsAdd container_version = container.image.version\n| traverse edgeTypes: {is_part_of}, targetTypes: {K8S_DEPLOYMENT, K8S_STATEFULSET, K8S_DAEMONSET}, direction: forward,\n    fieldsKeep: {container_version}\n| fieldsAdd\n    version               = dt.traverse.history[0][proc_version],\n    k8s_container_version = dt.traverse.history[1][container_version],\n    k8s_cluster           = dt.traverse.history[0][proc_k8s_cluster],\n    k8s_namespace         = dt.traverse.history[0][proc_k8s_namespace],\n    stage                 = dt.traverse.history[0][proc_stage],\n    product               = dt.traverse.history[0][proc_product],\n    k8s_workload_name     = concat(\"[\",toString(k8s.workload.name),\"](/ui/apps/dynatrace.kubernetes/smartscape/workload/\",\n                              toString(type), \"?perspective=Health\u0026sort=healthIndicators%3Adescending\u0026detailsId=\", toString(id), \")\")\n\n| fieldsAdd alignment = if(version == k8s_container_version, \"Aligned\", else: \"Rolling\")\n| summarize replicas = count(), by: {\n    k8s_cluster, k8s_namespace, k8s_workload_name,\n    stage, product, version, k8s_container_version, alignment, id\n  }\n| sort alignment desc, k8s_cluster asc, k8s_namespace asc, k8s_workload_name asc\n| limit 1000",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "K8s Workloads  -  Release Inventory",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [
                {
                  "color": "var(--dt-colors-charts-loglevel-notice-default, #2a7453)",
                  "colorMode": "single-color",
                  "comparator": "=",
                  "field": "alignment",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "alignment"
                    ]
                  },
                  "type": "string",
                  "value": "Aligned"
                },
                {
                  "color": "var(--dt-colors-charts-loglevel-info-default, #134fc9)",
                  "colorMode": "single-color",
                  "comparator": "=",
                  "field": "alignment",
                  "metadata": {
                    "applyTo": "cell",
                    "fields": [
                      "alignment"
                    ]
                  },
                  "type": "string",
                  "value": "Rolling"
                }
              ]
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [
                    "k8s_workload_name"
                  ],
                  "id": 69495,
                  "value": "markdown"
                }
              ],
              "hiddenColumns": [
                [
                  "id"
                ]
              ],
              "hideColumnsForLargeResults": false,
              "sortBy": [
                {
                  "columnId": "[\"alignment\"]",
                  "direction": "descending"
                }
              ]
            }
          }
        }
      },
      "variables": [
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "smartscapeNodes \"PROCESS\" \n| filter isNotNull(tags[DT_RELEASE_STAGE]) and tags[DT_RELEASE_STAGE] != \"\" \n| fieldsAdd stage = tags[DT_RELEASE_STAGE] | dedup stage | fields stage | sort stage asc",
          "key": "Stage",
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
          "input": "smartscapeNodes \"PROCESS\" \n| filter in(tags[DT_RELEASE_STAGE], array($Stage))\n| filter isNotNull(tags[DT_RELEASE_PRODUCT]) and tags[DT_RELEASE_PRODUCT] != \"\" \n| filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n| fieldsAdd product = tags[DT_RELEASE_PRODUCT] | dedup product | fields product | sort product asc",
          "key": "Product",
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
          "input": "smartscapeNodes \"PROCESS\" \n| filter in(tags[DT_RELEASE_STAGE], array($Stage))\n| filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n| filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\" \n| fieldsAdd version = tags[DT_RELEASE_VERSION] | dedup version | fields version | sort version asc",
          "key": "Version",
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
          "input": "smartscapeNodes \"PROCESS\"\n| filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n| filter in(tags[DT_RELEASE_STAGE], array($Stage))\n| filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n| filter in(tags[DT_RELEASE_VERSION], array($Version))\n| filter isNotNull(k8s.cluster.name) and k8s.cluster.name != \"\"\n| fieldsAdd cluster = k8s.cluster.name\n| dedup cluster\n| fields cluster\n| sort cluster asc",
          "key": "Cluster",
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
          "input": "smartscapeNodes \"PROCESS\"\n| filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n| filter in(tags[DT_RELEASE_STAGE], array($Stage))\n| filter in(tags[DT_RELEASE_PRODUCT], array($Product))\n| filter in(tags[DT_RELEASE_VERSION], array($Version))\n| filter in(k8s.cluster.name, array($Cluster))\n| filter isNotNull(process.metadata[KUBERNETES_NAMESPACE]) and process.metadata[KUBERNETES_NAMESPACE] != \"\"\n| fieldsAdd namespace = process.metadata[KUBERNETES_NAMESPACE]\n| dedup namespace\n| fields namespace\n| sort namespace asc",
          "key": "Namespace",
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
          "input": "smartscapeNodes \"PROCESS\"\n| filter isNotNull(tags[DT_RELEASE_VERSION]) and tags[DT_RELEASE_VERSION] != \"\"\n| filter isNull(process.metadata[KUBERNETES_NAMESPACE])\n| filter isNull(process.metadata[AWS_ECS_CLUSTER])\n| filter isNotNull(dt.host_group.id) and dt.host_group.id != \"\"\n| dedup dt.host_group.id\n| fields dt.host_group.id\n| sort dt.host_group.id asc",
          "key": "HostGroup",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.site.reliability.guardian.release-monitoring"
  # private = false
}
