resource "dynatrace_document" "OpenTelemetry_K8s_Persistent_Volumes" {
  name      = "OpenTelemetry K8s Persistent Volumes"
  type      = "dashboard"
  content   = jsonencode({
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 9,
          "w": 24,
          "x": 0,
          "y": 12
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 21
        },
        "11": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 11
        },
        "12": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "13": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 30
        },
        "4": {
          "h": 8,
          "w": 24,
          "x": 0,
          "y": 22
        },
        "6": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 4
        },
        "7": {
          "h": 7,
          "w": 6,
          "x": 18,
          "y": 4
        },
        "8": {
          "h": 7,
          "w": 6,
          "x": 12,
          "y": 4
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "unit": {
                    "baseUnit": "byte",
                    "unitCategory": "data"
                  }
                }
              },
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 1,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2024-06-11T11:01:38.439Z",
                      "startTime": "2024-06-11T09:01:38.439Z"
                    }
                  },
                  "query": "timeseries {\n used = max(dt.kubernetes.persistentvolumeclaim.used),\n capacity = max(dt.kubernetes.persistentvolumeclaim.capacity)\n }, by: { k8s.cluster.name, k8s.persistent_volume_claim.name, k8s.namespace.name }\n| filter k8s.cluster.name == \"asperitas-production\" AND in(k8s.namespace.name, array(\"kube-public\",\"cluster-autoscaler\",\"kube-system\",\"carpe-k8s-ondemand\",\"flc-resources\",\"demo\",\"renovate\",\"flc-operator-system\",\"argoevents\",\"asperitas\",\"consul\",\"github-arc\",\"argocd\",\"external-secrets\",\"concourse\",\"marketplaces\",\"github-arc-runners\",\"carpe-ocp-ondemand\",\"dto-k8s-ondemand\",\"velero\",\"dto-ocp-ondemand\",\"default\",\"vault\",\"ebs-csi-controller\",\"dto-daily\",\"aws-load-balancer\",\"rbac\",\"kube-node-lease\",\"external-dns\",\"klu\",\"cert-manager\",\"dynatrace-operator\",\"carpe-daily\",\"argowf\"))\n| fieldsAdd usage_percent = used[] / (capacity[]/100)\n| fieldsRemove  used, capacity\n| sort usage_percent desc\n| limit 200"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "selectedOutputs": [
                "429091595",
                "-254869111",
                "-2060372406",
                "-1376411700",
                "-1309016042",
                "272499659",
                "330481932",
                "388464205",
                "1229888129",
                "529821759",
                "-1267628704",
                "-1586503206",
                "-1528520933",
                "-1470538660"
              ],
              "settings": {
                "visibleSections": "VISUALIZATION"
              }
            },
            "enabled": false
          },
          "description": "Volumes memory usage percentage of the capacity",
          "query": "// fetch volume capacity and availability\ntimeseries {\n  capacity = sum(k8s.volume.capacity, rollup:avg),\n  available = sum(k8s.volume.available, rollup:avg)\n}, filter: {\n// filter on cluster name and namespace\n  k8s.cluster.name == $Cluster AND\n  in(k8s.namespace.name, array($Namespace))\n}, by: { k8s.cluster.name, k8s.volume.name, k8s.namespace.name }\n// calculate used storage in absolute value and percentage\n| fieldsAdd used = capacity[] - available[]\n| fieldsAdd usage_percent = used[] / (capacity[]/100)\n| fieldsRemove   capacity,  used, available\n// sort by percentage used\n| sort arrayMax(usage_percent) desc",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Volume Usage (%)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "usage_percent"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8s.cluster.name",
                "used",
                "capacity"
              ],
              "leftYAxisSettings": {
                "label": "k8s.volume.capacity • k8s.volume.available",
                "max": 105,
                "min": 0
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "analyzedTimeframe"
            },
            "dataMapping": {
              "displayedFields": [
                "k8s.cluster.name",
                "k8s.volume.name",
                "k8s.namespace.name"
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
                      "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                    },
                    "comparator": "≥",
                    "id": 0,
                    "label": ""
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                    },
                    "comparator": "≥",
                    "id": 1,
                    "label": "",
                    "value": 85
                  },
                  {
                    "color": {
                      "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                    },
                    "comparator": "≥",
                    "id": 2,
                    "label": "",
                    "value": 95
                  }
                ],
                "title": ""
              }
            ],
            "unitsOverrides": [
              {
                "added": 1747977839669,
                "baseUnit": "percent",
                "decimals": 0,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "usage_percent",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "10": {
          "content": "## Change",
          "type": "markdown"
        },
        "11": {
          "content": "## Usage",
          "type": "markdown"
        },
        "12": {
          "content": "### Persistent Volumes in Cluster: $Cluster\n\nInspect the utilization and size of your persistent volume claims.  If you don't see data, [enable Kubernetes monitoring](https://dt-url.net/xq03nz5) for your Collector.\n\n\nTo ensure the dashboard works correctly, you must:\n\n- ✅ Add `k8s.volume.name` to the **attributes allow list**\n- ❌ Check that `k8s.volume.name` is not part of **attributes block list**\n- 📘 The **allow** and **block** attributes lists can be found in the **Settings** App if you search for either **allowed attributes** or **blocked attributes**. More information about resource attributes configuration can be found [here](https://docs.dynatrace.com/docs/ingest-from/opentelemetry/getting-started/metrics/configuration#allow-list).\n",
          "type": "markdown"
        },
        "13": {
          "content": "### Additional resources\n\nLearn more about using the OTel metrics and logs fetched from the k8s cluster in the [k8scluster](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/k8sclusterreceiver), [kubeletstats](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/kubeletstatsreceiver) and [k8sobjects](https://github.com/open-telemetry/opentelemetry-collector-contrib/tree/main/receiver/k8sobjectsreceiver) receivers documentation",
          "type": "markdown"
        },
        "4": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "unit": {
                    "baseUnit": "byte",
                    "unitCategory": "data"
                  }
                }
              },
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 1,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2024-06-11T11:01:38.439Z",
                      "startTime": "2024-06-11T09:01:38.439Z"
                    }
                  },
                  "query": "timeseries {\n used = max(dt.kubernetes.persistentvolumeclaim.used),\n capacity = max(dt.kubernetes.persistentvolumeclaim.capacity)\n }, by: { k8s.cluster.name, k8s.persistent_volume_claim.name, k8s.namespace.name }\n| filter k8s.cluster.name == \"asperitas-production\" AND in(k8s.namespace.name, array(\"kube-public\",\"cluster-autoscaler\",\"kube-system\",\"carpe-k8s-ondemand\",\"flc-resources\",\"demo\",\"renovate\",\"flc-operator-system\",\"argoevents\",\"asperitas\",\"consul\",\"github-arc\",\"argocd\",\"external-secrets\",\"concourse\",\"marketplaces\",\"github-arc-runners\",\"carpe-ocp-ondemand\",\"dto-k8s-ondemand\",\"velero\",\"dto-ocp-ondemand\",\"default\",\"vault\",\"ebs-csi-controller\",\"dto-daily\",\"aws-load-balancer\",\"rbac\",\"kube-node-lease\",\"external-dns\",\"klu\",\"cert-manager\",\"dynatrace-operator\",\"carpe-daily\",\"argowf\"))\n| fieldsAdd usage_percent = used[] / (capacity[]/100)\n| fieldsRemove  used, capacity\n| sort usage_percent desc\n| limit 200"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "selectedOutputs": [
                "429091595",
                "-254869111",
                "-2060372406",
                "-1376411700",
                "-1309016042",
                "272499659",
                "330481932",
                "388464205",
                "1229888129",
                "529821759",
                "-1267628704",
                "-1586503206",
                "-1528520933",
                "-1470538660"
              ],
              "settings": {
                "visibleSections": "VISUALIZATION"
              }
            },
            "enabled": false
          },
          "description": "Volumes memory usage change",
          "query": "// fetch volume capacity and availability\ntimeseries {\n  capacity = sum(k8s.volume.capacity, rollup:avg),\n  available = sum(k8s.volume.available, rollup:avg)\n}, filter: {\n// filter on cluster name and namespace\n  k8s.cluster.name == $Cluster AND\n  in(k8s.namespace.name, array($Namespace))\n}, by: { k8s.cluster.name, k8s.volume.name, k8s.namespace.name }\n// calculate used storage as an array operation\n| fieldsAdd used = capacity[] - available[]\n// offset the used array by one 0 at the front and the back respectively for timeframes to match\n| fieldsAdd usedoffset = arrayConcat(array(\"0\"), used), used = arrayConcat(used, array(\"0\"))\n// calculate delta as difference between previous and current 'used' arrays\n| fieldsAdd delta = used[] - usedoffset[]\n// remove null values from array\n| fieldsAdd delta = arrayRemoveNulls(delta)\n| fieldsRemove available, capacity, usedoffset, used\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Volume Usage Change",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "delta"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8s.cluster.name"
              ],
              "leftYAxisSettings": {
                "label": "k8s.volume.capacity • k8s.volume.available"
              },
              "truncationMode": "middle",
              "xAxisLabel": "timeframe",
              "xAxisScaling": "auto"
            },
            "thresholds": [],
            "unitsOverrides": []
          }
        },
        "6": {
          "davis": {
            "componentState": {
              "analyzerHints": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "unit": {
                    "baseUnit": "byte",
                    "unitCategory": "data"
                  }
                }
              },
              "inputData": {
                "dt.statistics.ui.ForecastAnalyzer": {
                  "forecastHorizon": 100,
                  "forecastOffset": 1,
                  "generalParameters": {
                    "logVerbosity": "INFO",
                    "resolveDimensionalQueryData": true,
                    "timeframe": {
                      "endTime": "2024-06-11T11:01:38.439Z",
                      "startTime": "2024-06-11T09:01:38.439Z"
                    }
                  },
                  "query": "timeseries {\n used = max(dt.kubernetes.persistentvolumeclaim.used),\n capacity = max(dt.kubernetes.persistentvolumeclaim.capacity)\n }, by: { k8s.cluster.name, k8s.persistent_volume_claim.name, k8s.namespace.name }\n| filter k8s.cluster.name == \"asperitas-production\" AND in(k8s.namespace.name, array(\"kube-public\",\"cluster-autoscaler\",\"kube-system\",\"carpe-k8s-ondemand\",\"flc-resources\",\"demo\",\"renovate\",\"flc-operator-system\",\"argoevents\",\"asperitas\",\"consul\",\"github-arc\",\"argocd\",\"external-secrets\",\"concourse\",\"marketplaces\",\"github-arc-runners\",\"carpe-ocp-ondemand\",\"dto-k8s-ondemand\",\"velero\",\"dto-ocp-ondemand\",\"default\",\"vault\",\"ebs-csi-controller\",\"dto-daily\",\"aws-load-balancer\",\"rbac\",\"kube-node-lease\",\"external-dns\",\"klu\",\"cert-manager\",\"dynatrace-operator\",\"carpe-daily\",\"argowf\"))\n| fieldsAdd usage_percent = used[] / (capacity[]/100)\n| fieldsRemove  used, capacity\n| sort usage_percent desc\n| limit 200"
                }
              },
              "selectedAnalyzerName": "dt.statistics.ui.ForecastAnalyzer"
            },
            "davisVisualization": {
              "selectedOutputs": [
                "429091595",
                "-254869111",
                "-2060372406",
                "-1376411700",
                "-1309016042",
                "272499659",
                "330481932",
                "388464205",
                "1229888129",
                "529821759",
                "-1267628704",
                "-1586503206",
                "-1528520933",
                "-1470538660"
              ],
              "settings": {
                "visibleSections": "VISUALIZATION"
              }
            },
            "enabled": false
          },
          "description": "Volumes memory usage, capacity and availability",
          "query": "// fetch volume capacity and availability\ntimeseries {\n  capacity = sum(k8s.volume.capacity, rollup:avg),\n  available = sum(k8s.volume.available, rollup:avg)\n}, filter: {\n  // filter by cluster name and namespace name\n  k8s.cluster.name == $Cluster AND\n  in(k8s.namespace.name, array($Namespace))\n}, by: { k8s.cluster.name, k8s.volume.name, k8s.namespace.name },\n// get data from last minute\nfrom: -2m, to: -1m\n| fieldsRemove timeframe, interval\n// save into new variables\n| fieldsAdd available = arrayLast(available), capacity = arrayLast(capacity)\n// calculate used space as difference of capacity and remaining storage\n| fieldsAdd used = capacity - available\n// calculate as percentage\n| fieldsAdd used_percent = used / (capacity/100)\n| sort used_percent desc\n// rename fields\n| fieldsRename `Name` = k8s.volume.name, `Namespace` = k8s.namespace.name, `Used` = used, `Capacity` = capacity, `Available` = available, `Used (%)` = used_percent\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Volumes",
          "type": "data",
          "visualization": "table",
          "visualizationSettings": {
            "table": {
              "columnOrder": [
                "[\"k8s.cluster.name\"]",
                "[\"Name\"]",
                "[\"Namespace\"]",
                "[\"Capacity\"]",
                "[\"Available\"]",
                "[\"Used\"]",
                "[\"Used (%)\"]"
              ],
              "hiddenColumns": [
                [
                  "k8s.cluster.name"
                ]
              ],
              "sortBy": {
                "columnId": "[\"Used (%)\"]",
                "direction": "descending"
              }
            },
            "thresholds": [],
            "unitsOverrides": [
              {
                "added": 1718182846043,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Used",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1718182855876,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Capacity",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1718182867261,
                "baseUnit": "byte",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Available",
                "suffix": "",
                "unitCategory": "data"
              },
              {
                "added": 1718182879291,
                "baseUnit": "percent",
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "Used (%)",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "Volumes memory usage by namespace",
          "query": "// fetch volume capacity and availability\ntimeseries {\n  capacity = sum(k8s.volume.capacity, rollup:avg),\n  available = sum(k8s.volume.available, rollup:avg)\n}, filter: {\n// filter on cluster name and namespace\n  k8s.cluster.name == $Cluster AND\n  in(k8s.namespace.name, array($Namespace))\n}, by: { k8s.cluster.name, k8s.namespace.name },\n// get data from last minute\nfrom: -2m, to: -1m\n// calculate used up space\n| fieldsAdd used = arrayLast(capacity) - arrayLast(available)\n// sum used storage over namespace\n| summarize sum(used), by: k8s.namespace.name",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Usage by Namespace",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "k8s.namespace.name"
                ],
                "categoryAxisLabel": "k8s.namespace.name",
                "valueAxis": [
                  "sum(used)"
                ],
                "valueAxisLabel": "sum(used)"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "description": "Volumes memory capacity by namespace",
          "query": "// fetch volume capacity\ntimeseries {\n  capacity = sum(k8s.volume.capacity, rollup:avg)\n}, filter: {\n// filter by cluster and namespace\n  k8s.cluster.name == $Cluster AND\n  in(k8s.namespace.name, array($Namespace))\n}, by: { k8s.cluster.name, k8s.namespace.name },\n// get data from last minute\nfrom: -2m, to: -1m\n// take just the latest value\n| fieldsAdd capacity = arrayLast(capacity)\n// sum capacity over namespace\n| summarize sum(capacity), by: k8s.namespace.name",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Capacity by Namespace",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": [
                  "k8s.namespace.name"
                ],
                "categoryAxisLabel": "k8s.namespace.name",
                "valueAxis": [
                  "sum(capacity)"
                ],
                "valueAxisLabel": "sum(capacity)"
              },
              "categoryOverrides": {},
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              },
              "truncationMode": "middle"
            },
            "thresholds": []
          }
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "// fetching all the names of the existing clusters by getting all pod cpu usage metrics and retrieving the cluster names from attributes\ntimeseries {  cpu_usage = sum(k8s.pod.cpu.usage)}, by: { k8s.cluster.name } | summarize collectDistinct(k8s.cluster.name)| fieldsAdd `collectDistinct(k8s.cluster.name)` = if(isNull(`collectDistinct(k8s.cluster.name)`), array(\"*\"), else:`collectDistinct(k8s.cluster.name)`) | fieldsAdd `collectDistinct(k8s.cluster.name)` = arraySort(`collectDistinct(k8s.cluster.name)`, direction: \"ascending\")",
          "key": "Cluster",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "defaultValue": [
            "3420b2ac-f1cf-4b24-b62d-61ba1ba8ed05*"
          ],
          "editable": true,
          "input": "// fetching all the names of the existing namespaces by getting all pod cpu usage metrics and retrieving the namespace names from attributes\ntimeseries {  cpu_usage = sum(k8s.pod.cpu.usage)}, by: { k8s.namespace.name },from: -2m, to: -1m| summarize collectDistinct(k8s.namespace.name)| fieldsAdd `collectDistinct(k8s.namespace.name)` = if(isNull(`collectDistinct(k8s.namespace.name)`), array(\"*\"), else:`collectDistinct(k8s.namespace.name)`) | fieldsAdd `collectDistinct(k8s.namespace.name)` = arraySort(`collectDistinct(k8s.namespace.name)`, direction: \"ascending\")",
          "key": "Namespace",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 20
    })
  custom_id = "dynatrace.opentelemetry.k8s-volumes"
  # private = false
}
