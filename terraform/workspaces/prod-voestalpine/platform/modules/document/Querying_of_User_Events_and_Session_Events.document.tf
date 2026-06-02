resource "dynatrace_document" "Querying_of_User_Events_and_Session_Events" {
  name      = "Querying of User Events and Session Events"
  type      = "notebook"
  content   = jsonencode({
      "defaultSegments": [],
      "defaultTimeframe": {
        "from": "now()-24h",
        "to": "now()"
      },
      "sections": [
        {
          "id": "78889c49-ea42-46ca-980a-d3fa82284188",
          "markdown": "# Querying of User Events and Session Events\n**The purpose of this notebook is to list typical queries for investigating and exploring Users Sessions.**\n\nFor more information check:\n\n[Dynatrace Query Language (DQL) documentation](https://docs.dynatrace.com/docs/discover-dynatrace/platform/grail/dynatrace-query-language)\n\n[Semantic Dictionary](https://docs.dynatrace.com/docs/discover-dynatrace/references/semantic-dictionary/model/user-sessions)",
          "type": "markdown"
        },
        {
          "id": "ba5af4e5-717a-49c8-b6ad-1f8a7a75fd49",
          "markdown": "---",
          "type": "markdown"
        },
        {
          "id": "225fb6c2-c17a-404c-a77c-6a8956807af4",
          "markdown": "**Exploring sessions data**\n\nIn many cases, session data may include elements with unclear or inconsistent characteristics. A typical example is a contract number, which may appear in various formats or locations, such as:\n* Embedded within a URL\n* Stored as a session property\n* Assigned as a user tag\nDue to this variability, identifying and retrieving relevant sessions can be challenging using standard filters. In such scenarios, the SEARCH command provides a flexible solution. It allows users to query across multiple data fields and formats, making it easier to find sessions based on partial or uncertain information.",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 293,
          "id": "fed28e3f-8768-431d-a6ae-c4e6019b25ed",
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
              "value": "// Replace 'phrase_of_interest' with your text\nfetch user.sessions\n| search \"phrase_of_interest\""
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
              "dateTime": "2025-09-17T08:31:31.370Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "// Replace 'phrase_of_interest' with your text\nfetch user.sessions\n| search \"phrase_of_interest\"\n"
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
                      "end": "2025-09-17T08:31:31.008000000Z",
                      "start": "2025-09-17T06:31:31.008000000Z"
                    },
                    "canonicalQuery": "fetch user.sessions\n| search \"phrase_of_interest\"",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 44,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "// Replace 'phrase_of_interest' with your text\nfetch user.sessions\n| search \"phrase_of_interest\"\n",
                    "queryId": "5e48bafa-88bd-4211-af64-6226645e5a41",
                    "sampled": false,
                    "scannedBytes": 1270535,
                    "scannedDataPoints": 0,
                    "scannedRecords": 3304,
                    "timezone": "Europe/Madrid"
                  }
                },
                "records": [],
                "types": []
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "autoSelectVisualization": true,
              "chartSettings": {}
            }
          },
          "type": "dql"
        },
        {
          "id": "16595c0e-cf38-4d7a-880b-d9bb9c49eb48",
          "markdown": "---",
          "type": "markdown"
        },
        {
          "id": "b433d00c-6477-4e55-b91e-37e66dbd1683",
          "markdown": "**Finding sessions with a specific page visited**\n\nSession Events contain basic session data, such as browser name, device, and user tag, and aggregated data such as the number of errors or user interactions during this session. \n\nData stored in user events must be queried for more precise session finding. \n\nThis example displays all unique session IDs of all events that the field url.full contains the phrase \"page_of_interest\"",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 293,
          "id": "0753a1dd-b2a5-44d1-99c5-4da48538cb9b",
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
              "value": "// Peplace \"page\" with you page of interest\nfetch user.events\n| filter contains(url.full, \"page\")\n| fields dt.rum.session.id, start_time, end_time\n| dedup dt.rum.session.id\n| limit 10"
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
              "dateTime": "2025-09-17T08:36:33.055Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "// replace \"page\" with you page of interest\n\nfetch user.events\n| filter contains(url.full, \"page\")\n| fields dt.rum.session.id, start_time, end_time\n| dedup dt.rum.session.id\n| limit 10\n"
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
                      "end": "2025-09-17T08:36:31.786000000Z",
                      "start": "2025-09-17T06:36:31.786000000Z"
                    },
                    "canonicalQuery": "fetch user.events\n| filter contains(url.full, \"page\")\n| fields dt.rum.session.id, start_time, end_time\n| dedup dt.rum.session.id\n| limit 10",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 175,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "// replace \"page\" with you page of interest\n\nfetch user.events\n| filter contains(url.full, \"page\")\n| fields dt.rum.session.id, start_time, end_time\n| dedup dt.rum.session.id\n| limit 10\n",
                    "queryId": "75a63117-d8b3-4b42-a19a-9bb86b6c2260",
                    "sampled": false,
                    "scannedBytes": 733702029,
                    "scannedDataPoints": 0,
                    "scannedRecords": 1421405,
                    "timezone": "Europe/Madrid"
                  }
                },
                "records": [
                  {
                    "dt.rum.session.id": "AACTHICKHSRSBVSDJLVVNVVPUKHJUIME-0",
                    "end_time": "2025-09-17T10:16:38.340000128+02:00",
                    "start_time": "2025-09-17T10:16:38.182000128+02:00"
                  },
                  {
                    "dt.rum.session.id": "AAUIEHOFRETRUINEBQVCDUKHBUURAUAP-0",
                    "end_time": "2025-09-17T10:28:14.639299871+02:00",
                    "start_time": "2025-09-17T10:28:14.501999872+02:00"
                  },
                  {
                    "dt.rum.session.id": "AAUPSHVNVBRGLLMAUBHCRGCSUJAQTKNR-0",
                    "end_time": "2025-09-17T09:03:57.105799936+02:00",
                    "start_time": "2025-09-17T09:03:53.432999936+02:00"
                  },
                  {
                    "dt.rum.session.id": "AEKULSKSQWAJUHQCUNSKSGRFFHFEKBFH-0",
                    "end_time": "2025-09-17T08:45:20.888900000+02:00",
                    "start_time": "2025-09-17T08:45:20.656000000+02:00"
                  },
                  {
                    "dt.rum.session.id": "AFCFHHBUNKGPATGFQCHPBSMCRDTRVTPC-0",
                    "end_time": "2025-09-17T08:53:14.337699936+02:00",
                    "start_time": "2025-09-17T08:53:13.916999936+02:00"
                  },
                  {
                    "dt.rum.session.id": "AGRIUMEKUDVWFMLPWCWVTFCOJMJMTFOH-0",
                    "end_time": "2025-09-17T10:18:54.816900064+02:00",
                    "start_time": "2025-09-17T10:18:54.635000064+02:00"
                  },
                  {
                    "dt.rum.session.id": "AHAVPAULKRMAHPUWDKSHNHEPVKDQDIMH-0",
                    "end_time": "2025-09-17T10:34:43.472999936+02:00",
                    "start_time": "2025-09-17T10:34:42.960999936+02:00"
                  },
                  {
                    "dt.rum.session.id": "AHMPGFFSUJKHHSRDUQMCGMHRWUKTRUNH-0",
                    "end_time": "2025-09-17T09:48:28.960199936+02:00",
                    "start_time": "2025-09-17T09:48:28.840999936+02:00"
                  },
                  {
                    "dt.rum.session.id": "AHRQMCENJWIVOMPQPJMPUOPGSLUSVGMQ-0",
                    "end_time": "2025-09-17T10:35:49.305400064+02:00",
                    "start_time": "2025-09-17T10:35:49.155000064+02:00"
                  },
                  {
                    "dt.rum.session.id": "AKHJKJLAURQUULAEBKRHRKACGKWFWGAD-0",
                    "end_time": "2025-09-17T09:45:41.014600191+02:00",
                    "start_time": "2025-09-17T09:45:40.829000192+02:00"
                  }
                ],
                "types": [
                  {
                    "indexRange": [
                      0,
                      9
                    ],
                    "mappings": {
                      "dt.rum.session.id": {
                        "type": "string"
                      },
                      "end_time": {
                        "type": "timestamp"
                      },
                      "start_time": {
                        "type": "timestamp"
                      }
                    }
                  }
                ]
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "autoSelectVisualization": true,
              "chartSettings": {}
            }
          },
          "type": "dql"
        },
        {
          "id": "95d5d243-8e9d-4b3e-baf6-9e33eb0a6f13",
          "markdown": "**What are the top browsers used with my frontend?**\n\nInformation about the browser name is stored in User Session events, so it is possible to base on those events. The first step is to filter all sessions that have investigated front-end ID in the dt.rum.application.entities field. \n\nThen the results need to be summarized by browser name and sorted in descending order for clarity.\n\nThis type of result is often presented in a pie chart. It can be selected in query options.  ",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 277,
          "id": "44b7ecce-f150-4721-9bc8-446a5b995c92",
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
              "value": "// Replace \"application_id\" with ID of application of your interest\nfetch user.sessions\n| filter in(dt.rum.application.entities,\"application_id\")\n| summarize count(), by: browser.name\n| sort `count()` desc"
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
              "dateTime": "2025-09-17T08:42:48.971Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "// Replace \"application_id\" with ID of application of your interest\nfetch user.sessions\n|filter in(dt.rum.application.entities,\"application_id\")\n|summarize count(), by: browser.name\n|sort `count()` desc"
              },
              "notifications": [
                {
                  "arguments": [],
                  "message": "The parameters should be grouped with curly braces: {}.",
                  "messageFormat": "The parameters should be grouped with curly braces: {}.",
                  "messageFormatSpecifierTypes": [],
                  "notificationType": "PARAMETERS_SHOULD_BE_GROUPED",
                  "severity": "info",
                  "syntaxPosition": {
                    "end": {
                      "column": 36,
                      "index": 180,
                      "line": 4
                    },
                    "start": {
                      "column": 25,
                      "index": 169,
                      "line": 4
                    }
                  }
                }
              ],
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
                      "end": "2025-09-17T08:42:48.622000000Z",
                      "start": "2025-09-17T06:42:48.622000000Z"
                    },
                    "canonicalQuery": "fetch user.sessions\n| filter in(dt.rum.application.entities, \"application_id\")\n| summarize by:{browser.name}, count()\n| sort `count()` desc",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 27,
                    "locale": "en-US",
                    "notifications": [
                      {
                        "arguments": [],
                        "message": "The parameters should be grouped with curly braces: {}.",
                        "messageFormat": "The parameters should be grouped with curly braces: {}.",
                        "messageFormatSpecifierTypes": [],
                        "notificationType": "PARAMETERS_SHOULD_BE_GROUPED",
                        "severity": "INFO",
                        "syntaxPosition": {
                          "end": {
                            "column": 36,
                            "index": 180,
                            "line": 4
                          },
                          "start": {
                            "column": 25,
                            "index": 169,
                            "line": 4
                          }
                        }
                      }
                    ],
                    "query": "// Replace \"application_id\" with ID of application of your interest\nfetch user.sessions\n|filter in(dt.rum.application.entities,\"application_id\")\n|summarize count(), by: browser.name\n|sort `count()` desc",
                    "queryId": "68109a1b-b29a-4d2c-837f-69370eafc1bb",
                    "sampled": false,
                    "scannedBytes": 1433842,
                    "scannedDataPoints": 0,
                    "scannedRecords": 3525,
                    "timezone": "Europe/Madrid"
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
              "chartSettings": {},
              "table": {
                "columnWidths": {
                  "[\"dt.rum.application.entities\"]": 357.22,
                  "[\"dt.security_context\"]": 346
                }
              }
            }
          },
          "type": "dql"
        },
        {
          "id": "c3c55175-5658-4a95-8159-80edcd81f0df",
          "markdown": "---",
          "type": "markdown"
        },
        {
          "id": "a1497918-ff6b-4632-80cf-d7ff3c6dd286",
          "markdown": "**How can I filter sessions with a combination of a user tag and a navigation to a specific page?**\n\nSome queries demand joining data from both the user events and session events tables. In this case, user sessions need to be filtered to get only results with a specific user tag. Then, the user event table must be filtered to find those that went through a particular page. \n\n`dedup`, `fields`, and `limit` are helpful to remove duplicates and decide on the fields that should be presented in the table to clarify the results. ",
          "type": "markdown"
        },
        {
          "drilldownPath": [],
          "filterSegments": [],
          "height": 185,
          "id": "07c2b1b6-37ea-4a6d-bca8-ec7682a332da",
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
              "value": "// Replace \"user_tag\" with actual user tag\n// Peplace \"page\" with you page of interest\nfetch user.sessions\n| fieldsAdd user.identifier = coalesce(user.identifier, dt.rum.user_tag)\n|filter user.identifier == \"user_tag\"\n| join [fetch user.events\n| filter contains(url.full, \"page\")],\n  on: { left[dt.rum.session.id] == right[dt.rum.session.id] },\n  fields: {dt.rum.session.id}\n| dedup dt.rum.session.id\n| fields dt.rum.session.id, start_time, end_time, user.identifier\n| limit 10"
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
              "dateTime": "2025-09-17T08:50:57.018Z",
              "input": {
                "timeframe": {
                  "from": "now()-2h",
                  "to": "now()"
                },
                "value": "// Replace \"user_tag\" with actual user tag\n// Peplace \"page\" with you page of interest\nfetch user.sessions\n| fieldsAdd user.identifier = coalesce(user.identifier, dt.rum.user_tag)\n|filter user.identifier == \"user_tag\"\n| join [fetch user.events\n| filter contains(url.full, \"page\")],\non: { left[dt.rum.session.id] == right[dt.rum.session.id] },\nfields: {dt.rum.session.id}\n| dedup dt.rum.session.id\n| fields dt.rum.session.id, start_time, end_time, user.identifier\n| limit 10"
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
                      "end": "2025-09-17T08:50:55.715000000Z",
                      "start": "2025-09-17T06:50:55.714000000Z"
                    },
                    "canonicalQuery": "fetch user.sessions\n| fieldsAdd user.identifier = coalesce(user.identifier, dt.rum.user_tag)\n| filter user.identifier == \"user_tag\"\n| join \n\t[\n\t\tfetch user.events\n\t\t| filter contains(url.full, \"page\")\n\t], on:{left[dt.rum.session.id] == right[dt.rum.session.id]}, fields:{dt.rum.session.id}\n| dedup dt.rum.session.id\n| fields dt.rum.session.id, start_time, end_time, user.identifier\n| limit 10",
                    "dqlVersion": "V1_0",
                    "executionTimeMilliseconds": 465,
                    "locale": "en-US",
                    "notifications": [],
                    "query": "// Replace \"user_tag\" with actual user tag\n// Peplace \"page\" with you page of interest\nfetch user.sessions\n| fieldsAdd user.identifier = coalesce(user.identifier, dt.rum.user_tag)\n|filter user.identifier == \"user_tag\"\n| join [fetch user.events\n| filter contains(url.full, \"page\")],\non: { left[dt.rum.session.id] == right[dt.rum.session.id] },\nfields: {dt.rum.session.id}\n| dedup dt.rum.session.id\n| fields dt.rum.session.id, start_time, end_time, user.identifier\n| limit 10",
                    "queryId": "7364e413-aacd-42f1-9eba-2c542157695a",
                    "sampled": false,
                    "scannedBytes": 2206605443,
                    "scannedDataPoints": 0,
                    "scannedRecords": 1584814,
                    "timezone": "Europe/Madrid"
                  }
                },
                "records": [],
                "types": []
              }
            },
            "state": "success",
            "visualization": "table",
            "visualizationSettings": {
              "autoSelectVisualization": true,
              "chartSettings": {}
            }
          },
          "title": "Maybe useful later",
          "type": "dql"
        }
      ],
      "version": "7"
    })
  custom_id = "dynatrace.users.sessions.querying-user-events-and-user-sessions"
  # private = false
}
