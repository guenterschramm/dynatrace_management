resource "dynatrace_document" "Google_Core_Web_Vitals_analysis" {
  name      = "Google Core Web Vitals analysis"
  type      = "notebook"
  content   = jsonencode({
      "defaultSegments": [],
      "defaultTimeframe": {
        "from": "now()-2h",
        "to": "now()"
      },
      "sections": [
        {
          "id": "97eae716-f594-4d8a-90ea-bcc00d1c0db4",
          "markdown": "### Core Web Vitals Analysis ",
          "type": "markdown"
        },
        {
          "id": "b0f3474f-3d0f-44f7-8b77-41650f8d4005",
          "markdown": "#### What is this Notebook for?\n* This notebook serves as an extension of the Experience Vitals application and enables you to investigate the [Core Web Vitals (CWV) metrics]((https://www.dynatrace.com/knowledge-base/core-web-vitals/)) in more detail, diving directly into Largest Contentful Paint (LCP), Interaction to Next Paint (INP), and Content Layout Shift (CLS). \n* RUM data in Grail offers more granular details on Core Web Vitals compared to the classic platform. For example, we can see what resources trigger LCP, specific interactions and associated INP times on any page, and more. \n* Use this notebook to look at:\n  * trending data after a release targeting performance optimization\n  * identify future improvement opportunities for Core Web Vitals \n  * and see what components of specific pages lead to poor Core Web Vitals identified at the application-level with the Experience Vitals app\n\n#### How to Use this Notebook\nBy default each query/view in this Notebook looks at data across all of your applications, however they can be filtered to a single application by adding the Application ID. \n  * To limit to a single application, uncomment the relevant line in the query cells below and replace the 'Application-ID' place holder with your Applications ID (ie: APPLICATION-1234ABCDEF1) before executing the query \n  * If you don't see data, [start monitoring your frontends](/ui/openApp/dynatrace.experience.vitals?pageToken=add-frontend)\n  * For more details on how Dynatrace Notebooks work, see the [Dynatrace Documentation on Notebooks](https://docs.dynatrace.com/docs/analyze-explore-automate/dashboards-and-notebooks/notebooks).",
          "type": "markdown"
        },
        {
          "id": "c4e3438d-8933-4879-aad2-c917ac1c243f",
          "markdown": "##### Application IDs\n* The query below will list all of your applications and their associated IDs which can be used further down to filter based on application.\n* **To copy the Application ID simply click the cell in the table you want to copy and select 'Copy Value'**.",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 142,
          "id": "5151a253-30a3-4e54-95d4-816e48c7e08f",
          "previousFilterSegments": [],
          "state": {
            "davis": {
              "davisVisualization": {
                "isAvailable": true
              },
              "includeLogs": true
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "fetch dt.entity.application\n| fields Application_Name=entity.name, Application_ID=id"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "result": {
              "code": 200,
              "dateTime": "2025-06-27T16:50:54.982Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "fetch dt.entity.application\n| fields Application_Name=entity.name, Application_ID=id"
              },
              "notifications": [],
              "querySettings": {
                "defaultSamplingRatio": 10,
                "defaultScanLimitGbytes": 500,
                "enableSampling": false,
                "maxResultMegaBytes": 1,
                "maxResultRecords": 1000
              },
              "value": {
                "metadata": {
                  "grail": {
                    "analysisTimeframe": {
                      "end": "2025-06-27T16:50:54.328000000Z",
                      "start": "2025-06-27T14:50:54.328000000Z"
                    },
                    "canonicalQuery": "fetch dt.entity.application\n| fields Application_Name = entity.name, Application_ID = id",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 21,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "fetch dt.entity.application\n| fields Application_Name=entity.name, Application_ID=id",
                    "queryId": "bca70a67-4680-406b-8f54-94de9a2db733",
                    "sampled": false,
                    "scannedBytes": 0,
                    "scannedDataPoints": 0,
                    "scannedRecords": 10,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "Application_ID": "APPLICATION-29BB673E2E5A2B1F",
                    "Application_Name": "3rd gen agentless test app"
                  },
                  {
                    "Application_ID": "APPLICATION-C93B8002996906CD",
                    "Application_Name": "easytravel.lab.dynatrace.org"
                  },
                  {
                    "Application_ID": "APPLICATION-52E08A65AC78D4FF",
                    "Application_Name": "easytravel-bf.lab.dynatrace.org"
                  },
                  {
                    "Application_ID": "APPLICATION-EA7C4B59F27D43EB",
                    "Application_Name": "My web application"
                  },
                  {
                    "Application_ID": "APPLICATION-F9F2F582B671D3F0",
                    "Application_Name": "1 App"
                  },
                  {
                    "Application_ID": "APPLICATION-DBE6F232D8DFE84C",
                    "Application_Name": "SelfMonTest"
                  },
                  {
                    "Application_ID": "APPLICATION-2316E614DFD23199",
                    "Application_Name": "kpi.ruxit0001.com"
                  },
                  {
                    "Application_ID": "APPLICATION-8E41C8C247910758",
                    "Application_Name": "easyTravel AMP"
                  },
                  {
                    "Application_ID": "APPLICATION-EB407AE6E7DE4E36",
                    "Application_Name": "account-dev.dynatracelabs.com"
                  },
                  {
                    "Application_ID": "APPLICATION-007CAB1ABEACDFE1",
                    "Application_Name": "easytravel-ang.lab.dynatrace.org"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      9
                    ],
                    "mappings": {
                      "Application_ID": {
                        "type": "string"
                      },
                      "Application_Name": {
                        "type": "string"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {
                "categoricalBarChartSettings": {
                  "categoryAxisLabel": "Application_Name,Application_ID",
                  "categoryAxisTickLayout": "horizontal",
                  "colorPaletteMode": "multi-color",
                  "groupMode": "stacked",
                  "layout": "horizontal",
                  "scale": "absolute",
                  "tooltipVariant": "single",
                  "valueAxisLabel": "",
                  "valueAxisScale": "linear"
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
                "legend": {
                  "hidden": true
                },
                "pointsDisplay": "auto",
                "truncationMode": "middle",
                "valueRepresentation": "absolute",
                "xAxisScaling": "analyzedTimeframe"
              },
              "dataMapping": {
                "dimension": "Application_Name",
                "displayedFields": [
                  "dt.rum.application.id"
                ],
                "value": "countDistinct(dt.rum.application.id)"
              },
              "histogram": {
                "colorPalette": "categorical",
                "dataMappings": [],
                "displayedFields": [
                  "Application_ID",
                  "Application_Name"
                ],
                "legend": "auto",
                "truncationMode": "middle",
                "variant": "single",
                "yAxis": {
                  "isLabelVisible": true,
                  "label": "Frequency",
                  "scale": "linear"
                }
              },
              "honeycomb": {
                "colorMode": "color-palette",
                "colorPalette": "categorical",
                "dataMappings": {
                  "value": "Application_Name"
                },
                "displayedFields": [
                  "Application_Name",
                  "Application_ID"
                ],
                "labels": {
                  "showLabels": false
                },
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
                "label": "countDistinct(dt.rum.application.id)",
                "showLabel": false
              },
              "singleValue": {
                "alignment": "center",
                "autoscale": true,
                "colorThresholdTarget": "value",
                "isIconVisible": false,
                "label": "dt.rum.application.id",
                "prefixIcon": "",
                "recordField": "dt.rum.application.id",
                "showLabel": true,
                "trend": {
                  "isVisible": true,
                  "trendType": "auto"
                }
              },
              "table": {
                "columnTypeOverrides": [],
                "columnWidths": {},
                "enableSparklines": false,
                "firstVisibleRowIndex": 0,
                "hiddenColumns": [
                  [
                    "countDistinct(dt.rum.application.id)"
                  ]
                ],
                "lineWrapIds": [],
                "linewrapEnabled": false,
                "monospacedFontColumns": [],
                "monospacedFontEnabled": false,
                "rowDensity": "condensed"
              },
              "thresholds": [],
              "tooltip": {
                "showCustomFields": false
              },
              "valueBoundaries": {
                "max": "auto",
                "min": "auto"
              }
            }
          },
          "type": "dql"
        },
        {
          "id": "2bc921ca-ea05-4616-939b-7dd0888816f4",
          "markdown": "#### Largest Contentful Paint (LCP)\n---",
          "type": "markdown"
        },
        {
          "id": "9495cc1c-a57d-4c2b-8f82-94dab64ffe0e",
          "markdown": "##### LCP Timeseries\n* The cell below creates a time-series graph of the 75th percentile for LCP across all pages combined over the selected time frame as well as an average value in milliseconds from that timeseries.\n* This view is helpful to understand any significant changes in LCP over the given time frame.\n* If you want to filter to a specific application, uncomment line 3 (ie. remove the ‘//‘) and add your Application ID.",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "fecf3bc3-aad9-4cb2-b586-a3809151af3b",
          "previousFilterSegments": [],
          "showInput": true,
          "showTitle": false,
          "state": {
            "davis": {
              "componentState": {
                "analyzerHints": {
                  "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer": {
                    "unit": {
                      "baseUnit": "one",
                      "unitCategory": "amount"
                    }
                  }
                },
                "inputData": {
                  "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer": {
                    "alertCondition": "ABOVE",
                    "alertOnMissingData": false,
                    "dealertingSamples": 3,
                    "generalParameters": {
                      "logVerbosity": "INFO",
                      "resolveDimensionalQueryData": true,
                      "timeframe": {
                        "endTime": "2025-06-27T16:51:09.432Z",
                        "startTime": "2025-06-27T14:51:09.432Z"
                      }
                    },
                    "query": "timeseries LCP = percentile(dt.frontend.web.page.largest_contentful_paint, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| fieldsAdd LCP_average_value = arrayAvg(LCP) //this value is in milliseconds ",
                    "slidingWindow": 5,
                    "threshold": 4000,
                    "violatingSamples": 3
                  }
                },
                "lastExecution": {
                  "analyzerName": "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer",
                  "inputData": {
                    "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer": {
                      "alertCondition": "ABOVE",
                      "alertOnMissingData": false,
                      "dealertingSamples": 3,
                      "generalParameters": {
                        "logVerbosity": "INFO",
                        "resolveDimensionalQueryData": true,
                        "timeframe": {
                          "endTime": "2025-06-27T16:51:09.432Z",
                          "startTime": "2025-06-27T14:51:09.432Z"
                        }
                      },
                      "query": "timeseries LCP = percentile(dt.frontend.web.page.largest_contentful_paint, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| fieldsAdd LCP_average_value = arrayAvg(LCP) //this value is in milliseconds ",
                      "slidingWindow": 5,
                      "threshold": 4000,
                      "violatingSamples": 3
                    }
                  }
                },
                "resultState": {
                  "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer": {
                    "executionTime": "2025-06-27T16:51:09.519Z",
                    "loadingState": "success",
                    "result": {
                      "result": {
                        "data": [],
                        "executionStatus": "COMPLETED",
                        "input": {
                          "alertCondition": "ABOVE",
                          "alertOnMissingData": false,
                          "dealertingSamples": 3,
                          "generalParameters": {
                            "logVerbosity": "INFO",
                            "resolveDimensionalQueryData": true,
                            "timeframe": {
                              "endTime": "2025-06-27T16:51:09.432Z",
                              "startTime": "2025-06-27T14:51:09.432Z"
                            }
                          },
                          "query": "timeseries LCP = percentile(dt.frontend.web.page.largest_contentful_paint, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| fieldsAdd LCP_average_value = arrayAvg(LCP) //this value is in milliseconds ",
                          "slidingWindow": 5,
                          "threshold": 4000,
                          "violatingSamples": 3
                        },
                        "output": [
                          {
                            "analysisStatus": "SUCCESS",
                            "potentialAlerts": 0,
                            "resultTimeseries": {
                              "metadata": {
                                "metrics": [
                                  {
                                    "description": "The LCP value of the page visit",
                                    "displayName": "Frontend Largest Contentful Paint (LCP)",
                                    "fieldName": "LCP",
                                    "metric.key": "dt.frontend.web.page.largest_contentful_paint",
                                    "unit": "ms"
                                  }
                                ]
                              },
                              "records": [
                                {
                                  "LCP": [
                                    349.5269045047658,
                                    221.19491576549922,
                                    348.53100850102715,
                                    587.8318420655692,
                                    535.811057119588,
                                    708.7280919833481,
                                    571.3960372546138,
                                    239.94973745961286,
                                    399.3650579687107,
                                    554.4066117031288,
                                    445.9148246593616,
                                    311.17631066575086,
                                    1731.4182593302646,
                                    2022,
                                    755.9644203035022,
                                    305.2395260523037,
                                    360.11271327306224,
                                    811.3465283731158,
                                    790,
                                    341.12919361875026,
                                    800.2478899597324,
                                    582.1645460240909,
                                    1480.212330656028,
                                    986.3998913963595,
                                    297.58563754980366,
                                    465.4776703971662,
                                    466.1985323741192,
                                    377.9822101517516,
                                    460.2074953705367,
                                    393.7094077117081,
                                    196,
                                    262.6086030287602,
                                    1480.212330656028,
                                    503.0207889473484,
                                    1097.0961200769225,
                                    195.78471853762153,
                                    null,
                                    null,
                                    492.8278142046977,
                                    421.41224479445066,
                                    422.01213396787733,
                                    null,
                                    348.481889381486,
                                    1046.668176602822,
                                    404.9978304362101,
                                    2002.267487725125,
                                    496.2590759874354,
                                    513.3496465022496,
                                    670.4925324561368,
                                    553.1128817708563,
                                    335.0120926167763,
                                    455.567558673435,
                                    217.174954018634,
                                    235.3718507101261,
                                    474,
                                    510.0231351662122,
                                    503.4143212590734,
                                    391.7802026219324,
                                    441.04393647050046,
                                    582.1604828383201,
                                    1349.3663857378301,
                                    388.2673356813297,
                                    365.8692898230886,
                                    331.765882170823,
                                    511.9163200077344,
                                    242.85142338509235,
                                    447.29756926203004,
                                    317.0377694373233,
                                    578.2799826235293,
                                    307.0792569167029,
                                    263.48286474163103,
                                    419.9238416668321,
                                    384.4798124884093,
                                    545.7744656656189,
                                    402.12044842370693,
                                    136.6260169659297,
                                    502.2558222809581,
                                    324.95326294073163,
                                    356.15381648083405,
                                    1462.338704346701,
                                    903,
                                    450.2713235891513,
                                    416.64778905703525,
                                    336.4627909907445,
                                    311.17631066575086,
                                    363.7997926523461,
                                    305.2395260523037,
                                    398.30062183575143,
                                    460.57061975472544,
                                    2834.9123679333848,
                                    460.85124210355036,
                                    364.51438883253024,
                                    290.72017360550257,
                                    2287.8528886157205,
                                    2359.171037531335,
                                    807.0914962834318,
                                    1481.055612068496,
                                    293.09784772072976,
                                    2245.371684344486,
                                    null,
                                    391.41850441762756,
                                    1046.668176602822,
                                    200.06197248993362,
                                    306.011035538602,
                                    507.3762275397223,
                                    1878.572993022176,
                                    640.9930901194798,
                                    529.839692246658,
                                    279.12435272298876,
                                    931.3143211749757,
                                    408.9056971375367,
                                    215.83693875775194,
                                    329.446567952157,
                                    200.06197248993362,
                                    298.64309870402906,
                                    860.2799563032952,
                                    759,
                                    326.6664349513742,
                                    442.38983153099787,
                                    null,
                                    null
                                  ],
                                  "LCP_average_value": 621.860348782871,
                                  "interval": "60000000000",
                                  "timeframe": {
                                    "end": "2025-06-27T16:52Z",
                                    "start": "2025-06-27T14:51Z"
                                  }
                                }
                              ],
                              "types": [
                                {
                                  "indexRange": [
                                    0,
                                    0
                                  ],
                                  "mappings": {
                                    "LCP": {
                                      "type": "array",
                                      "types": [
                                        {
                                          "indexRange": [
                                            0,
                                            120
                                          ],
                                          "mappings": {
                                            "element": {
                                              "type": "double"
                                            }
                                          }
                                        }
                                      ]
                                    },
                                    "LCP_average_value": {
                                      "type": "double"
                                    },
                                    "interval": {
                                      "type": "duration"
                                    },
                                    "timeframe": {
                                      "type": "timeframe"
                                    }
                                  }
                                }
                              ]
                            },
                            "thresholds": [
                              {
                                "data": [
                                  {
                                    "max": 4000,
                                    "min": "-Infinity"
                                  }
                                ],
                                "label": "Threshold",
                                "strokeOnly": false,
                                "thresholdVariant": "INFO"
                              }
                            ],
                            "timeseriesAnnotations": []
                          }
                        ],
                        "resultId": "f273dbfd53098734",
                        "resultStatus": "SUCCESSFUL"
                      }
                    }
                  }
                },
                "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
              },
              "davisVisualization": {
                "isAvailable": true,
                "selectedOutputs": [
                  "610462215"
                ]
              },
              "enabled": true,
              "includeLogs": true,
              "result": {
                "executionTime": "2025-06-27T16:51:09.519Z",
                "loadingState": "success",
                "result": {
                  "result": {
                    "data": [],
                    "executionStatus": "COMPLETED",
                    "input": {
                      "alertCondition": "ABOVE",
                      "alertOnMissingData": false,
                      "dealertingSamples": 3,
                      "generalParameters": {
                        "logVerbosity": "INFO",
                        "resolveDimensionalQueryData": true,
                        "timeframe": {
                          "endTime": "2025-06-27T16:51:09.432Z",
                          "startTime": "2025-06-27T14:51:09.432Z"
                        }
                      },
                      "query": "timeseries LCP = percentile(dt.frontend.web.page.largest_contentful_paint, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| fieldsAdd LCP_average_value = arrayAvg(LCP) //this value is in milliseconds ",
                      "slidingWindow": 5,
                      "threshold": 4000,
                      "violatingSamples": 3
                    },
                    "output": [
                      {
                        "analysisStatus": "SUCCESS",
                        "potentialAlerts": 0,
                        "resultTimeseries": {
                          "metadata": {
                            "metrics": [
                              {
                                "description": "The LCP value of the page visit",
                                "displayName": "Frontend Largest Contentful Paint (LCP)",
                                "fieldName": "LCP",
                                "metric.key": "dt.frontend.web.page.largest_contentful_paint",
                                "unit": "ms"
                              }
                            ]
                          },
                          "records": [
                            {
                              "LCP": [
                                349.5269045047658,
                                221.19491576549922,
                                348.53100850102715,
                                587.8318420655692,
                                535.811057119588,
                                708.7280919833481,
                                571.3960372546138,
                                239.94973745961286,
                                399.3650579687107,
                                554.4066117031288,
                                445.9148246593616,
                                311.17631066575086,
                                1731.4182593302646,
                                2022,
                                755.9644203035022,
                                305.2395260523037,
                                360.11271327306224,
                                811.3465283731158,
                                790,
                                341.12919361875026,
                                800.2478899597324,
                                582.1645460240909,
                                1480.212330656028,
                                986.3998913963595,
                                297.58563754980366,
                                465.4776703971662,
                                466.1985323741192,
                                377.9822101517516,
                                460.2074953705367,
                                393.7094077117081,
                                196,
                                262.6086030287602,
                                1480.212330656028,
                                503.0207889473484,
                                1097.0961200769225,
                                195.78471853762153,
                                null,
                                null,
                                492.8278142046977,
                                421.41224479445066,
                                422.01213396787733,
                                null,
                                348.481889381486,
                                1046.668176602822,
                                404.9978304362101,
                                2002.267487725125,
                                496.2590759874354,
                                513.3496465022496,
                                670.4925324561368,
                                553.1128817708563,
                                335.0120926167763,
                                455.567558673435,
                                217.174954018634,
                                235.3718507101261,
                                474,
                                510.0231351662122,
                                503.4143212590734,
                                391.7802026219324,
                                441.04393647050046,
                                582.1604828383201,
                                1349.3663857378301,
                                388.2673356813297,
                                365.8692898230886,
                                331.765882170823,
                                511.9163200077344,
                                242.85142338509235,
                                447.29756926203004,
                                317.0377694373233,
                                578.2799826235293,
                                307.0792569167029,
                                263.48286474163103,
                                419.9238416668321,
                                384.4798124884093,
                                545.7744656656189,
                                402.12044842370693,
                                136.6260169659297,
                                502.2558222809581,
                                324.95326294073163,
                                356.15381648083405,
                                1462.338704346701,
                                903,
                                450.2713235891513,
                                416.64778905703525,
                                336.4627909907445,
                                311.17631066575086,
                                363.7997926523461,
                                305.2395260523037,
                                398.30062183575143,
                                460.57061975472544,
                                2834.9123679333848,
                                460.85124210355036,
                                364.51438883253024,
                                290.72017360550257,
                                2287.8528886157205,
                                2359.171037531335,
                                807.0914962834318,
                                1481.055612068496,
                                293.09784772072976,
                                2245.371684344486,
                                null,
                                391.41850441762756,
                                1046.668176602822,
                                200.06197248993362,
                                306.011035538602,
                                507.3762275397223,
                                1878.572993022176,
                                640.9930901194798,
                                529.839692246658,
                                279.12435272298876,
                                931.3143211749757,
                                408.9056971375367,
                                215.83693875775194,
                                329.446567952157,
                                200.06197248993362,
                                298.64309870402906,
                                860.2799563032952,
                                759,
                                326.6664349513742,
                                442.38983153099787,
                                null,
                                null
                              ],
                              "LCP_average_value": 621.860348782871,
                              "interval": "60000000000",
                              "timeframe": {
                                "end": "2025-06-27T16:52Z",
                                "start": "2025-06-27T14:51Z"
                              }
                            }
                          ],
                          "types": [
                            {
                              "indexRange": [
                                0,
                                0
                              ],
                              "mappings": {
                                "LCP": {
                                  "type": "array",
                                  "types": [
                                    {
                                      "indexRange": [
                                        0,
                                        120
                                      ],
                                      "mappings": {
                                        "element": {
                                          "type": "double"
                                        }
                                      }
                                    }
                                  ]
                                },
                                "LCP_average_value": {
                                  "type": "double"
                                },
                                "interval": {
                                  "type": "duration"
                                },
                                "timeframe": {
                                  "type": "timeframe"
                                }
                              }
                            }
                          ]
                        },
                        "thresholds": [
                          {
                            "data": [
                              {
                                "max": 4000,
                                "min": "-Infinity"
                              }
                            ],
                            "label": "Threshold",
                            "strokeOnly": false,
                            "thresholdVariant": "INFO"
                          }
                        ],
                        "timeseriesAnnotations": []
                      }
                    ],
                    "resultId": "f273dbfd53098734",
                    "resultStatus": "SUCCESSFUL"
                  }
                }
              }
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "timeseries LCP = percentile(dt.frontend.web.page.largest_contentful_paint, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| fieldsAdd LCP_average_value = arrayAvg(LCP) //this value is in milliseconds "
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "state": "success",
            "visualization": "davis",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {
                "categoricalBarChartSettings": {
                  "categoryAxisTickLayout": "horizontal",
                  "colorPaletteMode": "multi-color",
                  "groupMode": "stacked",
                  "layout": "horizontal",
                  "scale": "absolute",
                  "valueAxisScale": "linear"
                },
                "categoryOverrides": {},
                "circleChartSettings": {
                  "groupingThresholdType": "relative",
                  "groupingThresholdValue": 0,
                  "valueType": "relative"
                },
                "colorPalette": "categorical",
                "curve": "linear",
                "gapPolicy": "connect",
                "pointsDisplay": "auto",
                "truncationMode": "middle",
                "valueRepresentation": "absolute"
              },
              "histogram": {
                "colorPalette": "categorical",
                "dataMappings": [],
                "legend": "auto",
                "truncationMode": "middle",
                "variant": "single",
                "yAxis": {
                  "isLabelVisible": true,
                  "label": "Frequency",
                  "scale": "linear"
                }
              },
              "honeycomb": {
                "colorMode": "color-palette",
                "colorPalette": "categorical",
                "dataMappings": {},
                "displayedFields": [],
                "labels": {
                  "showLabels": false
                },
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
                "showLabel": false
              },
              "singleValue": {
                "alignment": "center",
                "autoscale": true,
                "colorThresholdTarget": "value",
                "isIconVisible": false,
                "label": "",
                "prefixIcon": "",
                "showLabel": true
              },
              "table": {
                "columnTypeOverrides": [],
                "columnWidths": {},
                "enableSparklines": false,
                "firstVisibleRowIndex": 0,
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
          "title": "",
          "type": "dql"
        },
        {
          "id": "ff6148bd-7fe8-488b-b23a-51e5f21fb789",
          "markdown": "##### LCP Times per Page and Elements Triggering LCP\n* The cell below queries for the 75th percentile of LCP for the slowest 100 pages, groups by the resource URL and identifies the XPath and Tag Name that LCP time.\n  * CWVs are reported at the page summary event\n  * All colors for LCP values in the table are aligned with [Google's recommendations](https://web.dev/articles/vitals#core-web-vitals)\n* If you want to filter to a specific application, uncomment line 3 (ie. remove the ‘//‘) and add your Application ID.",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "c99bb38d-25df-4aad-8e25-70a18017be89",
          "previousFilterSegments": [],
          "showInput": true,
          "state": {
            "davis": {
              "davisVisualization": {
                "isAvailable": true
              },
              "includeLogs": true
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.largest_contentful_paint)\n| fields page.name, web_vitals.largest_contentful_paint, lcp.url, lcp.ui_element.tag_name, lcp.ui_element.xpath, lcp.status\n| summarize LCP = percentile(web_vitals.largest_contentful_paint, 75), by: {page.name, lcp.url, lcp.ui_element.xpath, lcp.ui_element.tag_name}\n| sort LCP desc\n| limit 100"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 10,
              "maxResultRecords": 100000
            },
            "result": {
              "code": 200,
              "dateTime": "2025-06-27T16:51:32.401Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.largest_contentful_paint)\n| fields page.name, web_vitals.largest_contentful_paint, lcp.url, lcp.ui_element.tag_name, lcp.ui_element.xpath, lcp.status\n| summarize LCP = percentile(web_vitals.largest_contentful_paint, 75), by: {page.name, lcp.url, lcp.ui_element.xpath, lcp.ui_element.tag_name}\n| sort LCP desc\n| limit 100"
              },
              "notifications": [],
              "querySettings": {
                "defaultSamplingRatio": 10,
                "defaultScanLimitGbytes": 500,
                "enableSampling": false,
                "maxResultMegaBytes": 10,
                "maxResultRecords": 100000
              },
              "value": {
                "metadata": {
                  "grail": {
                    "analysisTimeframe": {
                      "end": "2025-06-27T16:51:31.799000000Z",
                      "start": "2025-06-27T14:51:31.799000000Z"
                    },
                    "canonicalQuery": "fetch user.events\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.largest_contentful_paint)\n| fields page.name, web_vitals.largest_contentful_paint, lcp.url, lcp.ui_element.tag_name, lcp.ui_element.xpath, lcp.status\n| summarize by:{page.name, lcp.url, lcp.ui_element.xpath, lcp.ui_element.tag_name}, LCP = percentile(web_vitals.largest_contentful_paint, 75)\n| sort LCP desc\n| limit 100",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 101,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.largest_contentful_paint)\n| fields page.name, web_vitals.largest_contentful_paint, lcp.url, lcp.ui_element.tag_name, lcp.ui_element.xpath, lcp.status\n| summarize LCP = percentile(web_vitals.largest_contentful_paint, 75), by: {page.name, lcp.url, lcp.ui_element.xpath, lcp.ui_element.tag_name}\n| sort LCP desc\n| limit 100",
                    "queryId": "c3d23c2d-57c2-4fd0-aebe-cf5bcdd6c301",
                    "sampled": false,
                    "scannedBytes": 861196049,
                    "scannedDataPoints": 0,
                    "scannedRecords": 736490,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "LCP": "2643987392",
                    "lcp.ui_element.tag_name": "SECTION",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "app-root",
                      "app-dashboard",
                      "app-main-layout",
                      "div",
                      "div",
                      "app-hero",
                      "div",
                      "section"
                    ],
                    "lcp.url": "https://easytravel-ang.lab.dynatrace.org/assets/imgs/hero-bg.jpg",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "LCP": "2195022260",
                    "lcp.ui_element.tag_name": "H1",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "div[@id=\"margins\"]",
                      "h1"
                    ],
                    "lcp.url": null,
                    "page.name": "/booking"
                  },
                  {
                    "LCP": "1852300000",
                    "lcp.ui_element.tag_name": "SPAN",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "app-root",
                      "app-dashboard",
                      "app-main-layout",
                      "div",
                      "div",
                      "app-hero",
                      "div",
                      "section",
                      "span"
                    ],
                    "lcp.url": null,
                    "page.name": "/"
                  },
                  {
                    "LCP": "1423295845",
                    "lcp.ui_element.tag_name": "SECTION",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "app-root",
                      "app-dashboard",
                      "app-main-layout",
                      "div",
                      "div",
                      "app-hero",
                      "div",
                      "section"
                    ],
                    "lcp.url": "https://easytravel-ang.lab.dynatrace.org/assets/imgs/hero-bg.jpg",
                    "page.name": "/"
                  },
                  {
                    "LCP": "940261872",
                    "lcp.ui_element.tag_name": "IMG",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "app-root",
                      "app-contact",
                      "app-main-layout",
                      "div",
                      "div",
                      "main",
                      "div",
                      "div",
                      "div[2]",
                      "img"
                    ],
                    "lcp.url": "https://easytravel-ang.lab.dynatrace.org/assets/imgs/boston-dt-map.png",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "LCP": "873800000",
                    "lcp.ui_element.tag_name": "IMG",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "app-root",
                      "app-signup",
                      "app-main-layout",
                      "div",
                      "app-header",
                      "header",
                      "a",
                      "img"
                    ],
                    "lcp.url": "https://easytravel-ang.lab.dynatrace.org/assets/imgs/easytravel-logo.svg",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "LCP": "813332695",
                    "lcp.ui_element.tag_name": "IMG",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "app-root",
                      "app-login",
                      "app-main-layout",
                      "div",
                      "app-footer",
                      "footer",
                      "div",
                      "img"
                    ],
                    "lcp.url": "https://easytravel-ang.lab.dynatrace.org/assets/imgs/easytravel-logo.svg",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "LCP": "545976661",
                    "lcp.ui_element.tag_name": "IMG",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "app-root",
                      "app-signup",
                      "app-main-layout",
                      "div",
                      "app-footer",
                      "footer",
                      "div",
                      "img"
                    ],
                    "lcp.url": "https://easytravel-ang.lab.dynatrace.org/assets/imgs/easytravel-logo.svg",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "LCP": "423148386",
                    "lcp.ui_element.tag_name": "H1",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "div[@id=\"margins\"]",
                      "h1"
                    ],
                    "lcp.url": null,
                    "page.name": "/journey"
                  },
                  {
                    "LCP": "340738193",
                    "lcp.ui_element.tag_name": "H1",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "div[@id=\"margins\"]",
                      "h1"
                    ],
                    "lcp.url": null,
                    "page.name": "/report"
                  },
                  {
                    "LCP": "326292011",
                    "lcp.ui_element.tag_name": "IMG",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "div[@id=\"margins\"]",
                      "div",
                      "div[@id=\"hs_container\"]",
                      "div",
                      "img[@id=\"journeyButton1\"]"
                    ],
                    "lcp.url": "https://easytravel-bf.lab.dynatrace.org/Images/Journey_2.png",
                    "page.name": "/"
                  },
                  {
                    "LCP": "274985170",
                    "lcp.ui_element.tag_name": "P",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "p[2]"
                    ],
                    "lcp.url": null,
                    "page.name": "/account/logon"
                  },
                  {
                    "LCP": "241471649",
                    "lcp.ui_element.tag_name": "H1",
                    "lcp.ui_element.xpath": [
                      "html",
                      "body",
                      "div[@id=\"margins\"]",
                      "h1"
                    ],
                    "lcp.url": null,
                    "page.name": "/location"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      0
                    ],
                    "mappings": {
                      "LCP": {
                        "type": "duration"
                      },
                      "lcp.ui_element.tag_name": {
                        "type": "string"
                      },
                      "lcp.ui_element.xpath": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              9
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "lcp.url": {
                        "type": "string"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      1,
                      1
                    ],
                    "mappings": {
                      "LCP": {
                        "type": "duration"
                      },
                      "lcp.ui_element.tag_name": {
                        "type": "string"
                      },
                      "lcp.ui_element.xpath": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              3
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "lcp.url": {
                        "type": "undefined"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      2,
                      2
                    ],
                    "mappings": {
                      "LCP": {
                        "type": "duration"
                      },
                      "lcp.ui_element.tag_name": {
                        "type": "string"
                      },
                      "lcp.ui_element.xpath": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              10
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "lcp.url": {
                        "type": "undefined"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      3,
                      3
                    ],
                    "mappings": {
                      "LCP": {
                        "type": "duration"
                      },
                      "lcp.ui_element.tag_name": {
                        "type": "string"
                      },
                      "lcp.ui_element.xpath": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              9
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "lcp.url": {
                        "type": "string"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      4,
                      4
                    ],
                    "mappings": {
                      "LCP": {
                        "type": "duration"
                      },
                      "lcp.ui_element.tag_name": {
                        "type": "string"
                      },
                      "lcp.ui_element.xpath": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              11
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "lcp.url": {
                        "type": "string"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      5,
                      7
                    ],
                    "mappings": {
                      "LCP": {
                        "type": "duration"
                      },
                      "lcp.ui_element.tag_name": {
                        "type": "string"
                      },
                      "lcp.ui_element.xpath": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              9
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "lcp.url": {
                        "type": "string"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      8,
                      9
                    ],
                    "mappings": {
                      "LCP": {
                        "type": "duration"
                      },
                      "lcp.ui_element.tag_name": {
                        "type": "string"
                      },
                      "lcp.ui_element.xpath": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              3
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "lcp.url": {
                        "type": "undefined"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      10,
                      10
                    ],
                    "mappings": {
                      "LCP": {
                        "type": "duration"
                      },
                      "lcp.ui_element.tag_name": {
                        "type": "string"
                      },
                      "lcp.ui_element.xpath": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              6
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "lcp.url": {
                        "type": "string"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      11,
                      11
                    ],
                    "mappings": {
                      "LCP": {
                        "type": "duration"
                      },
                      "lcp.ui_element.tag_name": {
                        "type": "string"
                      },
                      "lcp.ui_element.xpath": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              2
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "lcp.url": {
                        "type": "undefined"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  },
                  {
                    "indexRange": [
                      12,
                      12
                    ],
                    "mappings": {
                      "LCP": {
                        "type": "duration"
                      },
                      "lcp.ui_element.tag_name": {
                        "type": "string"
                      },
                      "lcp.ui_element.xpath": {
                        "type": "array",
                        "types": [
                          {
                            "indexRange": [
                              0,
                              3
                            ],
                            "mappings": {
                              "element": {
                                "type": "string"
                              }
                            }
                          }
                        ]
                      },
                      "lcp.url": {
                        "type": "undefined"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {
                "categoricalBarChartSettings": {
                  "categoryAxisLabel": "page.url.path,lcp.ui_element.tag_name,lcp.url,lcp.ui_element.xpath",
                  "categoryAxisTickLayout": "horizontal",
                  "colorPaletteMode": "multi-color",
                  "groupMode": "stacked",
                  "layout": "horizontal",
                  "scale": "absolute",
                  "tooltipVariant": "single",
                  "valueAxisLabel": "LCP",
                  "valueAxisScale": "linear"
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
                "legend": {
                  "hidden": true
                },
                "pointsDisplay": "auto",
                "truncationMode": "middle",
                "valueRepresentation": "absolute",
                "xAxisScaling": "analyzedTimeframe"
              },
              "dataMapping": {
                "dimension": "page.url.path",
                "displayedFields": [
                  "page.url.path",
                  "lcp.url",
                  "lcp.ui_element.tag_name",
                  "LCP",
                  "lcp.ui_element.xpath"
                ],
                "longitude": "LCP",
                "value": "LCP"
              },
              "histogram": {
                "colorPalette": "categorical",
                "dataMappings": [
                  {
                    "rangeAxis": "",
                    "valueAxis": "LCP"
                  }
                ],
                "displayedFields": [
                  "page.url.path",
                  "lcp.url",
                  "lcp.ui_element.tag_name"
                ],
                "legend": "auto",
                "truncationMode": "middle",
                "variant": "single",
                "yAxis": {
                  "isLabelVisible": true,
                  "label": "Frequency",
                  "scale": "linear"
                }
              },
              "honeycomb": {
                "colorMode": "color-palette",
                "colorPalette": "blue",
                "dataMappings": {
                  "value": "LCP"
                },
                "displayedFields": [
                  "page.url.path",
                  "lcp.ui_element.tag_name",
                  "lcp.url",
                  "lcp.ui_element.xpath"
                ],
                "labels": {
                  "showLabels": false
                },
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
                "label": "LCP",
                "showLabel": false
              },
              "singleValue": {
                "alignment": "center",
                "autoscale": true,
                "colorThresholdTarget": "value",
                "isIconVisible": false,
                "label": "lcp.ui_element.tag_name",
                "prefixIcon": "",
                "recordField": "lcp.ui_element.tag_name",
                "showLabel": true,
                "trend": {
                  "isVisible": false,
                  "trendType": "auto"
                }
              },
              "table": {
                "columnOrder": [
                  "[\"page.name\"]",
                  "[\"lcp.url\"]",
                  "[\"lcp.ui_element.xpath\"]",
                  "[\"lcp.ui_element.tag_name\"]",
                  "[\"LCP\"]"
                ],
                "columnTypeOverrides": [],
                "columnWidths": {},
                "enableSparklines": false,
                "firstVisibleRowIndex": 0,
                "hiddenColumns": [],
                "lineWrapIds": [],
                "linewrapEnabled": false,
                "monospacedFontColumns": [],
                "monospacedFontEnabled": false,
                "rowDensity": "condensed",
                "sortBy": {
                  "columnId": "[\"LCP\"]",
                  "direction": "descending"
                }
              },
              "thresholds": [
                {
                  "field": "LCP",
                  "id": 1,
                  "isEnabled": true,
                  "rules": [
                    {
                      "color": {
                        "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                      },
                      "comparator": "≤",
                      "id": 0,
                      "label": "",
                      "value": 2500000000
                    },
                    {
                      "color": {
                        "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                      },
                      "comparator": "\u003e",
                      "id": 1,
                      "label": "",
                      "value": 2500000000
                    },
                    {
                      "color": {
                        "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                      },
                      "comparator": "≥",
                      "id": 2,
                      "label": "",
                      "value": 4000000000
                    }
                  ],
                  "title": ""
                }
              ],
              "tooltip": {},
              "valueBoundaries": {
                "max": "auto",
                "min": "auto"
              }
            }
          },
          "type": "dql"
        },
        {
          "id": "451153c9-6032-45c6-aa9f-a6784c468255",
          "markdown": "##### Trending LCP Times per Page\n* The cell below creates a trending chart that shows LCP times over time by each page URL. \n* This is a useful view to look at longer timeframes and spotlight any baseline changes.\n* If you want to filter to a specific application, uncomment line 3 (ie. remove the ‘//‘) and add your Application ID.\n* *Note: the default time for this cell is 24hrs*.",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "d6ad799c-42d0-406f-b964-e74a372ba989",
          "previousFilterSegments": [],
          "state": {
            "davis": {
              "componentState": {
                "analyzerHints": {},
                "inputData": {
                  "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                    "alertCondition": "ABOVE",
                    "alertOnMissingData": false,
                    "dealertingSamples": 5,
                    "generalParameters": {
                      "logVerbosity": "INFO",
                      "resolveDimensionalQueryData": true,
                      "timeframe": {
                        "endTime": "now()",
                        "startTime": "now()-24h"
                      }
                    },
                    "numberOfSignalFluctuations": 1,
                    "query": "fetch user.events\n//filter to specific application on the next line\n| filter dt.rum.application.entity == \"APPLICATION-007CAB1ABEACDFE1\"\n| filter characteristics.has_page_summary\n|filter isNotNull(web_vitals.largest_contentful_paint)\n| fields page.url.path, web_vitals.largest_contentful_paint, lcp.url, lcp.ui_element.xpath, lcp.status, start_time\n| summarize LCP_byPage = median(web_vitals.largest_contentful_paint), by: {bin(start_time, 1hr), page.url.path}",
                    "slidingWindow": 5,
                    "violatingSamples": 3
                  }
                },
                "lastExecution": {
                  "analyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer",
                  "inputData": {
                    "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer": {
                      "alertCondition": "ABOVE",
                      "alertOnMissingData": false,
                      "dealertingSamples": 5,
                      "generalParameters": {
                        "logVerbosity": "INFO",
                        "resolveDimensionalQueryData": true,
                        "timeframe": {
                          "endTime": "now()",
                          "startTime": "now()-24h"
                        }
                      },
                      "numberOfSignalFluctuations": 1,
                      "query": "fetch user.events\n//filter to specific application on the next line\n| filter dt.rum.application.entity == \"APPLICATION-007CAB1ABEACDFE1\"\n| filter characteristics.has_page_summary\n|filter isNotNull(web_vitals.largest_contentful_paint)\n| fields page.url.path, web_vitals.largest_contentful_paint, lcp.url, lcp.ui_element.xpath, lcp.status, start_time\n| summarize LCP_byPage = median(web_vitals.largest_contentful_paint), by: {bin(start_time, 1hr), page.url.path}",
                      "slidingWindow": 5,
                      "violatingSamples": 3
                    }
                  }
                },
                "resultState": {},
                "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.AutoAdaptiveAnomalyDetectionAnalyzer"
              },
              "davisVisualization": {
                "isAvailable": true
              },
              "enabled": false,
              "includeLogs": true
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.largest_contentful_paint)\n| fields page.name, web_vitals.largest_contentful_paint, lcp.url, lcp.ui_element.xpath, lcp.status, start_time\n| summarize LCP_byPage = percentile(web_vitals.largest_contentful_paint, 75), by: {bin(start_time, 1hr), page.name}"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 10,
              "maxResultRecords": 100000
            },
            "result": {
              "code": 200,
              "dateTime": "2025-06-27T16:51:48.482Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.largest_contentful_paint)\n| fields page.name, web_vitals.largest_contentful_paint, lcp.url, lcp.ui_element.xpath, lcp.status, start_time\n| summarize LCP_byPage = percentile(web_vitals.largest_contentful_paint, 75), by: {bin(start_time, 1hr), page.name}"
              },
              "notifications": [],
              "querySettings": {
                "defaultSamplingRatio": 10,
                "defaultScanLimitGbytes": 500,
                "enableSampling": false,
                "maxResultMegaBytes": 10,
                "maxResultRecords": 100000
              },
              "value": {
                "metadata": {
                  "grail": {
                    "analysisTimeframe": {
                      "end": "2025-06-27T16:51:43.497000000Z",
                      "start": "2025-06-27T14:51:43.497000000Z"
                    },
                    "canonicalQuery": "fetch user.events\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.largest_contentful_paint)\n| fields page.name, web_vitals.largest_contentful_paint, lcp.url, lcp.ui_element.xpath, lcp.status, start_time\n| summarize by:{bin(start_time, 1h), page.name}, LCP_byPage = percentile(web_vitals.largest_contentful_paint, 75)",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 100,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.largest_contentful_paint)\n| fields page.name, web_vitals.largest_contentful_paint, lcp.url, lcp.ui_element.xpath, lcp.status, start_time\n| summarize LCP_byPage = percentile(web_vitals.largest_contentful_paint, 75), by: {bin(start_time, 1hr), page.name}",
                    "queryId": "c5a330bf-1972-4520-9df1-5741e306442b",
                    "sampled": false,
                    "scannedBytes": 867544816,
                    "scannedDataPoints": 0,
                    "scannedRecords": 737430,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "LCP_byPage": "472448077",
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "LCP_byPage": "359753767",
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "LCP_byPage": "1948373568",
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "LCP_byPage": "356099000",
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "LCP_byPage": "467000000",
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "LCP_byPage": "360126901",
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "LCP_byPage": "176403404",
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "LCP_byPage": "351801042",
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "LCP_byPage": "681476385",
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "LCP_byPage": "274377782",
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "LCP_byPage": "2195022260",
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "LCP_byPage": "1033220416",
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "LCP_byPage": "846296773",
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "LCP_byPage": "803387740",
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "LCP_byPage": "423148386",
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "LCP_byPage": "291917888",
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "LCP_byPage": "419560366",
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "LCP_byPage": "573051049",
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "LCP_byPage": "274377782",
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "LCP_byPage": "2195022260",
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "LCP_byPage": "940261872",
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "LCP_byPage": "2643987392",
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "LCP_byPage": "667299000",
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "LCP_byPage": "604899000",
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "LCP_byPage": "461446587",
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "LCP_byPage": "203672282",
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "LCP_byPage": "296673980",
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/report"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      26
                    ],
                    "mappings": {
                      "LCP_byPage": {
                        "type": "duration"
                      },
                      "bin(start_time, 1h)": {
                        "type": "timestamp"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "lineChart",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {
                "categoricalBarChartSettings": {
                  "categoryAxisLabel": "page.url.path",
                  "categoryAxisTickLayout": "horizontal",
                  "colorPaletteMode": "multi-color",
                  "groupMode": "stacked",
                  "layout": "horizontal",
                  "scale": "absolute",
                  "tooltipVariant": "single",
                  "valueAxisLabel": "LCP_byPage",
                  "valueAxisScale": "linear"
                },
                "categoryOverrides": {},
                "circleChartSettings": {
                  "groupingThresholdType": "relative",
                  "groupingThresholdValue": 0,
                  "valueType": "relative"
                },
                "colorPalette": "categorical",
                "curve": "smooth",
                "fieldMapping": {
                  "leftAxisValues": [
                    "LCP_byPage"
                  ],
                  "timestamp": "bin(start_time, 1h)"
                },
                "gapPolicy": "connect",
                "hiddenLegendFields": [
                  "LCP_byPage"
                ],
                "leftYAxisSettings": {},
                "legend": {
                  "hidden": false,
                  "position": "auto"
                },
                "pointsDisplay": "auto",
                "truncationMode": "middle",
                "valueRepresentation": "absolute",
                "xAxisIsLabelVisible": false,
                "xAxisLabel": "bin(start_time, 1h)",
                "xAxisScaling": "analyzedTimeframe"
              },
              "dataMapping": {
                "dimension": "bin(start_time, 1h)",
                "displayedFields": [
                  "bin(start_time, 1h)",
                  "page.url.path",
                  "LCP_byPage"
                ],
                "longitude": "LCP_byPage",
                "value": "LCP_byPage"
              },
              "histogram": {
                "colorPalette": "categorical",
                "dataMappings": [
                  {
                    "rangeAxis": "",
                    "valueAxis": "LCP_byPage"
                  }
                ],
                "displayedFields": [
                  "page.url.path"
                ],
                "legend": "auto",
                "truncationMode": "middle",
                "variant": "single",
                "yAxis": {
                  "isLabelVisible": true,
                  "label": "Frequency",
                  "scale": "linear"
                }
              },
              "honeycomb": {
                "colorMode": "color-palette",
                "colorPalette": "blue",
                "dataMappings": {
                  "value": "LCP_byPage"
                },
                "displayedFields": [
                  "page.url.path"
                ],
                "labels": {
                  "showLabels": false
                },
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
                "label": "LCP_byPage",
                "showLabel": false
              },
              "singleValue": {
                "alignment": "center",
                "autoscale": true,
                "colorThresholdTarget": "value",
                "isIconVisible": false,
                "label": "error",
                "prefixIcon": "",
                "recordField": "error",
                "showLabel": true,
                "trend": {
                  "isVisible": false,
                  "trendType": "auto"
                }
              },
              "table": {
                "columnTypeOverrides": [],
                "columnWidths": {},
                "enableSparklines": false,
                "firstVisibleRowIndex": 0,
                "hiddenColumns": [],
                "lineWrapIds": [],
                "linewrapEnabled": false,
                "monospacedFontColumns": [],
                "monospacedFontEnabled": false,
                "rowDensity": "condensed"
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
                      "label": ""
                    },
                    {
                      "color": {
                        "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                      },
                      "comparator": "≥",
                      "id": 2,
                      "label": ""
                    }
                  ],
                  "title": ""
                }
              ],
              "tooltip": {
                "showCustomFields": false
              },
              "valueBoundaries": {
                "max": "auto",
                "min": "auto"
              }
            }
          },
          "type": "dql"
        },
        {
          "id": "e6dfc575-e43e-4186-a38f-440f3cf2b467",
          "markdown": "#### Interaction to Next Paint (INP)\n---",
          "type": "markdown"
        },
        {
          "id": "ece0c0a2-795e-41a7-a452-088f6ea36505",
          "markdown": "##### INP Timeseries\n* The cell below creates a time-series graph of the 75th percentile for INP across all pages combined over the selected time frame as well as an average value in milliseconds from that timeseries.\n* This view is helpful to understand any significant changes in INP over the given time frame.\n* If you want to filter to a specific application, uncomment line 3 (ie. remove the ‘//‘) and add your Application ID.",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "74d8e0e3-2484-4bec-bd2e-0d4bb22c7c25",
          "previousFilterSegments": [],
          "showInput": true,
          "showTitle": false,
          "state": {
            "davis": {
              "componentState": {
                "analyzerHints": {
                  "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer": {
                    "unit": {
                      "baseUnit": "one",
                      "unitCategory": "amount"
                    }
                  }
                },
                "inputData": {
                  "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer": {
                    "alertCondition": "ABOVE",
                    "dealertingSamples": 3,
                    "generalParameters": {
                      "logVerbosity": "INFO",
                      "resolveDimensionalQueryData": true,
                      "timeframe": {
                        "endTime": "2025-06-27T16:52:10.780Z",
                        "startTime": "2025-06-20T16:52:10.780Z"
                      }
                    },
                    "query": "timeseries INP = percentile(dt.frontend.web.page.interaction_to_next_paint, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"APPLICATION-ID\" //Optional: Application Filter\n| fieldsAdd INP_average_value = arrayAvg(INP)",
                    "threshold": 500,
                    "violatingSamples": 3
                  }
                },
                "lastExecution": {
                  "analyzerName": "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer",
                  "inputData": {
                    "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer": {
                      "alertCondition": "ABOVE",
                      "dealertingSamples": 3,
                      "generalParameters": {
                        "logVerbosity": "INFO",
                        "resolveDimensionalQueryData": true,
                        "timeframe": {
                          "endTime": "2025-06-27T16:52:10.780Z",
                          "startTime": "2025-06-20T16:52:10.780Z"
                        }
                      },
                      "query": "timeseries INP = percentile(dt.frontend.web.page.interaction_to_next_paint, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"APPLICATION-ID\" //Optional: Application Filter\n| fieldsAdd INP_average_value = arrayAvg(INP)",
                      "threshold": 500,
                      "violatingSamples": 3
                    }
                  }
                },
                "resultState": {
                  "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer": {
                    "executionTime": "2025-06-27T16:52:10.786Z",
                    "loadingState": "success",
                    "result": {
                      "result": {
                        "data": [],
                        "executionStatus": "COMPLETED",
                        "input": {
                          "alertCondition": "ABOVE",
                          "alertOnMissingData": false,
                          "dealertingSamples": 3,
                          "generalParameters": {
                            "logVerbosity": "INFO",
                            "resolveDimensionalQueryData": true,
                            "timeframe": {
                              "endTime": "2025-06-27T16:52:10.780Z",
                              "startTime": "2025-06-20T16:52:10.780Z"
                            }
                          },
                          "query": "timeseries INP = percentile(dt.frontend.web.page.interaction_to_next_paint, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"APPLICATION-ID\" //Optional: Application Filter\n| fieldsAdd INP_average_value = arrayAvg(INP)",
                          "slidingWindow": 5,
                          "threshold": 500,
                          "violatingSamples": 3
                        },
                        "output": [
                          {
                            "analysisStatus": "SUCCESS",
                            "potentialAlerts": 0,
                            "resultTimeseries": {
                              "metadata": {
                                "metrics": [
                                  {
                                    "description": "The INP value of the page visit",
                                    "displayName": "Frontend Interaction to Next Paint (INP)",
                                    "fieldName": "INP",
                                    "metric.key": "dt.frontend.web.page.interaction_to_next_paint",
                                    "unit": "ms"
                                  }
                                ]
                              },
                              "records": [
                                {
                                  "INP": [
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    480,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null,
                                    null
                                  ],
                                  "INP_average_value": 480,
                                  "interval": "3600000000000",
                                  "timeframe": {
                                    "end": "2025-06-27T17:00Z",
                                    "start": "2025-06-20T16:00Z"
                                  }
                                }
                              ],
                              "types": [
                                {
                                  "indexRange": [
                                    0,
                                    0
                                  ],
                                  "mappings": {
                                    "INP": {
                                      "type": "array",
                                      "types": [
                                        {
                                          "indexRange": [
                                            0,
                                            168
                                          ],
                                          "mappings": {
                                            "element": {
                                              "type": "double"
                                            }
                                          }
                                        }
                                      ]
                                    },
                                    "INP_average_value": {
                                      "type": "double"
                                    },
                                    "interval": {
                                      "type": "duration"
                                    },
                                    "timeframe": {
                                      "type": "timeframe"
                                    }
                                  }
                                }
                              ]
                            },
                            "thresholds": [
                              {
                                "data": [
                                  {
                                    "max": 500,
                                    "min": "-Infinity"
                                  }
                                ],
                                "label": "Threshold",
                                "strokeOnly": false,
                                "thresholdVariant": "INFO"
                              }
                            ],
                            "timeseriesAnnotations": []
                          }
                        ],
                        "resultId": "72a4eee04fa24332",
                        "resultStatus": "SUCCESSFUL"
                      }
                    }
                  }
                },
                "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
              },
              "davisVisualization": {
                "isAvailable": true
              },
              "enabled": true,
              "includeLogs": true,
              "result": {
                "executionTime": "2025-06-27T16:52:10.786Z",
                "loadingState": "success",
                "result": {
                  "result": {
                    "data": [],
                    "executionStatus": "COMPLETED",
                    "input": {
                      "alertCondition": "ABOVE",
                      "alertOnMissingData": false,
                      "dealertingSamples": 3,
                      "generalParameters": {
                        "logVerbosity": "INFO",
                        "resolveDimensionalQueryData": true,
                        "timeframe": {
                          "endTime": "2025-06-27T16:52:10.780Z",
                          "startTime": "2025-06-20T16:52:10.780Z"
                        }
                      },
                      "query": "timeseries INP = percentile(dt.frontend.web.page.interaction_to_next_paint, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"APPLICATION-ID\" //Optional: Application Filter\n| fieldsAdd INP_average_value = arrayAvg(INP)",
                      "slidingWindow": 5,
                      "threshold": 500,
                      "violatingSamples": 3
                    },
                    "output": [
                      {
                        "analysisStatus": "SUCCESS",
                        "potentialAlerts": 0,
                        "resultTimeseries": {
                          "metadata": {
                            "metrics": [
                              {
                                "description": "The INP value of the page visit",
                                "displayName": "Frontend Interaction to Next Paint (INP)",
                                "fieldName": "INP",
                                "metric.key": "dt.frontend.web.page.interaction_to_next_paint",
                                "unit": "ms"
                              }
                            ]
                          },
                          "records": [
                            {
                              "INP": [
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                480,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null,
                                null
                              ],
                              "INP_average_value": 480,
                              "interval": "3600000000000",
                              "timeframe": {
                                "end": "2025-06-27T17:00Z",
                                "start": "2025-06-20T16:00Z"
                              }
                            }
                          ],
                          "types": [
                            {
                              "indexRange": [
                                0,
                                0
                              ],
                              "mappings": {
                                "INP": {
                                  "type": "array",
                                  "types": [
                                    {
                                      "indexRange": [
                                        0,
                                        168
                                      ],
                                      "mappings": {
                                        "element": {
                                          "type": "double"
                                        }
                                      }
                                    }
                                  ]
                                },
                                "INP_average_value": {
                                  "type": "double"
                                },
                                "interval": {
                                  "type": "duration"
                                },
                                "timeframe": {
                                  "type": "timeframe"
                                }
                              }
                            }
                          ]
                        },
                        "thresholds": [
                          {
                            "data": [
                              {
                                "max": 500,
                                "min": "-Infinity"
                              }
                            ],
                            "label": "Threshold",
                            "strokeOnly": false,
                            "thresholdVariant": "INFO"
                          }
                        ],
                        "timeseriesAnnotations": []
                      }
                    ],
                    "resultId": "72a4eee04fa24332",
                    "resultStatus": "SUCCESSFUL"
                  }
                }
              }
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "timeseries INP = percentile(dt.frontend.web.page.interaction_to_next_paint, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"APPLICATION-ID\" //Optional: Application Filter\n| fieldsAdd INP_average_value = arrayAvg(INP)"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "state": "success",
            "visualization": "davis",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {
                "categoricalBarChartSettings": {
                  "categoryAxisTickLayout": "horizontal",
                  "colorPaletteMode": "multi-color",
                  "groupMode": "stacked",
                  "layout": "horizontal",
                  "scale": "absolute",
                  "valueAxisScale": "linear"
                },
                "categoryOverrides": {},
                "circleChartSettings": {
                  "groupingThresholdType": "relative",
                  "groupingThresholdValue": 0,
                  "valueType": "relative"
                },
                "colorPalette": "categorical",
                "curve": "linear",
                "gapPolicy": "connect",
                "pointsDisplay": "auto",
                "truncationMode": "middle",
                "valueRepresentation": "absolute"
              },
              "histogram": {
                "colorPalette": "categorical",
                "dataMappings": [],
                "legend": "auto",
                "truncationMode": "middle",
                "variant": "single",
                "yAxis": {
                  "isLabelVisible": true,
                  "label": "Frequency",
                  "scale": "linear"
                }
              },
              "honeycomb": {
                "colorMode": "color-palette",
                "colorPalette": "categorical",
                "dataMappings": {},
                "displayedFields": [],
                "labels": {
                  "showLabels": false
                },
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
                "showLabel": false
              },
              "singleValue": {
                "alignment": "center",
                "autoscale": true,
                "colorThresholdTarget": "value",
                "isIconVisible": false,
                "label": "",
                "prefixIcon": "",
                "showLabel": true
              },
              "table": {
                "columnTypeOverrides": [],
                "columnWidths": {},
                "enableSparklines": false,
                "firstVisibleRowIndex": 0,
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
          "title": "",
          "type": "dql"
        },
        {
          "id": "5198584e-a801-4716-8ea1-3210da3905d7",
          "markdown": "##### INP Duration for Interaction Events at Page Level\n* The cell below queries for the 75th percentile of INP for any page and groups by the Element triggering INP, the Interaction Type, and the number of interactions.\n  * CWVs are reported at the page summary event\n  * All colors for INP values in the table are aligned with [Google's recommendations](https://web.dev/articles/vitals#core-web-vitals)\n* If you want to filter to a specific application, uncomment line 3 (ie. remove the ‘//‘) and add your Application ID.",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 176,
          "id": "69c94ac0-ad4e-464b-a9c2-f920a35b0690",
          "previousFilterSegments": [],
          "state": {
            "davis": {
              "davisVisualization": {
                "isAvailable": true
              },
              "includeLogs": true
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"APPLICATION-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n|filter isNotNull(web_vitals.interaction_to_next_paint)\n| fields page.name, web_vitals.interaction_to_next_paint, inp.status, inp.name, inp.interaction_count, inp.ui_element.tag_name\n| summarize INP = percentile(web_vitals.interaction_to_next_paint, 75), by: {page.name, inp.name, inp.interaction_count, inp.ui_element.tag_name}\n| sort INP desc"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "result": {
              "code": 200,
              "dateTime": "2025-06-27T16:52:38.718Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"APPLICATION-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n|filter isNotNull(web_vitals.interaction_to_next_paint)\n| fields page.name, web_vitals.interaction_to_next_paint, inp.status, inp.name, inp.interaction_count, inp.ui_element.tag_name\n| summarize INP = percentile(web_vitals.interaction_to_next_paint, 75), by: {page.name, inp.name, inp.interaction_count, inp.ui_element.tag_name}\n| sort INP desc"
              },
              "notifications": [],
              "querySettings": {
                "defaultSamplingRatio": 10,
                "defaultScanLimitGbytes": 500,
                "enableSampling": false,
                "maxResultMegaBytes": 1,
                "maxResultRecords": 1000
              },
              "value": {
                "metadata": {
                  "grail": {
                    "analysisTimeframe": {
                      "end": "2025-06-27T16:52:38.366000000Z",
                      "start": "2025-06-27T14:52:38.366000000Z"
                    },
                    "canonicalQuery": "fetch user.events\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.interaction_to_next_paint)\n| fields page.name, web_vitals.interaction_to_next_paint, inp.status, inp.name, inp.interaction_count, inp.ui_element.tag_name\n| summarize by:{page.name, inp.name, inp.interaction_count, inp.ui_element.tag_name}, INP = percentile(web_vitals.interaction_to_next_paint, 75)\n| sort INP desc",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 33,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"APPLICATION-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n|filter isNotNull(web_vitals.interaction_to_next_paint)\n| fields page.name, web_vitals.interaction_to_next_paint, inp.status, inp.name, inp.interaction_count, inp.ui_element.tag_name\n| summarize INP = percentile(web_vitals.interaction_to_next_paint, 75), by: {page.name, inp.name, inp.interaction_count, inp.ui_element.tag_name}\n| sort INP desc",
                    "queryId": "60d545cd-cf0e-4781-9d64-8ea2d2711b6e",
                    "sampled": false,
                    "scannedBytes": 439673204,
                    "scannedDataPoints": 0,
                    "scannedRecords": 742036,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [],
                "types": []
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {
                "categoricalBarChartSettings": {
                  "categoryAxisLabel": "page.title,page.url.path,inp.name,inp.ui_element.tag_name",
                  "categoryAxisTickLayout": "horizontal",
                  "colorPaletteMode": "multi-color",
                  "groupMode": "stacked",
                  "layout": "horizontal",
                  "scale": "absolute",
                  "tooltipVariant": "single",
                  "valueAxisLabel": "inp.interaction_count,INP",
                  "valueAxisScale": "linear"
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
                "pointsDisplay": "auto",
                "truncationMode": "middle",
                "valueRepresentation": "absolute",
                "xAxisScaling": "analyzedTimeframe"
              },
              "histogram": {
                "colorPalette": "categorical",
                "dataMappings": [
                  {
                    "rangeAxis": "",
                    "valueAxis": "inp.interaction_count"
                  },
                  {
                    "rangeAxis": "",
                    "valueAxis": "INP"
                  }
                ],
                "displayedFields": [
                  "page.title",
                  "page.url.path",
                  "inp.name",
                  "inp.ui_element.tag_name"
                ],
                "legend": "auto",
                "truncationMode": "middle",
                "variant": "single",
                "yAxis": {
                  "isLabelVisible": true,
                  "label": "Frequency",
                  "scale": "linear"
                }
              },
              "honeycomb": {
                "colorMode": "color-palette",
                "colorPalette": "blue",
                "dataMappings": {
                  "value": "inp.interaction_count"
                },
                "displayedFields": [
                  "page.title",
                  "page.url.path",
                  "inp.name",
                  "inp.ui_element.tag_name"
                ],
                "labels": {
                  "showLabels": false
                },
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
                "showLabel": false
              },
              "singleValue": {
                "alignment": "center",
                "autoscale": true,
                "colorThresholdTarget": "value",
                "isIconVisible": false,
                "label": "error",
                "prefixIcon": "",
                "recordField": "error",
                "showLabel": true,
                "trend": {
                  "isVisible": false,
                  "trendType": "auto"
                }
              },
              "table": {
                "columnTypeOverrides": [],
                "columnWidths": {
                  "[\"INP\"]": 136.41796875
                },
                "enableSparklines": false,
                "firstVisibleRowIndex": 0,
                "hiddenColumns": [],
                "lineWrapIds": [],
                "linewrapEnabled": false,
                "monospacedFontColumns": [],
                "monospacedFontEnabled": false,
                "rowDensity": "condensed"
              },
              "thresholds": [
                {
                  "field": "INP",
                  "id": 1,
                  "isEnabled": true,
                  "rules": [
                    {
                      "color": {
                        "Default": "var(--dt-colors-charts-status-ideal-default, #2f6863)"
                      },
                      "comparator": "≤",
                      "id": 0,
                      "label": "",
                      "value": 200000000
                    },
                    {
                      "color": {
                        "Default": "var(--dt-colors-charts-status-warning-default, #eca440)"
                      },
                      "comparator": "\u003e",
                      "id": 1,
                      "label": "",
                      "value": 200000000
                    },
                    {
                      "color": {
                        "Default": "var(--dt-colors-charts-status-critical-default, #c4233b)"
                      },
                      "comparator": "≥",
                      "id": 2,
                      "label": "",
                      "value": 500000000
                    }
                  ],
                  "title": ""
                }
              ],
              "valueBoundaries": {
                "max": "auto",
                "min": "auto"
              }
            }
          },
          "type": "dql"
        },
        {
          "id": "eadd1bf8-6be4-40c0-a13b-3e65c437cd03",
          "markdown": "##### Trending INP Times by Page\n* The cell below creates a trending chart that shows INP times over time by each page URL. \n* This is a useful view to look at longer timeframes and spotlight any baseline changes.\n* If you want to filter to a specific application, uncomment line 3 (ie. remove the ‘//‘) and add your Application ID.\n* *Note: the default time for this cell is 24hrs*.",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "119560a9-1050-461a-8f88-f64258cb89e2",
          "previousFilterSegments": [],
          "state": {
            "davis": {
              "davisVisualization": {
                "isAvailable": true
              },
              "includeLogs": true
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"APPLICATION-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.interaction_to_next_paint)\n| fields page.name, web_vitals.interaction_to_next_paint, inp.status, inp.name, inp.interaction_count, inp.ui_element.tag_name, start_time\n| summarize INP = percentile(web_vitals.interaction_to_next_paint, 75), by: {bin(start_time, 1hr), page.name}"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "result": {
              "code": 200,
              "dateTime": "2025-06-27T16:52:48.886Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"APPLICATION-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.interaction_to_next_paint)\n| fields page.name, web_vitals.interaction_to_next_paint, inp.status, inp.name, inp.interaction_count, inp.ui_element.tag_name, start_time\n| summarize INP = percentile(web_vitals.interaction_to_next_paint, 75), by: {bin(start_time, 1hr), page.name}"
              },
              "notifications": [],
              "querySettings": {
                "defaultSamplingRatio": 10,
                "defaultScanLimitGbytes": 500,
                "enableSampling": false,
                "maxResultMegaBytes": 1,
                "maxResultRecords": 1000
              },
              "value": {
                "metadata": {
                  "grail": {
                    "analysisTimeframe": {
                      "end": "2025-06-27T16:52:48.410000000Z",
                      "start": "2025-06-27T14:52:48.410000000Z"
                    },
                    "canonicalQuery": "fetch user.events\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.interaction_to_next_paint)\n| fields page.name, web_vitals.interaction_to_next_paint, inp.status, inp.name, inp.interaction_count, inp.ui_element.tag_name, start_time\n| summarize by:{bin(start_time, 1h), page.name}, INP = percentile(web_vitals.interaction_to_next_paint, 75)",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 44,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"APPLICATION-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.interaction_to_next_paint)\n| fields page.name, web_vitals.interaction_to_next_paint, inp.status, inp.name, inp.interaction_count, inp.ui_element.tag_name, start_time\n| summarize INP = percentile(web_vitals.interaction_to_next_paint, 75), by: {bin(start_time, 1hr), page.name}",
                    "queryId": "a33cf44d-a0d5-4140-b248-92a20ccb4192",
                    "sampled": false,
                    "scannedBytes": 455915493,
                    "scannedDataPoints": 0,
                    "scannedRecords": 212751,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [],
                "types": []
              }
            },
            "state": "success",
            "visualization": "lineChart",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {
                "categoricalBarChartSettings": {
                  "categoryAxisLabel": "page.title",
                  "categoryAxisTickLayout": "horizontal",
                  "colorPaletteMode": "multi-color",
                  "groupMode": "stacked",
                  "layout": "horizontal",
                  "scale": "absolute",
                  "tooltipVariant": "single",
                  "valueAxisLabel": "INP",
                  "valueAxisScale": "linear"
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
                    "INP"
                  ],
                  "timestamp": "bin(start_time, 1h)"
                },
                "gapPolicy": "connect",
                "hiddenLegendFields": [
                  "INP"
                ],
                "leftYAxisSettings": {},
                "pointsDisplay": "auto",
                "truncationMode": "middle",
                "valueRepresentation": "absolute",
                "xAxisIsLabelVisible": false,
                "xAxisLabel": "bin(start_time, 1h)",
                "xAxisScaling": "analyzedTimeframe"
              },
              "histogram": {
                "colorPalette": "categorical",
                "dataMappings": [
                  {
                    "rangeAxis": "",
                    "valueAxis": "INP"
                  }
                ],
                "displayedFields": [
                  "page.title"
                ],
                "legend": "auto",
                "truncationMode": "middle",
                "variant": "single",
                "yAxis": {
                  "isLabelVisible": true,
                  "label": "Frequency",
                  "scale": "linear"
                }
              },
              "honeycomb": {
                "colorMode": "color-palette",
                "colorPalette": "blue",
                "dataMappings": {
                  "value": "INP"
                },
                "displayedFields": [
                  "page.title"
                ],
                "labels": {
                  "showLabels": false
                },
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
                "showLabel": false
              },
              "singleValue": {
                "alignment": "center",
                "autoscale": true,
                "colorThresholdTarget": "value",
                "isIconVisible": false,
                "label": "page.title",
                "prefixIcon": "",
                "recordField": "page.title",
                "showLabel": true,
                "trend": {
                  "isVisible": false,
                  "trendType": "auto"
                }
              },
              "table": {
                "columnTypeOverrides": [],
                "columnWidths": {},
                "enableSparklines": false,
                "firstVisibleRowIndex": 0,
                "hiddenColumns": [],
                "lineWrapIds": [],
                "linewrapEnabled": false,
                "monospacedFontColumns": [],
                "monospacedFontEnabled": false,
                "rowDensity": "condensed",
                "sortBy": {
                  "columnId": "[\"page.title\"]",
                  "direction": "ascending"
                }
              },
              "thresholds": [],
              "valueBoundaries": {
                "max": "auto",
                "min": "auto"
              }
            }
          },
          "type": "dql"
        },
        {
          "id": "1179f372-cca6-40df-a14d-00305f0597ea",
          "markdown": "#### Content Layout Shift (CLS)\n---",
          "type": "markdown"
        },
        {
          "id": "2887f26f-1eef-4288-bf43-a35e4dd4d647",
          "markdown": "##### CLS Timeseries\n* The cell below creates a time-series graph of the 75th percentile for CLS across all pages combined over the selected time frame as well as an average value in milliseconds from that timeseries.\n* This view is helpful to understand any significant changes in CLS over the given time frame.\n* If you want to filter to a specific application, uncomment line 3 (ie. remove the ‘//‘) and add your Application ID.",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "b5bf1ead-5787-407b-bf03-21bb95f3762c",
          "previousFilterSegments": [],
          "showInput": true,
          "showTitle": false,
          "state": {
            "davis": {
              "componentState": {
                "analyzerHints": {},
                "inputData": {
                  "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer": {
                    "alertCondition": "ABOVE",
                    "dealertingSamples": 3,
                    "generalParameters": {
                      "logVerbosity": "INFO",
                      "resolveDimensionalQueryData": true,
                      "timeframe": {
                        "endTime": "2025-06-27T16:53:23.142Z",
                        "startTime": "2025-06-27T14:53:23.142Z"
                      }
                    },
                    "query": "timeseries CLS = percentile(dt.frontend.web.page.cumulative_layout_shift, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| fieldsAdd CLS = CLS[] * 0.0001 //this downscales to the correct range of values\n| fieldsAdd CLS_average_value = arrayAvg(CLS)",
                    "threshold": 0.25,
                    "violatingSamples": 3
                  }
                },
                "lastExecution": {
                  "analyzerName": "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer",
                  "inputData": {
                    "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer": {
                      "alertCondition": "ABOVE",
                      "dealertingSamples": 3,
                      "generalParameters": {
                        "logVerbosity": "INFO",
                        "resolveDimensionalQueryData": true,
                        "timeframe": {
                          "endTime": "2025-06-27T16:53:23.142Z",
                          "startTime": "2025-06-27T14:53:23.142Z"
                        }
                      },
                      "query": "timeseries CLS = percentile(dt.frontend.web.page.cumulative_layout_shift, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| fieldsAdd CLS = CLS[] * 0.0001 //this downscales to the correct range of values\n| fieldsAdd CLS_average_value = arrayAvg(CLS)",
                      "threshold": 0.25,
                      "violatingSamples": 3
                    }
                  }
                },
                "resultState": {
                  "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer": {
                    "executionTime": "2025-06-27T16:53:23.149Z",
                    "loadingState": "success",
                    "result": {
                      "result": {
                        "data": [],
                        "executionStatus": "COMPLETED",
                        "input": {
                          "alertCondition": "ABOVE",
                          "alertOnMissingData": false,
                          "dealertingSamples": 3,
                          "generalParameters": {
                            "logVerbosity": "INFO",
                            "resolveDimensionalQueryData": true,
                            "timeframe": {
                              "endTime": "2025-06-27T16:53:23.142Z",
                              "startTime": "2025-06-27T14:53:23.142Z"
                            }
                          },
                          "query": "timeseries CLS = percentile(dt.frontend.web.page.cumulative_layout_shift, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| fieldsAdd CLS = CLS[] * 0.0001 //this downscales to the correct range of values\n| fieldsAdd CLS_average_value = arrayAvg(CLS)",
                          "slidingWindow": 5,
                          "threshold": 0.25,
                          "violatingSamples": 3
                        },
                        "output": [
                          {
                            "analysisStatus": "SUCCESS",
                            "potentialAlerts": 0,
                            "resultTimeseries": {
                              "metadata": {
                                "metrics": [
                                  {
                                    "description": "The CLS value of the page visit",
                                    "displayName": "Frontend Cumulative Layout Shift (CLS)",
                                    "fieldName": "CLS",
                                    "metric.key": "dt.frontend.web.page.cumulative_layout_shift",
                                    "unit": "1"
                                  }
                                ]
                              },
                              "records": [
                                {
                                  "CLS": [
                                    0,
                                    0.049448447766592546,
                                    0,
                                    0.00471279463924323,
                                    0.09424773654564558,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0.031994091586422885,
                                    0.0115,
                                    0.0053719550318045,
                                    0,
                                    0,
                                    0,
                                    0.09720000000000001,
                                    0,
                                    0.022778377933671785,
                                    0,
                                    0.04400697588327283,
                                    0,
                                    0,
                                    0.00319783084365538,
                                    0.014033573027153112,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0.25996261035258433,
                                    0,
                                    0.006088734076193071,
                                    0,
                                    null,
                                    null,
                                    0.01310122003700681,
                                    0.004276712581592614,
                                    0.035325050960345265,
                                    null,
                                    0,
                                    0.08801395176654553,
                                    0,
                                    0,
                                    0.0028250018011963677,
                                    0,
                                    0,
                                    0.01655371153313324,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0.08498242512660471,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0.0026656771060612565,
                                    0.11660537654965797,
                                    0.0032470938433900674,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0.00319783084365538,
                                    0.00319783084365538,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0.0606,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0.0021523540768420227,
                                    0.456559896048008,
                                    0,
                                    0.030926242341731143,
                                    0,
                                    0.0021523540768420227,
                                    0.09223711191626188,
                                    0.08428244895889002,
                                    0,
                                    0,
                                    0.0023097440547005864,
                                    null,
                                    0,
                                    0.020177287407085846,
                                    0,
                                    0,
                                    0.0027504359927045655,
                                    0,
                                    0.029108024141916027,
                                    0,
                                    0,
                                    0.007356863841991015,
                                    0,
                                    0.03471554926671618,
                                    0,
                                    0,
                                    0,
                                    0.0014772396177420827,
                                    0.0059,
                                    0,
                                    0,
                                    0,
                                    0,
                                    0,
                                    null
                                  ],
                                  "CLS_average_value": 0.015958970365694092,
                                  "interval": "60000000000",
                                  "timeframe": {
                                    "end": "2025-06-27T16:54Z",
                                    "start": "2025-06-27T14:53Z"
                                  }
                                }
                              ],
                              "types": [
                                {
                                  "indexRange": [
                                    0,
                                    0
                                  ],
                                  "mappings": {
                                    "CLS": {
                                      "type": "array",
                                      "types": [
                                        {
                                          "indexRange": [
                                            0,
                                            120
                                          ],
                                          "mappings": {
                                            "element": {
                                              "type": "double"
                                            }
                                          }
                                        }
                                      ]
                                    },
                                    "CLS_average_value": {
                                      "type": "double"
                                    },
                                    "interval": {
                                      "type": "duration"
                                    },
                                    "timeframe": {
                                      "type": "timeframe"
                                    }
                                  }
                                }
                              ]
                            },
                            "thresholds": [
                              {
                                "data": [
                                  {
                                    "max": 0.25,
                                    "min": "-Infinity"
                                  }
                                ],
                                "label": "Threshold",
                                "strokeOnly": false,
                                "thresholdVariant": "INFO"
                              }
                            ],
                            "timeseriesAnnotations": []
                          }
                        ],
                        "resultId": "b006befcac856f28",
                        "resultStatus": "SUCCESSFUL"
                      }
                    }
                  }
                },
                "selectedAnalyzerName": "dt.statistics.ui.anomaly_detection.StaticThresholdAnomalyDetectionAnalyzer"
              },
              "davisVisualization": {
                "isAvailable": true
              },
              "enabled": true,
              "includeLogs": true,
              "result": {
                "executionTime": "2025-06-27T16:53:23.149Z",
                "loadingState": "success",
                "result": {
                  "result": {
                    "data": [],
                    "executionStatus": "COMPLETED",
                    "input": {
                      "alertCondition": "ABOVE",
                      "alertOnMissingData": false,
                      "dealertingSamples": 3,
                      "generalParameters": {
                        "logVerbosity": "INFO",
                        "resolveDimensionalQueryData": true,
                        "timeframe": {
                          "endTime": "2025-06-27T16:53:23.142Z",
                          "startTime": "2025-06-27T14:53:23.142Z"
                        }
                      },
                      "query": "timeseries CLS = percentile(dt.frontend.web.page.cumulative_layout_shift, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| fieldsAdd CLS = CLS[] * 0.0001 //this downscales to the correct range of values\n| fieldsAdd CLS_average_value = arrayAvg(CLS)",
                      "slidingWindow": 5,
                      "threshold": 0.25,
                      "violatingSamples": 3
                    },
                    "output": [
                      {
                        "analysisStatus": "SUCCESS",
                        "potentialAlerts": 0,
                        "resultTimeseries": {
                          "metadata": {
                            "metrics": [
                              {
                                "description": "The CLS value of the page visit",
                                "displayName": "Frontend Cumulative Layout Shift (CLS)",
                                "fieldName": "CLS",
                                "metric.key": "dt.frontend.web.page.cumulative_layout_shift",
                                "unit": "1"
                              }
                            ]
                          },
                          "records": [
                            {
                              "CLS": [
                                0,
                                0.049448447766592546,
                                0,
                                0.00471279463924323,
                                0.09424773654564558,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0.031994091586422885,
                                0.0115,
                                0.0053719550318045,
                                0,
                                0,
                                0,
                                0.09720000000000001,
                                0,
                                0.022778377933671785,
                                0,
                                0.04400697588327283,
                                0,
                                0,
                                0.00319783084365538,
                                0.014033573027153112,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0.25996261035258433,
                                0,
                                0.006088734076193071,
                                0,
                                null,
                                null,
                                0.01310122003700681,
                                0.004276712581592614,
                                0.035325050960345265,
                                null,
                                0,
                                0.08801395176654553,
                                0,
                                0,
                                0.0028250018011963677,
                                0,
                                0,
                                0.01655371153313324,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0.08498242512660471,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0.0026656771060612565,
                                0.11660537654965797,
                                0.0032470938433900674,
                                0,
                                0,
                                0,
                                0,
                                0.00319783084365538,
                                0.00319783084365538,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0.0606,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0.0021523540768420227,
                                0.456559896048008,
                                0,
                                0.030926242341731143,
                                0,
                                0.0021523540768420227,
                                0.09223711191626188,
                                0.08428244895889002,
                                0,
                                0,
                                0.0023097440547005864,
                                null,
                                0,
                                0.020177287407085846,
                                0,
                                0,
                                0.0027504359927045655,
                                0,
                                0.029108024141916027,
                                0,
                                0,
                                0.007356863841991015,
                                0,
                                0.03471554926671618,
                                0,
                                0,
                                0,
                                0.0014772396177420827,
                                0.0059,
                                0,
                                0,
                                0,
                                0,
                                0,
                                null
                              ],
                              "CLS_average_value": 0.015958970365694092,
                              "interval": "60000000000",
                              "timeframe": {
                                "end": "2025-06-27T16:54Z",
                                "start": "2025-06-27T14:53Z"
                              }
                            }
                          ],
                          "types": [
                            {
                              "indexRange": [
                                0,
                                0
                              ],
                              "mappings": {
                                "CLS": {
                                  "type": "array",
                                  "types": [
                                    {
                                      "indexRange": [
                                        0,
                                        120
                                      ],
                                      "mappings": {
                                        "element": {
                                          "type": "double"
                                        }
                                      }
                                    }
                                  ]
                                },
                                "CLS_average_value": {
                                  "type": "double"
                                },
                                "interval": {
                                  "type": "duration"
                                },
                                "timeframe": {
                                  "type": "timeframe"
                                }
                              }
                            }
                          ]
                        },
                        "thresholds": [
                          {
                            "data": [
                              {
                                "max": 0.25,
                                "min": "-Infinity"
                              }
                            ],
                            "label": "Threshold",
                            "strokeOnly": false,
                            "thresholdVariant": "INFO"
                          }
                        ],
                        "timeseriesAnnotations": []
                      }
                    ],
                    "resultId": "b006befcac856f28",
                    "resultStatus": "SUCCESSFUL"
                  }
                }
              }
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "timeseries CLS = percentile(dt.frontend.web.page.cumulative_layout_shift, 75)\n//filter to specific application on the next line\n//, filter: dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| fieldsAdd CLS = CLS[] * 0.0001 //this downscales to the correct range of values\n| fieldsAdd CLS_average_value = arrayAvg(CLS)"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "state": "success",
            "visualization": "davis",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {
                "categoricalBarChartSettings": {
                  "categoryAxisTickLayout": "horizontal",
                  "colorPaletteMode": "multi-color",
                  "groupMode": "stacked",
                  "layout": "horizontal",
                  "scale": "absolute",
                  "valueAxisScale": "linear"
                },
                "categoryOverrides": {},
                "circleChartSettings": {
                  "groupingThresholdType": "relative",
                  "groupingThresholdValue": 0,
                  "valueType": "relative"
                },
                "colorPalette": "categorical",
                "curve": "linear",
                "gapPolicy": "connect",
                "pointsDisplay": "auto",
                "truncationMode": "middle",
                "valueRepresentation": "absolute"
              },
              "histogram": {
                "colorPalette": "categorical",
                "dataMappings": [],
                "legend": "auto",
                "truncationMode": "middle",
                "variant": "single",
                "yAxis": {
                  "isLabelVisible": true,
                  "label": "Frequency",
                  "scale": "linear"
                }
              },
              "honeycomb": {
                "colorMode": "color-palette",
                "colorPalette": "categorical",
                "dataMappings": {},
                "displayedFields": [],
                "labels": {
                  "showLabels": false
                },
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
                "showLabel": false
              },
              "singleValue": {
                "alignment": "center",
                "autoscale": true,
                "colorThresholdTarget": "value",
                "isIconVisible": false,
                "label": "",
                "prefixIcon": "",
                "showLabel": true
              },
              "table": {
                "columnTypeOverrides": [],
                "columnWidths": {},
                "enableSparklines": false,
                "firstVisibleRowIndex": 0,
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
          "title": "",
          "type": "dql"
        },
        {
          "id": "944ad9a8-fd70-47da-8a7c-2ab6466bd2f9",
          "markdown": "##### Trending CLS Times by Page\n* The cell below creates a trending chart that shows CLS times over time by each page URL. \n* This is a useful view to look at longer timeframes and spotlight any baseline changes.\n* If you want to filter to a specific application, uncomment line 3 (ie. remove the ‘//‘) and add your Application ID.\n* *Note: the default time for this cell is 24hrs*.",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "id": "f69a80cd-08ab-4463-a6be-712cb740a6ab",
          "previousFilterSegments": [],
          "state": {
            "davis": {
              "davisVisualization": {
                "isAvailable": true
              },
              "includeLogs": true
            },
            "input": {
              "timeframe": {
                "from": "now()-2h",
                "to": "now()"
              },
              "value": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.cumulative_layout_shift)\n| fields page.name, web_vitals.cumulative_layout_shift, start_time\n| fieldsAdd cls_Score = web_vitals.cumulative_layout_shift * .001\n| summarize CLS = percentile(cls_Score, 75), by: {bin(start_time, 1hr), page.name}"
            },
            "querySettings": {
              "defaultSamplingRatio": 10,
              "defaultScanLimitGbytes": 500,
              "enableSampling": false,
              "maxResultMegaBytes": 1,
              "maxResultRecords": 1000
            },
            "result": {
              "code": 200,
              "dateTime": "2025-06-27T16:53:47.943Z",
              "input": {
                "timeframe": {
                  "from": "@d",
                  "to": "now()"
                },
                "value": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.cumulative_layout_shift)\n| fields page.name, web_vitals.cumulative_layout_shift, start_time\n| fieldsAdd cls_Score = web_vitals.cumulative_layout_shift * .001\n| summarize CLS = percentile(cls_Score, 75), by: {bin(start_time, 1hr), page.name}"
              },
              "notifications": [],
              "querySettings": {
                "defaultSamplingRatio": 10,
                "defaultScanLimitGbytes": 500,
                "enableSampling": false,
                "maxResultMegaBytes": 1,
                "maxResultRecords": 1000
              },
              "value": {
                "metadata": {
                  "grail": {
                    "analysisTimeframe": {
                      "end": "2025-06-27T16:53:47.559000000Z",
                      "start": "2025-06-26T22:00:00.000000000Z"
                    },
                    "canonicalQuery": "fetch user.events\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.cumulative_layout_shift)\n| fields page.name, web_vitals.cumulative_layout_shift, start_time\n| fieldsAdd cls_Score = web_vitals.cumulative_layout_shift * 0.001\n| summarize by:{bin(start_time, 1h), page.name}, CLS = percentile(cls_Score, 75)",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 95,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "fetch user.events\n//filter to specific application on the next line\n//| filter dt.rum.application.entity == \"Application-ID\" //Optional: Application Filter\n| filter characteristics.has_page_summary\n| filter isNotNull(web_vitals.cumulative_layout_shift)\n| fields page.name, web_vitals.cumulative_layout_shift, start_time\n| fieldsAdd cls_Score = web_vitals.cumulative_layout_shift * .001\n| summarize CLS = percentile(cls_Score, 75), by: {bin(start_time, 1hr), page.name}",
                    "queryId": "003447fb-3b13-42e5-9094-775b998d21ba",
                    "sampled": false,
                    "scannedBytes": 7799159365,
                    "scannedDataPoints": 0,
                    "scannedRecords": 6406333,
                    "timezone": "Europe/Vienna"
                  }
                },
                "records": [
                  {
                    "CLS": 0.000016345696400572717,
                    "bin(start_time, 1h)": "2025-06-27T00:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T00:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T00:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.00015527365745200813,
                    "bin(start_time, 1h)": "2025-06-27T00:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T00:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T00:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.0000032787752064521893,
                    "bin(start_time, 1h)": "2025-06-27T00:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T00:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T00:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0.00002313765930864687,
                    "bin(start_time, 1h)": "2025-06-27T01:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T01:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T01:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.0002795014149220308,
                    "bin(start_time, 1h)": "2025-06-27T01:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T01:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T01:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0.0000032787752064521893,
                    "bin(start_time, 1h)": "2025-06-27T01:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T01:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T01:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0.000008876270581356154,
                    "bin(start_time, 1h)": "2025-06-27T02:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T02:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T02:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.0003615036868874272,
                    "bin(start_time, 1h)": "2025-06-27T02:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.00016198174063957745,
                    "bin(start_time, 1h)": "2025-06-27T02:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0.000014302118865228915,
                    "bin(start_time, 1h)": "2025-06-27T02:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T02:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T02:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0.000006450035644063084,
                    "bin(start_time, 1h)": "2025-06-27T03:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T03:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T03:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.0003239656316264242,
                    "bin(start_time, 1h)": "2025-06-27T03:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.00013488534251829783,
                    "bin(start_time, 1h)": "2025-06-27T03:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T03:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0.000014302118865228915,
                    "bin(start_time, 1h)": "2025-06-27T03:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T03:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T03:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0.000026230201651617413,
                    "bin(start_time, 1h)": "2025-06-27T04:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T04:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T04:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.00021992060012907333,
                    "bin(start_time, 1h)": "2025-06-27T04:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.00011441695092183087,
                    "bin(start_time, 1h)": "2025-06-27T04:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T04:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T04:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.000013144133581832493,
                    "bin(start_time, 1h)": "2025-06-27T04:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T04:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T04:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0.000008504399036005688,
                    "bin(start_time, 1h)": "2025-06-27T05:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T05:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T05:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.00042119337635359905,
                    "bin(start_time, 1h)": "2025-06-27T05:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.0001113,
                    "bin(start_time, 1h)": "2025-06-27T05:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T05:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T05:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.000002220149755248518,
                    "bin(start_time, 1h)": "2025-06-27T05:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T05:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T05:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0.000020417597994815217,
                    "bin(start_time, 1h)": "2025-06-27T06:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T06:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T06:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.0001699,
                    "bin(start_time, 1h)": "2025-06-27T06:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.000163,
                    "bin(start_time, 1h)": "2025-06-27T06:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T06:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T06:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.0000032787752064521893,
                    "bin(start_time, 1h)": "2025-06-27T06:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T06:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T06:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T07:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T07:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T07:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.00025309999999999997,
                    "bin(start_time, 1h)": "2025-06-27T07:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.0000418541895723363,
                    "bin(start_time, 1h)": "2025-06-27T07:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T07:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.0000022987852970246366,
                    "bin(start_time, 1h)": "2025-06-27T07:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T07:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T07:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0.000007187176965652838,
                    "bin(start_time, 1h)": "2025-06-27T08:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T08:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T08:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.00024954513945647534,
                    "bin(start_time, 1h)": "2025-06-27T08:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.0001764550603218165,
                    "bin(start_time, 1h)": "2025-06-27T08:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T08:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T08:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.0000025282813087348625,
                    "bin(start_time, 1h)": "2025-06-27T08:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T08:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T08:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0.000002982777599653157,
                    "bin(start_time, 1h)": "2025-06-27T09:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T09:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T09:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.0002707441672529953,
                    "bin(start_time, 1h)": "2025-06-27T09:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.00006528453096736354,
                    "bin(start_time, 1h)": "2025-06-27T09:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T09:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.0000025282813087348625,
                    "bin(start_time, 1h)": "2025-06-27T09:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T09:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T09:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T10:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T10:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T10:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.0002276750844589674,
                    "bin(start_time, 1h)": "2025-06-27T10:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T10:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T10:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0.0000040717726041655,
                    "bin(start_time, 1h)": "2025-06-27T10:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T10:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T10:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0.000015517590008607543,
                    "bin(start_time, 1h)": "2025-06-27T11:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T11:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0.000002757110317528405,
                    "bin(start_time, 1h)": "2025-06-27T11:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.00034806997584612646,
                    "bin(start_time, 1h)": "2025-06-27T11:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.0000735,
                    "bin(start_time, 1h)": "2025-06-27T11:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T11:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T11:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.000010113125234939423,
                    "bin(start_time, 1h)": "2025-06-27T11:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T11:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T11:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T12:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T12:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0.000002757110317528405,
                    "bin(start_time, 1h)": "2025-06-27T12:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.0001842673932707208,
                    "bin(start_time, 1h)": "2025-06-27T12:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.0001179,
                    "bin(start_time, 1h)": "2025-06-27T12:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T12:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0.00001058425002769538,
                    "bin(start_time, 1h)": "2025-06-27T12:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T12:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T12:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0.000016265346576739446,
                    "bin(start_time, 1h)": "2025-06-27T13:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T13:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T13:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.00037984907325340446,
                    "bin(start_time, 1h)": "2025-06-27T13:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T13:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T13:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.000010113125234939423,
                    "bin(start_time, 1h)": "2025-06-27T13:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T13:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T13:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T14:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T14:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T14:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.000249554185633379,
                    "bin(start_time, 1h)": "2025-06-27T14:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.00020361399603173526,
                    "bin(start_time, 1h)": "2025-06-27T14:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T14:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T14:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.000014302118865228915,
                    "bin(start_time, 1h)": "2025-06-27T14:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T14:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T14:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T15:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T15:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T15:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.00023648959021932444,
                    "bin(start_time, 1h)": "2025-06-27T15:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.00024954513945647534,
                    "bin(start_time, 1h)": "2025-06-27T15:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T15:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0.000014302118865228915,
                    "bin(start_time, 1h)": "2025-06-27T15:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T15:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T15:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0.000002757110317528405,
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.0002712034732167966,
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.000027042149586511814,
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.000005514220635056801,
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T16:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0.000024905141917700586,
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.00014198242833368696,
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.000005514220635056801,
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T17:00:00.000000000+02:00",
                    "page.name": "/report"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/account/logon"
                  },
                  {
                    "CLS": 0.000002757110317528405,
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/booking"
                  },
                  {
                    "CLS": 0.0002276750844589674,
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/easytravel/contact"
                  },
                  {
                    "CLS": 0.00013935712948169493,
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/easytravel/home"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/easytravel/login"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/easytravel/signup"
                  },
                  {
                    "CLS": 0.000002757110317528405,
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/journey"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/location"
                  },
                  {
                    "CLS": 0,
                    "bin(start_time, 1h)": "2025-06-27T18:00:00.000000000+02:00",
                    "page.name": "/report"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      177
                    ],
                    "mappings": {
                      "CLS": {
                        "type": "double"
                      },
                      "bin(start_time, 1h)": {
                        "type": "timestamp"
                      },
                      "page.name": {
                        "type": "string"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "lineChart",
            "visualizationSettings": {
              "autoSelectVisualization": false,
              "chartSettings": {
                "categoricalBarChartSettings": {
                  "categoryAxisLabel": "page.url.path",
                  "categoryAxisTickLayout": "horizontal",
                  "colorPaletteMode": "multi-color",
                  "groupMode": "stacked",
                  "layout": "horizontal",
                  "scale": "absolute",
                  "tooltipVariant": "single",
                  "valueAxisLabel": "CLS",
                  "valueAxisScale": "linear"
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
                    "CLS"
                  ],
                  "timestamp": "bin(start_time, 1h)"
                },
                "gapPolicy": "connect",
                "hiddenLegendFields": [],
                "leftYAxisSettings": {},
                "pointsDisplay": "auto",
                "truncationMode": "middle",
                "valueRepresentation": "absolute",
                "xAxisIsLabelVisible": false,
                "xAxisLabel": "bin(start_time, 1h)",
                "xAxisScaling": "analyzedTimeframe"
              },
              "histogram": {
                "colorPalette": "categorical",
                "dataMappings": [
                  {
                    "rangeAxis": "",
                    "valueAxis": "CLS"
                  }
                ],
                "displayedFields": [
                  "page.url.path"
                ],
                "legend": "auto",
                "truncationMode": "middle",
                "variant": "single",
                "yAxis": {
                  "isLabelVisible": true,
                  "label": "Frequency",
                  "scale": "linear"
                }
              },
              "honeycomb": {
                "colorMode": "color-palette",
                "colorPalette": "blue",
                "dataMappings": {
                  "value": "CLS"
                },
                "displayedFields": [
                  "page.url.path"
                ],
                "labels": {
                  "showLabels": false
                },
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
                "showLabel": false
              },
              "singleValue": {
                "alignment": "center",
                "autoscale": true,
                "colorThresholdTarget": "value",
                "isIconVisible": false,
                "label": "page.title",
                "prefixIcon": "",
                "recordField": "page.title",
                "showLabel": true,
                "trend": {
                  "isVisible": false,
                  "trendType": "auto"
                }
              },
              "table": {
                "columnTypeOverrides": [],
                "columnWidths": {},
                "enableSparklines": false,
                "firstVisibleRowIndex": 0,
                "hiddenColumns": [],
                "lineWrapIds": [],
                "linewrapEnabled": false,
                "monospacedFontColumns": [],
                "monospacedFontEnabled": false,
                "rowDensity": "condensed",
                "sortBy": {
                  "columnId": "[\"page.title\"]",
                  "direction": "ascending"
                }
              },
              "thresholds": [],
              "valueBoundaries": {
                "max": "auto",
                "min": "auto"
              }
            }
          },
          "type": "dql"
        },
        {
          "id": "11a3b2f5-dbec-4e6f-a4be-d931037c86e8",
          "markdown": "![](https://cdn.bfldr.com/B686QPH3/at/4qqsnnn959srjj3r786mkssv/BAE9730_Insights-Lockup-Horizontal-RGB_Gray.svg?auto=webp\u0026format=png)\n\n---\nThis notebook template was created by the [Dynatrace Business Insights](https://www.dynatrace.com/services-support/business-insights/?utm_medium=website\u0026utm_source=core-web-vital-exploration-notebook\u0026utm_campaign=global-optimize-apps\u0026utm_content=none\u0026utm_term=25q4) team: Digital Experience experts that help Dynatrace customers:\n- Accelerate and maximize the value of their Dynatrace investment across the DEM and Business Analytics Solutions \n- Extend and expand core Dynatrace use cases with advanced analytics, exclusive technology and business reporting\n- Drive digital optimization with human expertise\n\n#### Connecting with the Business Insights Team\n* If you're interested in learning more about the Business Insights service, please visit this [link﻿](https://www.dynatrace.com/services-support/business-insights/?utm_medium=website\u0026utm_source=core-web-vital-exploration-notebook\u0026utm_campaign=global-optimize-apps\u0026utm_content=none\u0026utm_term=25q4) and reach out to your Dynatrace account team. \n* If you are already a Business Insights customer and are looking for help in exploring additional use cases, have questions about this notebook or requests for expansion, please reach out to your resources on the Insights team. ",
          "type": "markdown"
        }
      ],
      "version": "7"
    })
  custom_id = "dynatrace.experience.vitals.core-web-vitals"
  # private = false
}
