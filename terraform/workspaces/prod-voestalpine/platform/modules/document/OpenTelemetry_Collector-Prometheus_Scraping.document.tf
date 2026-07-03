resource "dynatrace_document" "OpenTelemetry_Collector-Prometheus_Scraping" {
  name      = "OpenTelemetry Collector - Prometheus Scraping"
  type      = "dashboard"
  content   = jsonencode({
      "annotations": [],
      "importedWithCode": false,
      "layouts": {
        "1": {
          "h": 4,
          "w": 24,
          "x": 0,
          "y": 0
        },
        "10": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 62
        },
        "11": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 68
        },
        "12": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 62
        },
        "13": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 68
        },
        "14": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 74
        },
        "17": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 14
        },
        "18": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 16
        },
        "19": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 16
        },
        "2": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 4
        },
        "20": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 22
        },
        "21": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 34
        },
        "22": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 28
        },
        "23": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 28
        },
        "25": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 22
        },
        "26": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 40
        },
        "27": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 42
        },
        "28": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 48
        },
        "3": {
          "h": 4,
          "w": 4,
          "x": 8,
          "y": 6
        },
        "30": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 54
        },
        "32": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 54
        },
        "33": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 42
        },
        "34": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 80
        },
        "35": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 82
        },
        "36": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 82
        },
        "4": {
          "h": 4,
          "w": 4,
          "x": 0,
          "y": 6
        },
        "41": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 100
        },
        "42": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 102
        },
        "43": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 102
        },
        "45": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 48
        },
        "46": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 74
        },
        "47": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 88
        },
        "48": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 88
        },
        "49": {
          "h": 6,
          "w": 12,
          "x": 0,
          "y": 94
        },
        "5": {
          "h": 4,
          "w": 4,
          "x": 4,
          "y": 6
        },
        "50": {
          "h": 6,
          "w": 12,
          "x": 12,
          "y": 94
        },
        "51": {
          "h": 4,
          "w": 12,
          "x": 12,
          "y": 10
        },
        "6": {
          "h": 4,
          "w": 6,
          "x": 18,
          "y": 6
        },
        "7": {
          "h": 4,
          "w": 6,
          "x": 12,
          "y": 6
        },
        "8": {
          "h": 4,
          "w": 12,
          "x": 0,
          "y": 10
        },
        "9": {
          "h": 2,
          "w": 24,
          "x": 0,
          "y": 60
        }
      },
      "settings": {},
      "tiles": {
        "1": {
          "content": "### Prometheus Ingest via OpenTelemetry Collector\n\nTrack the health and throughput of your Prometheus-to-Dynatrace pipeline end to end — from Target Allocator assignment and scraper success rates through gateway export and autoscaling — so you can catch data loss, backpressure, and scaling issues before they affect ingest.\n\nBuilt for the **standard (large-scale)** two-tier OpenTelemetry Collector architecture (scrapers + gateways) with a Target Allocator; it does not apply to simplified (small-scale) deployments or non-Prometheus pipelines.\n\nUse the variables above to scope every chart to your cluster, namespace, and workloads.\n\nSee the [OTel Collector + Target Allocator deployment guide](https://docs.dynatrace.com/docs/shortlink/otel-collector-cases-prometheus) for setup details.",
          "type": "markdown"
        },
        "10": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Discovered = collectors the TA sees via its Kubernetes label selector. Allocatable = collectors with a ready endpoint that the TA will assign targets to.\nIf discovered stays above allocatable, some scraper pods are visible but not ready; check rollout status, crash loops, and readiness probes, then compare with the Scraper replicas tile.",
          "query": "// Two gauges side-by-side. Gap = unready or unreachable collectors.\ntimeseries {\n  discovered = avg(opentelemetry_allocator_collectors_discovered),\n  allocatable = avg(opentelemetry_allocator_collectors_allocatable)\n}, by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($TargetAllocator))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Scraper collectors discovered vs allocatable by TA instance",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858595,
                "baseUnit": "count",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "discovered",
                "suffix": "",
                "unitCategory": "count"
              },
              {
                "added": 1778510858595,
                "baseUnit": "count",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "allocatable",
                "suffix": "",
                "unitCategory": "count"
              }
            ]
          }
        },
        "11": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "How many scrape targets each scraper collector is responsible for. With consistent hashing, distribution should usually stay within about ±20%.\nIf one collector remains an outlier for multiple intervals, restart that scraper and review Target Allocator logs for assignment or collector-selection issues.",
          "query": "// One line per collector_name (= scraper pod name). Hot-spots indicate uneven distribution.\ntimeseries val = avg(opentelemetry_allocator_targets_per_collector), by:{collector_name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($TargetAllocator))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Scrape targets per scraper collector",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858595,
                "baseUnit": "count",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "count"
              }
            ]
          }
        },
        "12": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "`opentelemetry_allocator_targets_remaining` over time — actual scrape targets after relabel rules are applied, per TA pod.\nUse drops to investigate target removals or stricter relabeling, and spikes to verify newly discovered workloads or selector changes.",
          "query": "// Post-relabel target count. Reflects real scrape workload, not the pre-filter target list.\ntimeseries val = avg(opentelemetry_allocator_targets_remaining), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($TargetAllocator))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Scrape targets",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858595,
                "baseUnit": "count",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "count"
              }
            ]
          }
        },
        "13": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Time the Target Allocator takes to compute a new assignment of targets to collectors, shown as one series per TA pod. Under consistent hashing, all TA replicas should behave similarly.\nShort spikes are usually expected during target or collector churn; sustained high p95 suggests TA CPU pressure or scaling limits in the allocation strategy.",
          "query": "// One series per TA pod via by:{k8s.pod.name} so a single struggling replica stands out.\n// percentile() needs rollup: avg on histogram bucket metrics.\ntimeseries {\n  p95 = percentile(opentelemetry_allocator_time_to_allocate_bucket, 95, rollup:avg)\n}, by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($TargetAllocator))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Allocation latency (p95)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1779260716545,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p95",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "14": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Time spent processing target groups and individual targets (two separate metrics) received from the service discovery layer.\nIf p95 rises, inspect Kubernetes service discovery latency and relabel-rule complexity.",
          "query": "// Two histograms side-by-side: group processing vs per-target processing.\ntimeseries {\n  groups_p95 = percentile(opentelemetry_allocator_process_target_groups_duration_seconds_bucket, 95, rollup:avg),\n  targets_p95 = percentile(opentelemetry_allocator_process_targets_duration_seconds_bucket, 95, rollup:avg)\n}, by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($TargetAllocator))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Target group processing duration (p95)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858595,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "groups_p95",
                "suffix": "",
                "unitCategory": "time"
              },
              {
                "added": 1778510858595,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "targets_p95",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "17": {
          "content": "## Scraper Collectors\n\nScrapers poll the Target Allocator for their assignment, scrape Prometheus exporters on the assigned targets, batch the datapoints, and forward via the load-balancing exporter to gateway pods. Health here means: scrapes succeed, targets are reachable, and the LB exporter is delivering to backends.",
          "type": "markdown"
        },
        "18": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Average of the `up` metric per scrape job (0.0 = all scrapes failed, 1.0 = all targets healthy). The unit override renders the value as a percentage. Sustained sub-100% indicates target outages, network issues, or scrape timeouts on the scraper side.\nIf up drops below 1.0: check whether the affected targets are still running (kubectl get pods for the scraped workload); inspect scrape errors in the scraper pod logs; check network policies between scraper pods and target pods.",
          "query": "// up==1 means scrape succeeded. Averaging gives the success ratio across targets in a job.\ntimeseries success = avg(up), by:{service.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(service.name, array($ScrapeJobs))\n}\n| fieldsAdd success = success[] * 100.0\n",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Prometheus scrape success rate",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "coloring": {
              "thresholdRules": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": 80,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": 95,
                  "min": 81,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
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
            "unitsOverrides": [
              {
                "added": 1778510858595,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "success",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "19": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Time taken to complete a Prometheus scrape, p95 across targets within each scrape job. Values approaching scrape_interval indicate the scraper is falling behind.\nIf this trend persists, check target responsiveness and scraper resource saturation (CPU and memory), then consider adjusting scrape_interval or splitting heavy jobs.",
          "query": "// Histogram-percentile across targets per scrape job. Compare against your scrape_interval (default 60s).\ntimeseries p95 = percentile(scrape_duration_seconds, 95, rollup:avg), by:{service.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(service.name, array($ScrapeJobs))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Scrape duration p95 by job",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858595,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "p95",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "2": {
          "content": "## Overview\n\n[Scraper Collectors](/ui/apps/dynatrace.dashboards/dashboard/dynatrace.opentelemetry.otelcol-prometheusScraping#tileIds=17) · [Gateway Collectors](/ui/apps/dynatrace.dashboards/dashboard/dynatrace.opentelemetry.otelcol-prometheusScraping#tileIds=26) · [Target Allocators](/ui/apps/dynatrace.dashboards/dashboard/dynatrace.opentelemetry.otelcol-prometheusScraping#tileIds=9) · [Resource Usage](/ui/apps/dynatrace.dashboards/dashboard/dynatrace.opentelemetry.otelcol-prometheusScraping#tileIds=34) · [Autoscaling](/ui/apps/dynatrace.dashboards/dashboard/dynatrace.opentelemetry.otelcol-prometheusScraping#tileIds=41)",
          "type": "markdown"
        },
        "20": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Samples per minute (post relabel filtering) ingested by each scrape job. Sudden drops correlate with target restarts or relabel-rule rejections; rises indicate cardinality growth.\nIf samples rise unexpectedly, inspect the exporter for new labels driving cardinality growth.",
          "query": "// rate: 1m makes the value samples-per-minute so it's stable across timeframes (raw counter is per bucket).\ntimeseries samples = sum(scrape_samples_post_metric_relabeling, rate: 1m), by:{service.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(service.name, array($ScrapeJobs))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Samples scraped per job (rate)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778672018977,
                "baseUnit": "countPerMinute",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "identifier": "samples",
                "suffix": "",
                "unitCategory": "throughput"
              }
            ]
          }
        },
        "21": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "How many gateway endpoints each scraper's load-balancing exporter currently sees. Should equal the running gateway replica count. Drops indicate gateway pods going down or DNS resolution lag.\nIf backends drop below gateway replica count: gateway pod gone or DNS resolution lagging. Cross-check Replica count by workload and LB exporter: resolutions \u0026 backend updates.",
          "query": "// otelcol_loadbalancer_num_backends. Compare against gateway replica count tile above.\ntimeseries backends = avg(otelcol_loadbalancer_num_backends), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Scrapers))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Load balancer: backends per scraper pod",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858595,
                "baseUnit": "count",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "backends",
                "suffix": "",
                "unitCategory": "count"
              }
            ]
          }
        },
        "22": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Rate of failed export attempts from scrapers to gateway backends, aggregated across all scraper pods. Computed as total outcomes minus successful outcomes, so a flat zero line is shown when no failures occur. Sustained non-zero values mean data loss in flight. Cross-check with `Gateways: refused / failed datapoints` and `Load balancer: backends per scraper pod` to localize.\nIf you see sustained failures: scrapers cannot reach a gateway pod. Cross-check Load balancer: backends per scraper pod, Gateways: refused / failed datapoints, and node-to-node network.",
          "query": "// Compute failures as total - successes. This guarantees a zero line even when no failure series exists.\ntimeseries total = sum(otelcol_loadbalancer_backend_outcome, rate: 1m), by:{success}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Scrapers))\n}\n| join [\n    timeseries ok = sum(otelcol_loadbalancer_backend_outcome, rate: 1m), by:{success}, filter:{\n      in(k8s.cluster.name, array($Cluster))\n      and in(k8s.namespace.name, array($Namespace))\n      and in(k8s.workload.name, array($Scrapers))\n      and success == \"true\"\n    }\n], on: {timeframe}, fields: {ok}\n| fieldsAdd val = total[] - ok[]\n| fieldsRemove total, ok",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "LB exporter: failed export outcomes",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "autoSelectVisualization": false,
            "coloring": {
              "colorRules": [],
              "thresholdRules": []
            },
            "dataMapping": {
              "displayedFields": [
                "success"
              ]
            },
            "table": {
              "columnTypeOverrides": [
                {
                  "disableRemoval": false,
                  "fields": [],
                  "id": 3896711,
                  "value": "text"
                }
              ]
            },
            "unitsOverrides": [
              {
                "added": 1779263268746,
                "baseUnit": "countPerMinute",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "throughput"
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
          "description": "p95 latency for export requests from each scraper to gateway backends. High values indicate gateway processing pressure, head-of-line blocking on the receiving side, or network congestion between tiers.\nIf you see a rising trend: gateway processing pressure or backpressure cascade. Cross-check CPU usage, Gateways: exporter queue size vs capacity, and Gateways: refused / failed datapoints.",
          "query": "// Histogram percentile from the LB exporter, per-scraper.\ntimeseries p95 = percentile(otelcol_loadbalancer_backend_latency_bucket, 95, rollup:avg), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Scrapers))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "LB exporter: backend latency p95",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858596,
                "baseUnit": "millisecond",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "p95",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "25": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Datapoints leaving the scrapers towards gateway pods via the loadbalancing exporter. Compare against `Ingest rate into gateways` (Overview): the scraper-sent rate should approximately equal the gateway-received rate across all pods.\nIf you see drops while LB outcomes are still healthy: either the prom receiver fell behind or upstream targets are emitting fewer samples. Cross-check Samples scraped per job.",
          "query": "// otelcol_exporter_sent_metric_points per scraper pod, only the loadbalancing exporter.\ntimeseries sent = sum(otelcol_exporter_sent_metric_points, rate: 1m), by:{k8s.pod.name, exporter}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Scrapers))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Datapoints exported by scrapers",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858596,
                "baseUnit": "countPerMinute",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "sent",
                "suffix": "",
                "unitCategory": "throughput"
              }
            ]
          }
        },
        "26": {
          "content": "## Gateway Collectors\n\nGateway pods receive OTLP from scrapers, convert cumulative counters to delta, attach Kubernetes metadata, normalize attributes against the Dynatrace semantic dictionary, batch, and forward to Dynatrace. Health here means: incoming volume matches the scraper output, no refused/failed datapoints, k8sattributes resolves pod metadata, and the outbound queue is draining.",
          "type": "markdown"
        },
        "27": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "OTLP datapoints accepted by gateway receivers, per pod. Used to verify that scraper output lands on the gateways and that load is balanced across gateway replicas.\nIf you see uneven distribution across gateway pods: LB exporter routing-key issue, or scrapers preferring specific gateways. Cross-check Load balancer: backends per scraper pod and LB exporter: export outcomes.",
          "query": "// Filtered to receiver==otlp because the gateway pipeline only has the OTLP receiver.\ntimeseries val = sum(otelcol_receiver_accepted_metric_points, rate: 1m), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Gateways))\n  and receiver == \"otlp\"\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Gateways: datapoints received",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858596,
                "baseUnit": "none",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "val",
                "suffix": "",
                "unitCategory": "unspecified"
              }
            ]
          }
        },
        "28": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Datapoints the gateways rejected (refused: receiver-level pushback such as memory_limiter; failed: pipeline error). Non-zero values are data loss and should be alerted on.\nIf refused \u003e 0: memory_limiter triggering on the gateway - increase memory request/limit or scale gateways. If failed \u003e 0: downstream OTLP export failing - inspect gateway logs and downstream endpoint health.",
          "query": "// Two failure modes split out, by pod.\ntimeseries {\n  refused = sum(otelcol_receiver_refused_metric_points, rate: 1m),\n  failed = sum(otelcol_receiver_failed_metric_points, rate: 1m)\n}, by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Gateways))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Gateways: refused / failed datapoints",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "leftYAxisSettings": {
                "max": {
                  "mode": "auto"
                },
                "min": {
                  "mode": "auto"
                }
              }
            },
            "coloring": {
              "thresholdRules": []
            },
            "unitsOverrides": [
              {
                "added": 1778510858596,
                "baseUnit": "countPerMinute",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "refused",
                "suffix": "",
                "unitCategory": "throughput"
              },
              {
                "added": 1778510858596,
                "baseUnit": "countPerMinute",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "failed",
                "suffix": "",
                "unitCategory": "throughput"
              }
            ]
          }
        },
        "3": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Number of distinct Target Allocator pods currently reporting allocator self-metrics. Should match the configured replicaCount in the TA helm release.\nSee the Target Allocators section below for allocation health, target distribution, and latency details.",
          "query": "// Count distinct TA pods reporting opentelemetry_allocator_collectors_discovered in the last 2 minutes.\n// Local 2m window overrides the dashboard timeframe so the value reflects the CURRENT replica count, not pods that existed earlier in the timeframe.\ntimeseries c = count(opentelemetry_allocator_collectors_discovered), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($TargetAllocator))\n}, from: now()-2m\n| filter isNotNull(arrayLast(c))\n| summarize singleValue = countDistinct(k8s.pod.name)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Target Allocator replicas",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none"
            }
          }
        },
        "30": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Number of pods currently tracked by each gateway's k8sattributes processor cache. It should stabilize near the pod count of watched namespaces.\nA flat zero usually indicates RBAC or association misconfiguration; unbounded growth points to excessive Kubernetes API churn or cache health issues.",
          "query": "// otelcol_otelsvc_k8s_pod_table_size: gauge of cached pod metadata entries.\ntimeseries size = avg(otelcol_otelsvc_k8s_pod_table_size), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Gateways))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "k8sattributes: pod cache size (gateways)",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858596,
                "baseUnit": "count",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "size",
                "suffix": "",
                "unitCategory": "count"
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
          "description": "Percentage of exporter queue capacity used, per gateway pod and exporter. Derived from max(queue_size) / max(queue_capacity) * 100. High utilization signals backpressure from the downstream (e.g. Dynatrace ingest) and impending refusals once the receiver memory_limiter triggers.\nIf \u003e= 80%: backpressure from downstream. Cross-check Gateways: datapoints exported and Gateways: refused / failed datapoints.",
          "query": "// Queue utilization as a percentage: (queue_size / capacity) * 100.\ntimeseries {\n  queue = max(otelcol_exporter_queue_size),\n  capacity = max(otelcol_exporter_queue_capacity)\n}, by:{k8s.pod.name, exporter}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Gateways))\n}\n| fieldsAdd utilization = queue[] / capacity[] * 100.0\n| fieldsRemove queue, capacity",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Gateways: exporter queue utilization",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "chartSettings": {
              "leftYAxisSettings": {
                "max": {
                  "mode": "custom",
                  "value": 100
                },
                "min": {
                  "mode": "custom"
                }
              }
            },
            "coloring": {
              "thresholdRules": [
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": 80,
                  "min": null,
                  "mode": "range",
                  "position": "left",
                  "strokeOnly": false
                },
                {
                  "color": {
                    "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                  },
                  "colorMode": "single-color",
                  "label": "",
                  "max": 95,
                  "min": 80,
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
            "unitsOverrides": [
              {
                "added": 1778510858596,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 1,
                "delimiter": false,
                "identifier": "utilization",
                "suffix": "",
                "unitCategory": "percentage"
              }
            ]
          }
        },
        "33": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Datapoints leaving the gateways toward Dynatrace. Compare with `Gateways: datapoints received` to validate end-to-end forwarding.\nIf exported stays below received, investigate exporter queue utilization and downstream export failures to locate backpressure.",
          "query": "// otelcol_exporter_sent_metric_points per gateway pod and exporter.\ntimeseries sent = sum(otelcol_exporter_sent_metric_points, rate: 1m), by:{k8s.pod.name, exporter}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Gateways))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Gateways: datapoints exported",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858596,
                "baseUnit": "countPerMinute",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "sent",
                "suffix": "",
                "unitCategory": "throughput"
              }
            ]
          }
        },
        "34": {
          "content": "## Resource usage — Target Allocator, Scrapers, Gateways\n\nCPU and memory of every pipeline pod. Collectors report `otelcol_process_*` via OTel SDK self-monitoring; the Target Allocator reports `process_*` and `go_*` via its Prometheus default exporter.",
          "type": "markdown"
        },
        "35": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "CPU cores consumed by each scraper pod. 1.0 = one full core busy. Rate-normalized from the underlying CPU-seconds counter.\nIf persistent saturation near the configured limit: increase the CPU request or enable HPA.",
          "query": "timeseries cpu = sum(otelcol_process_cpu_seconds, rate: 1s), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Scrapers))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU usage — Scrapers",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1779258666489,
                "baseUnit": "none",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "identifier": "cpu",
                "suffix": " cores",
                "unitCategory": "Unspecified"
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
          "description": "Resident set size (RAM) of each scraper pod via `otelcol_process_memory_rss`.\nIf you see persistent growth between restarts: leak signal.",
          "query": "timeseries mem = avg(otelcol_process_memory_rss), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Scrapers))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory usage — Scrapers",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778585788560,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "mem",
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
          "description": "Number of distinct scraper pods currently reporting OTel Collector self-metrics. Reflects the current HPA scale.\nSee the Scraper Collectors section below for scrape success rates, LB exporter health, and per-pod throughput.",
          "query": "// Count distinct scraper pods reporting otelcol_process_uptime in the last 2 minutes.\n// Local 2m window overrides the dashboard timeframe so the value reflects the CURRENT HPA replica count, not pods that already scaled down earlier in the timeframe.\ntimeseries c = count(otelcol_process_uptime), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Scrapers))\n}, from: now()-2m\n| filter isNotNull(arrayLast(c))\n| summarize singleValue = countDistinct(k8s.pod.name)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Scraper replicas",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none"
            }
          }
        },
        "41": {
          "content": "## Autoscaling correlation\n\nThese tiles help validate whether the HPA reacts at the right time. Replica count is derived from the cardinality of pods reporting `otelcol_process_uptime` per time bucket (one series per running pod, so the count over time approximates the replica count over time).",
          "type": "markdown"
        },
        "42": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Live replica count per workload, derived from the number of distinct collector pods reporting `otelcol_process_uptime` per time bucket. The absolute value is inflated because each pod reports multiple datapoints per bucket, so use the shape (steps, scale events) as the signal — for the current replica count use the KPI tiles at the top.\nStep changes indicate HPA scale events.",
          "query": "// One data point per pod per scrape; count() per timeslot ≈ replica count if scrape interval is constant.\ntimeseries replicas = count(otelcol_process_uptime), by:{k8s.workload.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and (\n    in(k8s.workload.name, array($Scrapers))\n    or in(k8s.workload.name, array($Gateways))\n  )\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Replica count by workload",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858596,
                "baseUnit": "count",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "replicas",
                "suffix": "",
                "unitCategory": "count"
              }
            ]
          }
        },
        "43": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Aggregate accepted-datapoint rate per workload. Use this to validate whether scale-out is keeping per-pod throughput in a healthy range or whether HPA thresholds need tuning.\nReplica count should scale with the ingestion rate; if they diverge, per-pod throughput is shifting and HPA thresholds need tuning.",
          "query": "// Aggregate throughput per workload. Pair visually with the replica count tile above.\ntimeseries ingest = sum(otelcol_receiver_accepted_metric_points, rate: 1m), by:{k8s.workload.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and (\n    in(k8s.workload.name, array($Scrapers))\n    or in(k8s.workload.name, array($Gateways))\n  )\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingestion rate by workload",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778510858596,
                "baseUnit": "countPerMinute",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "ingest",
                "suffix": "",
                "unitCategory": "throughput"
              }
            ]
          }
        },
        "45": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Per-processor ratio of outgoing-to-incoming datapoints (rate-normalized), shown as a percentage. 100% = full pass-through (no loss at that processor); \u003c100% = the processor dropped datapoints (filter rules, OTTR rejections, memory_limiter refusals, batch errors).\nIf \u003c 100% for a non-filter processor: drop happening. Cross-check Gateways: refused / failed datapoints.",
          "query": "// Element-wise array division per processor, scaled to 0..100 to match the percent unit. 100 = no loss.\ntimeseries {\n  incoming = sum(otelcol_processor_incoming_items, rate: 1m),\n  outgoing = sum(otelcol_processor_outgoing_items, rate: 1m)\n}, by:{processor}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Gateways))\n}\n| fieldsAdd ratio = outgoing[] / incoming[] * 100.0\n| fieldsRemove incoming, outgoing",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Gateways: throughput retention per processor",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "coloring": {
              "thresholdRules": []
            },
            "unitsOverrides": [
              {
                "added": 1779190379604,
                "baseUnit": "percent",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "ratio",
                "suffix": "",
                "unitCategory": "percentage"
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
          "description": "Latency of the TA HTTP endpoints that scrapers poll for assignments. Liveness and readiness probes (`/livez`, `/readyz`) are excluded to keep the signal meaningful.\nSustained p95 increases on `/jobs/:job_id/targets` can delay assignment propagation; check TA CPU saturation and request backlog.",
          "query": "// Scrapers call GET /jobs/\u003cjob\u003e/targets every \u003cinterval\u003e seconds — this measures TA-side response time.\n// Probes (/livez, /readyz) are excluded — they're fast no-op kubelet probes that would dominate the chart with flat ~0s lines.\ntimeseries latency = avg(opentelemetry_allocator_http_duration_seconds, rollup:avg),\nby:{path},\nfilter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($TargetAllocator))\n  and not in(path, array(\"/livez\", \"/readyz\", \"/metrics\"))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "TA HTTP API latency",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "legend": {
              "ratio": 23
            },
            "unitsOverrides": [
              {
                "added": 1779269459287,
                "baseUnit": "second",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "displayUnit": null,
                "identifier": "latency",
                "suffix": "",
                "unitCategory": "time"
              }
            ]
          }
        },
        "47": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "CPU cores consumed by each gateway pod. 1.0 = one full core busy. Rate-normalized from the underlying CPU-seconds counter.\nIf persistent saturation near the configured limit: increase the CPU request or enable HPA.",
          "query": "timeseries cpu = sum(otelcol_process_cpu_seconds, rate: 1s), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Gateways))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU usage — Gateways",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1779258666489,
                "baseUnit": "none",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "identifier": "cpu",
                "suffix": " cores",
                "unitCategory": "Unspecified"
              }
            ]
          }
        },
        "48": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Resident set size (RAM) of each gateway pod via `otelcol_process_memory_rss`.\nIf you see persistent growth between restarts: leak signal.",
          "query": "timeseries mem = avg(otelcol_process_memory_rss), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Gateways))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory usage — Gateways",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778585788560,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "mem",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "49": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "CPU cores consumed by each Target Allocator pod. Rate-normalized from `process_cpu_seconds_total` (Prometheus default exporter).\nIf persistent saturation: increase CPU request.",
          "query": "timeseries cpu = sum(process_cpu_seconds_total, rate: 1s), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($TargetAllocator))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "CPU usage — Target Allocator",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1779258666489,
                "baseUnit": "none",
                "cascade": null,
                "decimals": 2,
                "delimiter": false,
                "identifier": "cpu",
                "suffix": " cores",
                "unitCategory": "Unspecified"
              }
            ]
          }
        },
        "5": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Number of distinct gateway pods currently reporting OTel Collector self-metrics. Reflects the current HPA scale.\nSee the Gateway Collectors section below for received/exported datapoints, processor health, and queue status.",
          "query": "// Count distinct gateway pods reporting otelcol_process_uptime in the last 2 minutes.\n// Local 2m window overrides the dashboard timeframe so the value reflects the CURRENT HPA replica count, not pods that already scaled down earlier in the timeframe.\ntimeseries c = count(otelcol_process_uptime), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Gateways))\n}, from: now()-2m\n| filter isNotNull(arrayLast(c))\n| summarize singleValue = countDistinct(k8s.pod.name)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Gateway replicas",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none"
            }
          }
        },
        "50": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Resident set size (RAM) of each Target Allocator pod via `process_resident_memory_bytes`.\nIf you see persistent growth between restarts: leak signal.",
          "query": "timeseries mem = avg(process_resident_memory_bytes), by:{k8s.pod.name}, filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($TargetAllocator))\n}",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Memory usage — Target Allocator",
          "type": "data",
          "visualization": "lineChart",
          "visualizationSettings": {
            "unitsOverrides": [
              {
                "added": 1778585788560,
                "baseUnit": "byte",
                "cascade": null,
                "decimals": null,
                "delimiter": false,
                "identifier": "mem",
                "suffix": "",
                "unitCategory": "data"
              }
            ]
          }
        },
        "51": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Datapoints per minute leaving all scraper pods, summed across every configured exporter and across the fleet. In the standard setup scrapers only run the load-balancing exporter, so this equals the scraper-to-gateway rate; if you add other exporters, this value includes them too. Read alongside Ingest rate into gateways: when the two are roughly equal, the scraper-to-gateway hop is healthy and not dropping data.\nA small difference between the two is expected: scrape and export intervals are not perfectly aligned, so the two tiles sample slightly different moments. A sustained, growing gap is the signal worth investigating.\nSee the Scraper Collectors section below for per-pod export detail.",
          "query": "// otelcol_exporter_sent_metric_points summed across all scraper exporters (no exporter filter).\n// In the standard setup scrapers only run the loadbalancing exporter, so this is the scraper-to-gateway rate.\ntimeseries sent = sum(otelcol_exporter_sent_metric_points, rate: 1m), filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Scrapers))\n}, from: -2m, to: -1m\n| fieldsAdd singleValue = arrayLast(sent)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Scraper export rate (datapoints/min)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1778672018976,
                "baseUnit": "countPerMinute",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "identifier": "singleValue",
                "suffix": "",
                "unitCategory": "throughput"
              }
            ]
          }
        },
        "6": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Number of scraper collectors the Target Allocator currently sees via its collector_selector; should equal the running scraper replica count. Sourced from the latest value of `opentelemetry_allocator_collectors_discovered`.\nSee the Target Allocators section below for the Collectors discovered vs allocatable chart.",
          "query": "// Gauge: collectors visible to the TA right now. Should equal the running scraper replica count.\ntimeseries v = avg(opentelemetry_allocator_collectors_discovered), filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($TargetAllocator))\n}\n| fieldsAdd singleValue = arrayLast(v)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Collectors discovered by TA",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none"
            }
          }
        },
        "7": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Scrape targets the Target Allocator is currently distributing across scrapers, after relabel filtering — the actual scraping workload. Sourced from the latest value of `opentelemetry_allocator_targets_remaining`; the pre-relabel `opentelemetry_allocator_targets` count is intentionally not used here.\nSee the Target Allocators section below for the Scrape targets and Scrape targets per collector charts.",
          "query": "// Gauge: post-relabel scrape targets the TA is distributing.\ntimeseries v = avg(opentelemetry_allocator_targets_remaining), filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($TargetAllocator))\n}\n| fieldsAdd singleValue = arrayLast(v)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Active scrape targets",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none"
            }
          }
        },
        "8": {
          "davis": {
            "davisVisualization": {
              "isAvailable": true
            }
          },
          "description": "Datapoints per minute accepted by all gateway OTLP receivers combined. This is the end-to-end throughput coming out of the scraping pipeline. Rate-normalized so the value stays comparable across timeframes.\nA small difference versus Scraper export rate is expected: scrape and export intervals are not perfectly aligned, so the two tiles sample slightly different moments. A sustained, growing gap is the signal worth investigating.\nSee the Gateway Collectors section below for per-pod received/exported datapoints and queue status.",
          "query": "// Throughput across all gateway pods, rate-normalized via rate: 1m so the singleValue is interpretable as datapoints/min.\n// receiver filter pins to otlp since the gateway pipeline only has that receiver.\ntimeseries v = sum(otelcol_receiver_accepted_metric_points, rate: 1m), filter:{\n  in(k8s.cluster.name, array($Cluster))\n  and in(k8s.namespace.name, array($Namespace))\n  and in(k8s.workload.name, array($Gateways))\n  and receiver == \"otlp\"\n}, from: -2m, to: -1m\n| fieldsAdd singleValue = arrayLast(v)",
          "querySettings": {
            "defaultSamplingRatio": 10,
            "defaultScanLimitGbytes": 500,
            "enableSampling": false,
            "maxResultMegaBytes": 1,
            "maxResultRecords": 1000
          },
          "title": "Ingest rate into gateways (datapoints/min)",
          "type": "data",
          "visualization": "singleValue",
          "visualizationSettings": {
            "singleValue": {
              "labelMode": "none",
              "sparklineSettings": {
                "isVisible": false
              },
              "trend": {
                "isVisible": false
              }
            },
            "unitsOverrides": [
              {
                "added": 1778672018976,
                "baseUnit": "countPerMinute",
                "cascade": null,
                "decimals": 0,
                "delimiter": false,
                "identifier": "singleValue",
                "suffix": "",
                "unitCategory": "throughput"
              }
            ]
          }
        },
        "9": {
          "content": "## Target Allocators\n\nThe Target Allocator discovers Prometheus scrape targets (via ServiceMonitors, PodMonitors, ScrapeConfigs, or static config), computes a target-to-collector assignment, and serves it over HTTP to each scraper. These tiles surface allocation health, fairness across collectors, and allocation latency.",
          "type": "markdown"
        }
      },
      "variables": [
        {
          "editable": true,
          "input": "// Discover Kubernetes clusters that report OpenTelemetry Collector self-monitoring metrics.\ntimeseries c = count(otelcol_process_uptime), by:{k8s.cluster.name}\n| summarize clusters = collectDistinct(k8s.cluster.name)\n| fieldsAdd clusters = arrayRemoveNulls(clusters)\n| fieldsAdd clusters = if(isNull(clusters) or arraySize(clusters) == 0, array(\"-\"), else: clusters)\n| fields f = clusters",
          "key": "Cluster",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// Discover namespaces that contain OpenTelemetry Collector pods (scraper or gateway tier).\ntimeseries c = count(otelcol_process_uptime), by:{k8s.namespace.name, k8s.cluster.name}\n| filter in(k8s.cluster.name, array($Cluster))\n| summarize ns = collectDistinct(k8s.namespace.name)\n| fieldsAdd ns = arrayRemoveNulls(ns)\n| fieldsAdd ns = if(isNull(ns) or arraySize(ns) == 0, array(\"-\"), else: ns)\n| fields f = ns",
          "key": "Namespace",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// Discover Target Allocator workloads (pods that emit opentelemetry_allocator_* metrics).\ntimeseries c = count(opentelemetry_allocator_collectors_discovered), by:{k8s.workload.name, k8s.cluster.name, k8s.namespace.name}\n| filter in(k8s.cluster.name, array($Cluster)) and in(k8s.namespace.name, array($Namespace))\n| summarize w = collectDistinct(k8s.workload.name)\n| fieldsAdd w = arrayRemoveNulls(w)\n| fieldsAdd w = if(isNull(w) or arraySize(w) == 0, array(\"-\"), else: w)\n| fields f = w",
          "key": "TargetAllocator",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// Discover Tier 1 scraper workloads (collectors that run a load-balancing exporter).\ntimeseries c = count(otelcol_loadbalancer_num_backends), by:{k8s.workload.name, k8s.cluster.name, k8s.namespace.name}\n| filter in(k8s.cluster.name, array($Cluster)) and in(k8s.namespace.name, array($Namespace))\n| summarize w = collectDistinct(k8s.workload.name)\n| fieldsAdd w = arrayRemoveNulls(w)\n| fieldsAdd w = if(isNull(w) or arraySize(w) == 0, array(\"-\"), else: w)\n| fields f = w",
          "key": "Scrapers",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// Discover Tier 2 gateway workloads (collectors that run the k8sattributes processor).\ntimeseries c = count(otelcol_otelsvc_k8s_pod_table_size), by:{k8s.workload.name, k8s.cluster.name, k8s.namespace.name}\n| filter in(k8s.cluster.name, array($Cluster)) and in(k8s.namespace.name, array($Namespace))\n| summarize w = collectDistinct(k8s.workload.name)\n| fieldsAdd w = arrayRemoveNulls(w)\n| fieldsAdd w = if(isNull(w) or arraySize(w) == 0, array(\"-\"), else: w)\n| fields f = w",
          "key": "Gateways",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        },
        {
          "editable": true,
          "input": "// Discover Prometheus scrape job names (carried as service.name on scrape_* and up metrics).\ntimeseries c = count(up), by:{service.name, k8s.cluster.name}\n| filter in(k8s.cluster.name, array($Cluster))\n| summarize j = collectDistinct(service.name)\n| fieldsAdd j = arrayRemoveNulls(j)\n| fieldsAdd j = if(isNull(j) or arraySize(j) == 0, array(\"-\"), else: j)\n| fields f = j",
          "key": "ScrapeJobs",
          "multiple": true,
          "type": "query",
          "version": 2,
          "visible": true
        }
      ],
      "version": 21
    })
  custom_id = "dynatrace.opentelemetry.otelcol-prometheusScraping"
  # private = false
}
