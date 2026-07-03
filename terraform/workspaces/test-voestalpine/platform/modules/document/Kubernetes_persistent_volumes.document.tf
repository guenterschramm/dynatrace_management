resource "dynatrace_document" "Kubernetes_persistent_volumes" {
  name      = "Kubernetes persistent volumes"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 9,
          "w": 24,
          "x": 0,
          "y": 10
        },
        "10": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 19
        },
        "11": {
          "h": 1,
          "w": 24,
          "x": 0,
          "y": 9
        },
        "12": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "4": {
          "h": 8,
          "w": 15,
          "x": 0,
          "y": 20
        },
        "5": {
          "h": 8,
          "w": 9,
          "x": 15,
          "y": 20
        },
        "6": {
          "h": 7,
          "w": 12,
          "x": 0,
          "y": 2
        },
        "7": {
          "h": 7,
          "w": 6,
          "x": 18,
          "y": 2
        },
        "8": {
          "h": 7,
          "w": 6,
          "x": 12,
          "y": 2
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
                  "query": "timeseries {\n used = max(dt.kubernetes.persistentvolumeclaim.used),\n capacity = max(dt.kubernetes.persistentvolumeclaim.capacity)\n }, by: { k8s.cluster.name, k8s.persistentvolumeclaim.name, k8s.namespace.name }\n| filter k8s.cluster.name == \"asperitas-production\" AND in(k8s.namespace.name, array(\"kube-public\",\"cluster-autoscaler\",\"kube-system\",\"carpe-k8s-ondemand\",\"flc-resources\",\"demo\",\"renovate\",\"flc-operator-system\",\"argoevents\",\"asperitas\",\"consul\",\"github-arc\",\"argocd\",\"external-secrets\",\"concourse\",\"marketplaces\",\"github-arc-runners\",\"carpe-ocp-ondemand\",\"dto-k8s-ondemand\",\"velero\",\"dto-ocp-ondemand\",\"default\",\"vault\",\"ebs-csi-controller\",\"dto-daily\",\"aws-load-balancer\",\"rbac\",\"kube-node-lease\",\"external-dns\",\"klu\",\"cert-manager\",\"dynatrace-operator\",\"carpe-daily\",\"argowf\"))\n| fieldsAdd usage_percent = used[] / (capacity[]/100)\n| fieldsRemove  used, capacity\n| sort usage_percent desc\n| limit 200"
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
          "query": "// show the top 20 volume usages in percent\ntimeseries {\n  used = max(dt.kubernetes.persistentvolumeclaim.used),\n  capacity = max(dt.kubernetes.persistentvolumeclaim.capacity)\n}, \n// filter by selected cluster and namespaces\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  in(k8s.namespace.name, array($Namespace))\n}, by: { k8s.cluster.name, k8s.persistentvolumeclaim.name, k8s.namespace.name }\n// calculate usage in percent relative to max capacity\n| fieldsAdd usage_percent = used[] / (capacity[]/100)\n| fieldsRemove  used, capacity\n// sort by highest volume usage on top\n| sort arrayMax(usage_percent) desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Volume usage (%)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "usage_percent"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "leftYAxisSettings": {
                "max": {
                  "mode": "custom",
                  "value": 105
                }
              },
              "xAxisScaling": "auto"
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 85,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": null,
                  "min": 95,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                }
              ]
            },
            "dataMapping": {
              "displayedFields": [
                "k8s.persistentvolumeclaim.name",
                "k8s.namespace.name"
              ]
            },
            "unitsOverrides": [
              {
                "added": 1718092891169,
                "baseUnit": "percent",
                "cascade": null,
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
          "content": "### Persistent volumes in cluster: [$Cluster]($IntentLink)\n\nInspect the utilization and size of your persistent volume claims. If you don't see data, [start monitoring your cluster](/ui/apps/dynatrace.kubernetes/onboarding) or [explore this dashboard in our playground](https://wkf10640.apps.dynatrace.com/ui/intent/dynatrace.dashboards/view-dashboard#{\"dt.document.id\":\"dynatrace.kubernetes.kubernetes-persistent-volumes\",\"dt.variableValues\":{\"Cluster\":\"eks-playground\",\"Namespace\":[\"pvc-demo\"]}})",
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
                  "query": "timeseries {\n used = max(dt.kubernetes.persistentvolumeclaim.used),\n capacity = max(dt.kubernetes.persistentvolumeclaim.capacity)\n }, by: { k8s.cluster.name, k8s.persistentvolumeclaim.name, k8s.namespace.name }\n| filter k8s.cluster.name == \"asperitas-production\" AND in(k8s.namespace.name, array(\"kube-public\",\"cluster-autoscaler\",\"kube-system\",\"carpe-k8s-ondemand\",\"flc-resources\",\"demo\",\"renovate\",\"flc-operator-system\",\"argoevents\",\"asperitas\",\"consul\",\"github-arc\",\"argocd\",\"external-secrets\",\"concourse\",\"marketplaces\",\"github-arc-runners\",\"carpe-ocp-ondemand\",\"dto-k8s-ondemand\",\"velero\",\"dto-ocp-ondemand\",\"default\",\"vault\",\"ebs-csi-controller\",\"dto-daily\",\"aws-load-balancer\",\"rbac\",\"kube-node-lease\",\"external-dns\",\"klu\",\"cert-manager\",\"dynatrace-operator\",\"carpe-daily\",\"argowf\"))\n| fieldsAdd usage_percent = used[] / (capacity[]/100)\n| fieldsRemove  used, capacity\n| sort usage_percent desc\n| limit 200"
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
          "query": "// show the usage change over time of the top 20 volumes with the highest amount of change \ntimeseries {\n  used = max(dt.kubernetes.persistentvolumeclaim.used)\n}, \n// filter by selected cluster and namespace\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  in(k8s.namespace.name, array($Namespace))\n}, by: { k8s.cluster.name, k8s.persistentvolumeclaim.name, k8s.namespace.name }\n// calculates how much the usage changed between each time interval \n| fieldsAdd usedoffset = arrayConcat(array(\"0\"), used), used = arrayConcat(used, array(\"0\"))\n| fieldsAdd delta = used[] - usedoffset[]\n// order by highest claim of used capacity\n| sort arraySum(delta) desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Volume usage change",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "fieldMapping": {
                "leftAxisValues": [
                  "delta"
                ],
                "timestamp": "timeframe"
              },
              "gapPolicy": "connect",
              "hiddenLegendFields": [
                "k8s.cluster.name",
                "used",
                "usedoffset"
              ],
              "xAxisScaling": "auto"
            },
            "unitsOverrides": []
          }
        },
        "5": {
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
                  "query": "timeseries {\n used = max(dt.kubernetes.persistentvolumeclaim.used),\n capacity = max(dt.kubernetes.persistentvolumeclaim.capacity)\n }, by: { k8s.cluster.name, k8s.persistentvolumeclaim.name, k8s.namespace.name }\n| filter k8s.cluster.name == \"asperitas-production\" AND in(k8s.namespace.name, array(\"kube-public\",\"cluster-autoscaler\",\"kube-system\",\"carpe-k8s-ondemand\",\"flc-resources\",\"demo\",\"renovate\",\"flc-operator-system\",\"argoevents\",\"asperitas\",\"consul\",\"github-arc\",\"argocd\",\"external-secrets\",\"concourse\",\"marketplaces\",\"github-arc-runners\",\"carpe-ocp-ondemand\",\"dto-k8s-ondemand\",\"velero\",\"dto-ocp-ondemand\",\"default\",\"vault\",\"ebs-csi-controller\",\"dto-daily\",\"aws-load-balancer\",\"rbac\",\"kube-node-lease\",\"external-dns\",\"klu\",\"cert-manager\",\"dynatrace-operator\",\"carpe-daily\",\"argowf\"))\n| fieldsAdd usage_percent = used[] / (capacity[]/100)\n| fieldsRemove  used, capacity\n| sort usage_percent desc\n| limit 200"
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
          "query": "// show the amount of usage change for the top 20 volumes\ntimeseries {\n  used = max(dt.kubernetes.persistentvolumeclaim.used)\n}, \n// filter by selected cluster and namespaces\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  in(k8s.namespace.name, array($Namespace))\n}, by: { k8s.cluster.name, k8s.persistentvolumeclaim.name, k8s.namespace.name }\n// calculate the overall usage change and sort from highest to lowest\n| fieldsAdd change = arrayLast(used) - arrayFirst(used)\n| sort change desc\n| limit 20",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Volume usage change top",
          "type": "data",
          "visualization": "categoricalBarChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "k8s.persistentvolumeclaim.name",
                "valueAxis": "change",
                "valueAxisLabel": "change"
              },
              "legend": {
                "hidden": true
              }
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
                }
              ]
            },
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
                  "query": "timeseries {\n used = max(dt.kubernetes.persistentvolumeclaim.used),\n capacity = max(dt.kubernetes.persistentvolumeclaim.capacity)\n }, by: { k8s.cluster.name, k8s.persistentvolumeclaim.name, k8s.namespace.name }\n| filter k8s.cluster.name == \"asperitas-production\" AND in(k8s.namespace.name, array(\"kube-public\",\"cluster-autoscaler\",\"kube-system\",\"carpe-k8s-ondemand\",\"flc-resources\",\"demo\",\"renovate\",\"flc-operator-system\",\"argoevents\",\"asperitas\",\"consul\",\"github-arc\",\"argocd\",\"external-secrets\",\"concourse\",\"marketplaces\",\"github-arc-runners\",\"carpe-ocp-ondemand\",\"dto-k8s-ondemand\",\"velero\",\"dto-ocp-ondemand\",\"default\",\"vault\",\"ebs-csi-controller\",\"dto-daily\",\"aws-load-balancer\",\"rbac\",\"kube-node-lease\",\"external-dns\",\"klu\",\"cert-manager\",\"dynatrace-operator\",\"carpe-daily\",\"argowf\"))\n| fieldsAdd usage_percent = used[] / (capacity[]/100)\n| fieldsRemove  used, capacity\n| sort usage_percent desc\n| limit 200"
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
          "query": "// show the full, available and used capacity of all volumes in the selected cluster and namespace\ntimeseries {\n  used = max(dt.kubernetes.persistentvolumeclaim.used),\n  capacity = max(dt.kubernetes.persistentvolumeclaim.capacity),\n  available = max(dt.kubernetes.persistentvolumeclaim.available)\n}, \n// filter by selected cluster and namespace (optional)\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  in(k8s.namespace.name, array($Namespace))\n}, by: { k8s.cluster.name, k8s.persistentvolumeclaim.name, k8s.namespace.name },\nfrom: -2m\n| fieldsRemove timeframe, interval\n| fieldsAdd used = arrayLast(used), available = arrayLast(available), capacity = arrayLast(capacity)\n| fieldsAdd used_percent = used / (capacity/100)\n| sort used_percent desc\n| fieldsRename `Name` = k8s.persistentvolumeclaim.name, `Namespace` = k8s.namespace.name, `Used` = used, `Capacity` = capacity, `Available` = available, `Used (%)` = used_percent\n",
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
            "unitsOverrides": [
              {
                "added": 1718182846043,
                "baseUnit": "byte",
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
                "cascade": null,
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
          "query": "// show the used capacity for each (selected) namespace in the cluster\ntimeseries {\n  used = max(dt.kubernetes.persistentvolumeclaim.used)\n}, \n// filter by selected cluster and namespaces\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  in(k8s.namespace.name, array($Namespace))\n}, by: { k8s.cluster.name, k8s.persistentvolumeclaim.name, k8s.namespace.name }\n| fieldsAdd used = arrayLast(used)\n| fieldsRemove timeframe, interval\n// sum up the used capacity of each volume in the namespace\n| summarize sum(used), by: k8s.namespace.name",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Usage by namespace",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "k8s.namespace.name",
                "categoryAxisLabel": "k8s.namespace.name",
                "valueAxis": "sum(used)",
                "valueAxisLabel": "sum(used)"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              }
            }
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            },
            "enabled": false
          },
          "query": "// show the maximum capacity for each (selected) namespace in the cluster\ntimeseries {\n  capacity = max(dt.kubernetes.persistentvolumeclaim.capacity)\n}, \n// filter by selected cluster and namespaces\nfilter: {\n  k8s.cluster.name == $Cluster AND\n  in(k8s.namespace.name, array($Namespace))\n}, by: { k8s.cluster.name, k8s.persistentvolumeclaim.name, k8s.namespace.name }\n| fieldsAdd capacity = arrayLast(capacity)\n| fieldsRemove timeframe, interval\n// sum up the capactiy of each volume in the namespace\n| summarize sum(capacity), by: k8s.namespace.name",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 100,
            "maxResultRecords": 1000
          },
          "title": "Capacity by namespace",
          "type": "data",
          "visualization": "pieChart",
          "visualizationSettings": {
            "chartSettings": {
              "categoricalBarChartSettings": {
                "categoryAxis": "k8s.namespace.name",
                "categoryAxisLabel": "k8s.namespace.name",
                "valueAxis": "sum(capacity)",
                "valueAxisLabel": "sum(capacity)"
              },
              "circleChartSettings": {
                "groupingThresholdType": "relative"
              }
            }
          }
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "// filter timeseries by the selected cluster\ntimeseries count(`dt.kubernetes.nodes`), by: {name=k8s.cluster.name}\n| fields name\n| sort name asc\n// if no clusters, add * placeholder to avoid errors\n| summarize entries = collectDistinct(name)\n| fields records = if (arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
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
          "input": "// filter timeseries by the selected namespace \ntimeseries count(`dt.kubernetes.pods`), filter: {k8s.cluster.name == $Cluster}, by: {name=k8s.namespace.name}\n| fields name\n| sort name asc\n// if no namespaces, add * placeholder to avoid errors\n| summarize entries = collectDistinct(name)\n| fields records = if(arraySize(entries) \u003e 0, entries, else: { \"*\" })\n| expand records",
          "key": "Namespace",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "timeseries count(`dt.kubernetes.nodes`), filter: {k8s.cluster.name==$Cluster}, by: {k8s.cluster.name, dt.smartscape.k8s_cluster, dt.entity.kubernetes_cluster}\n| fields k8s.cluster.name, dt.smartscape.k8s_cluster, dt.entity.kubernetes_cluster\n| fieldsAdd smartscapeIntent = concat(\"/ui/intent/dynatrace.kubernetes/view-entity-dt.smartscape.k8s_cluster/#{\\\"id\\\":\\\"\", dt.smartscape.k8s_cluster, \"\\\"}\")\n| fieldsAdd classicIntent = concat(\"/ui/intent/dynatrace.classic.kubernetes/view-entity-dt.entity.kubernetes_cluster/#{\\\"id\\\":\", dt.entity.kubernetes_cluster, \"\\\"}\")\n| fields intentLink = if(isNotNull(dt.smartscape.k8s_cluster), smartscapeIntent, else: classicIntent)\n// if no clusters, add 'unknown-cluster' placeholder to avoid errors\n| summarize entries = collectDistinct(intentLink)\n| fields records = if (arraySize(entries) \u003e 0, entries, else: { \"/ui/intent/dynatrace.classic.kubernetes/view-entity-dt.entity.kubernetes_cluster/#{\\\"id\\\":\\\"unknown-cluster\\\"}\" })\n| expand records",
          "key": "IntentLink",
          "multiple": false,
          "type": "query",
          "version": 2,
          "visible": false
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.kubernetes.kubernetes-persistent-volumes"
  # private = false
}
