resource "dynatrace_document" "dql_processor_to_extract_part_of_a_log_content_as_string_field" {
  name    = "dql processor to extract part of a log content as string field"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "dql processor to extract part of a log content as string field"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "0164ab58-3537-4b8c-a4e6-a12f16fcfcde",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Parse log lines and extract a metric — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline/use-cases/tutorial-log-processing-pipeline"
            },
            {
              "title": "OpenPipeline processing examples — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline/use-cases/processing-examples"
            },
            {
              "title": "Log processing examples — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-log-processing/lma-log-processing-examples"
            }
          ],
          "state": {
            "conversationId": "e24149f8-8bca-46cc-9550-7dcdfe09e18c",
            "history": [
              {
                "role": "user",
                "text": "dql processor to extract part of a log content as string field"
              },
              {
                "role": "ai",
                "text": "To extract part of a log content as a string field using a DQL processor, follow these steps:\n\n1. **Location**: Go to **OpenPipeline** \u003e **Logs** \u003e **Pipelines**.\n2. **Create Pipeline**: Select **Pipeline** and enter a name for the pipeline.\n3. **Configure Processor**:\n   - Go to **Processing** \u003e **Processor** \u003e **DQL**.\n   - Enter a descriptive name for the processor.\n   - Define the matching condition to identify relevant logs.\n   - Define the processor definition to parse the content and extract the string field.\n\nFor example, to extract a string field from the log content, you can use the following processor definition:\n```unknown\nparse content, \"JSON{STRING:stringField:new.name}(flat=true)\"\n```\n\n4. **Run Sample Data**: Enter a sample log data and select **Run sample data** to test the processor.\n5. **Save**: Save the pipeline configuration.\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To extract part of a log content as a string field using a DQL processor, follow these steps:\n\n1. **Location**: Go to **OpenPipeline** \u003e **Logs** \u003e **Pipelines**.\n2. **Create Pipeline**: Select **Pipeline** and enter a name for the pipeline.\n3. **Configure Processor**:\n   - Go to **Processing** \u003e **Processor** \u003e **DQL**.\n   - Enter a descriptive name for the processor.\n   - Define the matching condition to identify relevant logs.\n   - Define the processor definition to parse the content and extract the string field.\n\nFor example, to extract a string field from the log content, you can use the following processor definition:\n```unknown\nparse content, \"JSON{STRING:stringField:new.name}(flat=true)\"\n```\n\n4. **Run Sample Data**: Enter a sample log data and select **Run sample data** to test the processor.\n5. **Save**: Save the pipeline configuration.\n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
        },
        {
          "role": "user",
          "text": "dynamic routing for logs from a specific host group"
        },
        {
          "complete": true,
          "isJsonParsingError": true,
          "messageToken": "22a2a103-4419-47fc-be06-f481b835a548",
          "role": "ai",
          "text": "To set up dynamic routing for logs from a specific host group, follow these steps:\n\n1. **Create an access token**:\n   - Generate an access token with the **Write settings** (`settings.write`) and **Read settings** (`settings.read`) scopes.\n\n2. **Get the schema**:\n   - Use the [GET a schema](https://www.dynatrace.com/support/help/dynatrace-api/environment-api/settings/schemas/get-schema) endpoint to learn the JSON format required to post your configuration. The log ingest rules schema identifier (`schemaId`) is `builtin:logmonitoring.log-storage-settings`.\n\n3. **Define log ingest rules**:\n   - Create a JSON payload with the log ingest rules for the specific host group. Here is an example:\n\n```json\n[\n  {\n    \"schemaId\": \"builtin:logmonitoring.log-storage-settings\",\n    \"scope\": \"HOST_GROUP-1D91E46493049D07\",\n    \"value\": {\n      \"enabled\": true,\n      \"config-item-title\": \"Dynamic routing for specific host group\",\n      \"send-to-storage\": true,\n      \"matchers\": [\n        {\n          \"attribute\": \"k8s.namespace.name\",\n          \"operator\": \"MATCHES\",\n          \"values\": [\"*\"]\n        }\n      ]\n    }\n  }\n]\n```\n\n4. **Post the configuration**:\n   - Use the [Create new configuration object]("
        },
        {
          "role": "user",
          "text": "how does the condition for setting up a dynamic routing for logs work"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "9389565c-7bb2-42b8-8189-7ca294cdabf3",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Ingest Microsoft Entra ID sign-in logs — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/secure/threat-observability/security-events-ingest/ingest-microsoft-entra-id"
            },
            {
              "title": "Detect problems with Logs — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases/lma-detect-problems-with-logs"
            },
            {
              "title": "Data flow — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline/concepts/data-flow"
            },
            {
              "title": "Route data — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline/getting-started/how-to-routing"
            }
          ],
          "state": {
            "conversationId": "e25d73ee-3a3b-4b9f-878c-641a5081cee0",
            "history": [
              {
                "role": "user",
                "text": "how does the condition for setting up a dynamic routing for logs work"
              },
              {
                "role": "ai",
                "text": "To set up dynamic routing for logs, you need to define a matching condition that determines which logs should be routed to a specific pipeline. Here are the steps:\n\n1. **Define the Matching Condition**:\n   - The matching condition is a Dynatrace Query Language (DQL) query that specifies the criteria for routing logs.\n   - Example condition: `matchesValue(cloud.provider, \"azure\") AND matchesPhrase(content, \"\\\"SignInLogs\\\"\")`\n\n2. **Create a Dynamic Route**:\n   - Go to **OpenPipeline** \u003e **Logs** \u003e **Dynamic routing**.\n   - Enter a name for the route.\n   - Set the matching condition.\n   - Select the target pipeline.\n\n3. **Save the Route**:\n   - Save the dynamic route to apply the routing rules.\n\nLogs that match the defined condition will be routed to the specified pipeline for further processing."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To set up dynamic routing for logs, you need to define a matching condition that determines which logs should be routed to a specific pipeline. Here are the steps:\n\n1. **Define the Matching Condition**:\n   - The matching condition is a Dynatrace Query Language (DQL) query that specifies the criteria for routing logs.\n   - Example condition: `matchesValue(cloud.provider, \"azure\") AND matchesPhrase(content, \"\\\"SignInLogs\\\"\")`\n\n2. **Create a Dynamic Route**:\n   - Go to **OpenPipeline** \u003e **Logs** \u003e **Dynamic routing**.\n   - Enter a name for the route.\n   - Set the matching condition.\n   - Select the target pipeline.\n\n3. **Save the Route**:\n   - Save the dynamic route to apply the routing rules.\n\nLogs that match the defined condition will be routed to the specified pipeline for further processing."
        }
      ]
    })
  private = true
}
