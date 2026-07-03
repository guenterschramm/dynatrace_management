resource "dynatrace_document" "Getting_started_with_Business_Observability" {
  name    = "Getting started with Business Observability"
  type    = "notebook"
  content = jsonencode({
      "defaultTimeframe": {
        "from": "now-2h",
        "to": "now"
      },
      "sections": [
        {
          "id": "4becc036-acd5-4985-ae63-e6cad53f2000",
          "markdown": "# Hands on Business Observability\n\n### What you will learn\n- [x] How to ingest \"[business events](https://www.dynatrace.com/support/help/platform-modules/business-observability/bo-api-ingest)\" (a.k.a generic data) into Dynatrace without OneAgent\n- [x] What are the prerequisites\n- [x] Importance of `event.provider` and `event.type` attributes\n- [x] Automating the ingest via AutomationEngine\n- [x] Enriching the data\n- [x] Analytics, Dashboards, and more\n\nReference:\n- Online documentation: [Business Observability](https://www.dynatrace.com/support/help/platform-modules/business-observability)\n- [Basic concepts of Dynatrace Business Observability](https://www.dynatrace.com/support/help/shortlink/bo-basic-concepts)",
          "type": "markdown"
        },
        {
          "id": "d7488bcb-d354-46b0-b2b7-53f35ec4753d",
          "markdown": "## What you need to know first...\n\n### Business event\n\nAn event is an action or occurrence that takes place within a system or a \"service\". The system ***produces a signal*** when an event occurs. An event becomes a business event when it generates business-grade data.\n\n### Business events can come from many sources\n- Non-OneAgent sources, example [CloudEvents](https://cloudevents.io/)\n- OneAgent, stored in the `bizevents` Grail table as bizevents data object\n- RUM data, stored in the `bizevents` Grail table as bizevents data object\n- Generic data ingest via bizevents API endpoint, stored in the `bizevents` Grail table as bizevents data object\n- Logs, currently stored in the `logs` table, as logs data object. Enhancements coming in future to allow log data sources to be stored as bizevents data object.\n\n### Why is this important?\n\nDynatrace prioritizes business events separately from observability data to ensure business-grade data.\n\n### What is Business-grade data?\n\nPrecise data that doesn't rely on samples to report baselines, identify trends, or alert on anomalies with statistical accuracy.\n\nBusiness-grade data is often required for business decisions and reporting where ***precision is critical***.\n\nContrast this with typical IT reporting which achieves statistical accuracy through sampling and extrapolation.",
          "type": "markdown"
        },
        {
          "id": "199c0513-b8b8-4305-9231-a6fb49e70d75",
          "markdown": "## Listen and watch\n--- \n##### Prerequisites\n- OAuth2 bearer token for API access\n- [JSON format in request body](https://www.dynatrace.com/support/help/shortlink/bo-api-ingest#request-body) for BizEvents API endpoint\n\n##### Note\nOAuth2 will be key to accessing more and more critical aspects of the new platform. It is important for you to know how to do this.\n\nHowever, this is somewhat like a \"do once and forget\" task, so it is not often executed and thus many will lack practice.\n\nDo practice and exchange tips with your peers.\n\n##### Resources\nWhat is OAuth?\n- [Wikipeidea](https://en.wikipedia.org/wiki/OAuth)\n- [Youtube](https://www.youtube.com/watch?v=LD3NCUP5hW4)\n\nHow is it set in Dynatrace?\n- [Online docs](https://www.dynatrace.com/support/help/dynatrace-api/basics/dynatrace-api-authentication/account-api-authentication)\n\n##### Demo\n- Creating OAuth2 bearer token\n- Take note of the unique properties of a bearer token\n- Building the API query and using the bearer token\n- Example of data ingest via your favourite API tool",
          "type": "markdown"
        },
        {
          "id": "b8ca400b-f7a0-4b1c-8b0a-b0489cc3d732",
          "markdown": "## Follow and do\n\nOverview of the tasks\n1. Automate\n1. Build query\n1. Enriching the data\n1. Build dashboards etc.",
          "type": "markdown"
        },
        {
          "id": "92d1de22-7f09-4385-88cf-dab3aac40ffd",
          "markdown": "### Step 1: Automate \n--- \n\n- Create a workflow to ingest data from a public API source\n  - Use on-demand trigger\n- Create a task to get the bearer token\n  - Copy the payload from the example workflow or from here\n  ```\n  grant_type=client_credentials\u0026client_id=[CLIENTID goes here]client_secret=[CLIENTSECRET goes here]\n  ```\n  - Replace the strings in square brackets with your own `clientid` and `clientsecret`\n- Create a task to get the data from a public API\n  - Use `Http request`\n  - Enter the external API URL in the `URL field`\n- Create a task to insert the data via the `bizevents` Dynatrace API\n  - Use `Http request`\n  - payload\n    - enter `{{result(\"name_of_task\").json.\u003creplace with the data structure of your JSON results\u003e }}`\n  - ensure you set the headers\n    - Content-Type\n      - Pure JSON: no mandatory fields. Content-Type `application/json`\n      - CloudEvent: Mandatory fields are Specversion, Source, Type, Id. Content-Type `application/cloudevent+json`\n      - CloudEvent batch (batch ingest of events): Mandatory fields as above. Content-Type `cloudevent-batch+json`\n    - Authorization\n      - `Bearer {{ result(\"get_bearer_token\").json.access_token }}`\n\n##### Discussion points\n- Use `Run Javascript task` if need to do advanced \"computation\" or \"logic\" with the data. (Industry term - \"transform the data\".)\n- [Jinja templating engine](https://www.dynatrace.com/support/help/platform-modules/cloud-automation/workflows/reference) can also be used within `Http request task` to \"transform\" the payload data",
          "type": "markdown"
        },
        {
          "id": "15ebff0c-6205-48e6-b1cc-faccbed6426b",
          "markdown": "### Step 2: Validate the data\n--- \n\nLet's start by validating what data we have first.\n\n##### Discussion points\n- What do you notice when you query the data? Is it easy to find out which dataset is yours?\n- What if you would like to define how your data will be processed further?",
          "type": "markdown"
        },
        {
          "davisAnalytics": {
            "analyzerComponentState": {
              "resultState": {}
            }
          },
          "id": "0786560c-8c2d-4583-9550-31309840fe9a",
          "showTitle": false,
          "state": {
            "input": {
              "timeframe": {
                "from": "now-2h",
                "to": "now"
              },
              "value": "fetch bizevents"
            },
            "state": "idle",
            "visualizationSettings": {
              "chartSettings": {
                "circleChartSettings": {
                  "groupingThresholdType": "absolute"
                },
                "gapPolicy": "connect"
              },
              "singleValue": {
                "autoscale": true,
                "label": "",
                "showLabel": true
              },
              "table": {
                "columnWidths": {},
                "enableSparklines": false,
                "firstVisibleRowIndex": 0,
                "hiddenColumns": [],
                "lineWrapIds": [],
                "rowDensity": "condensed"
              }
            }
          },
          "type": "dql"
        },
        {
          "id": "85b10d2c-b709-4b34-8e71-d03b0c896738",
          "markdown": "### Step 3: Enriching the data\n---\n\n- [Predefined attributes](https://www.dynatrace.com/support/help/shortlink/ba-business-events-enrichment) automated if using OneAgent and RUM, further enrichment can be done\n- If using API, some important attributes require configuration\n- This is done via [Business events processing](https://www.dynatrace.com/support/help/shortlink/ba-business-events-processing)\n\nWe will enrich the incoming data set with the following 2 attributes\n- `event.provider`\n- `event.type`\n\n###### 3.1\nGo to Settings \u003e Business Analytics \u003e Ingest Pipeline \u003e Processing\n\n###### 3.2\nGive the rule a name and add matcher\n\n###### 3.3\nAdd the necessary DQL under `Processor definition`.\n\n###### 3.4\nTest the rule and remember to Save\n\n###### 3.5\n- Trigger the workflow and query Dynatrace again, now with the `event.provider` attribute as a filter.\n- What do you notice now after you query for the data?",
          "type": "markdown"
        },
        {
          "id": "1416beec-b33f-4e5c-a054-6cb40897c7a0",
          "markdown": "### Step 4: Build dashboards etc.\n---\n\nNow that we have organized the data, let's see... what should we do with the data?\n\nEven if we would like to build dashboards, we need an objective, won't we?\n\nFor a start let's answer this question: ***\"Which are the most popular rental spots in the city?\"***\n\nBuild a dashboard that can visualize this data. Use category chats and switch it to horizontal. Play around with the visualization!\n\n##### Discussion points\n- From here, let's see what else can we do with the data...",
          "type": "markdown"
        },
        {
          "davisAnalytics": {
            "analyzerComponentState": {
              "resultState": {}
            }
          },
          "id": "1db4f97e-4ed9-4bf4-8215-885ccef7bef6",
          "showTitle": false,
          "state": {
            "input": {
              "timeframe": {
                "from": "now-2h",
                "to": "now"
              },
              "value": "fetch bizevents\n| summarize popular = count(), by: {RENT_NM}\n| filter popular \u003c 1000\n| sort popular desc\n| limit 20"
            },
            "state": "idle",
            "visualizationSettings": {
              "chartSettings": {
                "circleChartSettings": {
                  "groupingThresholdType": "absolute"
                },
                "gapPolicy": "connect"
              },
              "singleValue": {
                "autoscale": true,
                "label": "",
                "showLabel": true
              },
              "table": {
                "columnWidths": {},
                "enableSparklines": false,
                "firstVisibleRowIndex": 0,
                "hiddenColumns": [],
                "lineWrapIds": [],
                "rowDensity": "condensed"
              }
            }
          },
          "type": "dql"
        }
      ],
      "version": "5"
    })
  private = true
}
