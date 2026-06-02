resource "dynatrace_document" "create_an_alert_when_specific_log_message_occurs" {
  name    = "create an alert when specific log message occurs"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "create an alert when specific log message occurs"
        },
        {
          "complete": true,
          "isJsonParsingError": true,
          "messageToken": "e49c3b9b-3bf1-484a-bc8a-39255fca508e",
          "role": "ai",
          "text": "To create an alert when a specific log message occurs, follow these steps:\n\n1. **Build and run a DQL query**:\n    - Go to **Logs** or **Logs \u0026 Events**.\n    - Turn on **Advanced mode**.\n    - Use the following query to filter logs based on your criteria:\n    ```plaintext\n    fetch logs| filter matchesValue(process.technology, \"nginx\")| filter matchesValue(loglevel, \"ERROR\")| filter matchesPhrase(content, \"Connection refused\")| fields timestamp,content, process.technology| parse content, \"LD '[error] ' INT:error_number '#' INT LD 'Connection refused' LD 'client:' SPACE? IPADDR:client_ip LD 'request:' SPACE? DQS:http_request\"| sort timestamp desc\n    ```\n    - Run the query to retrieve relevant logs.\n\n2. **Define and test a processing rule**:\n    - Select a row in the search results to display details.\n    - Select **Create processing rule**.\n    - Define the rule with the following details:\n        - **Rule name**: `NGINX connection refused: extract error, client IP, request`\n        - **Matcher**: \n        ```plaintext\n        matchesValue(loglevel, \"ERROR\") and matchesPhrase(content, \"Connection refused\") and matchesValue(process.technology, \"nginx\")\n        ```\n        - **Processor definition**:\n        ```plaintext\n        PARSE"
        },
        {
          "role": "user",
          "text": "parse requires parameters"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "e8c7ed65-779e-4e46-a266-7c24d33a44da",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "DQL Extraction and parsing commands — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-query-language/commands/extraction-and-parsing-commands"
            },
            {
              "title": "String functions — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-query-language/functions/string-functions"
            }
          ],
          "state": {
            "conversationId": "680fac88-d2d9-4a78-b082-63449dac363d",
            "history": [
              {
                "role": "user",
                "text": "parse requires parameters"
              },
              {
                "role": "ai",
                "text": "The `parse` command in Dynatrace requires the following parameters:\n\n1. **expression**: A field or string expression to parse.\n2. **pattern**: The parse pattern.\n\nOptional parameters:\n1. **preserveFieldsOnFailure**: A boolean that determines if field values should be preserved if parsing fails.\n2. **parsingPrerequisite**: A boolean that determines if the record should be parsed.\n\nExample usage:\n```plaintext\ndata record(content=\"117.16.75.9--[14/Mar/2016:23:34:25 +0200] GET//setup.php HTTP/1.1 404 474\")| parse content, \"IPV4:ip LD HTTPDATE:time ']' LD:text\"\n```"
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "The `parse` command in Dynatrace requires the following parameters:\n\n1. **expression**: A field or string expression to parse.\n2. **pattern**: The parse pattern.\n\nOptional parameters:\n1. **preserveFieldsOnFailure**: A boolean that determines if field values should be preserved if parsing fails.\n2. **parsingPrerequisite**: A boolean that determines if the record should be parsed.\n\nExample usage:\n```plaintext\ndata record(content=\"117.16.75.9--[14/Mar/2016:23:34:25 +0200] GET//setup.php HTTP/1.1 404 474\")| parse content, \"IPV4:ip LD HTTPDATE:time ']' LD:text\"\n```"
        },
        {
          "role": "user",
          "text": "count a specific log message"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "8703262b-e992-4a62-91cc-d988b6566eca",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Log Monitoring configuration (Logs Classic) — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/log-monitoring/log-monitoring-configuration"
            },
            {
              "title": "Log ingestion via OneAgent — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-log-ingestion/lma-log-ingestion-via-oa"
            },
            {
              "title": "Log on Grail examples — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/logs-on-grail-examples"
            }
          ],
          "state": {
            "conversationId": "680fac88-d2d9-4a78-b082-63449dac363d",
            "history": [
              {
                "role": "user",
                "text": "parse requires parameters"
              },
              {
                "role": "ai",
                "text": "The `parse` command in Dynatrace requires the following parameters:\n\n1. **expression**: A field or string expression to parse.\n2. **pattern**: The parse pattern.\n\nOptional parameters:\n1. **preserveFieldsOnFailure**: A boolean that determines if field values should be preserved if parsing fails.\n2. **parsingPrerequisite**: A boolean that determines if the record should be parsed.\n\nExample usage:\n```plaintext\ndata record(content=\"117.16.75.9--[14/Mar/2016:23:34:25 +0200] GET//setup.php HTTP/1.1 404 474\")| parse content, \"IPV4:ip LD HTTPDATE:time ']' LD:text\"\n```"
              },
              {
                "role": "user",
                "text": "count a specific log message"
              },
              {
                "role": "ai",
                "text": "To count occurrences of a specific log message in Dynatrace, follow these steps:\n\n1. **Search for relevant logs**:\n   - Go to **Logs** in the Dynatrace web UI.\n   - Use the search bar to filter logs containing the specific message.\n\n2. **Filter logs**:\n   - Apply filters to narrow down the logs to those containing the specific message.\n\n3. **Summarize occurrences**:\n   - Use the **summarize** function to count the occurrences of the specific log message.\n\nSorry, I cannot help you with this. \n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To count occurrences of a specific log message in Dynatrace, follow these steps:\n\n1. **Search for relevant logs**:\n   - Go to **Logs** in the Dynatrace web UI.\n   - Use the search bar to filter logs containing the specific message.\n\n2. **Filter logs**:\n   - Apply filters to narrow down the logs to those containing the specific message.\n\n3. **Summarize occurrences**:\n   - Use the **summarize** function to count the occurrences of the specific log message.\n\nSorry, I cannot help you with this. \n\nIf you want help with the creation of DQL queries you can use Davis CoPilot in Notebooks or Dashboards. Both applications support this in a specific Davis CoPilot section when pressing \"+\" to create a new cell or tile."
        },
        {
          "role": "user",
          "text": "create a measure for a specific log message"
        },
        {
          "complete": true,
          "isJsonParsingError": true,
          "messageToken": "e68008df-3de2-44ff-8c66-811284d6c36f",
          "role": "ai",
          "text": "To create a measure for a specific log message in Dynatrace, follow these steps:\n\n1. **Create metric using settings**:\n    1. Go to **Settings** \u003e **Log Monitoring** \u003e **Metrics extraction** and select **Add log metric**.\n    2. In **Metric key**, append the metric name to the `log.` metric key.\n    3. In **Matcher**, enter the Log Monitoring query to filter the log data for your metric.\n    4. Select a **Measure**:\n        - **Occurrence of log records**—a count of occurrences of log records that match the query.\n        - **Attribute value**—the collection of measures for the attribute value of log records that match the query. If you select this option, you need to also set **Attribute** to the attribute whose values will be gauged.\n    5. Optionally, select **Add dimension** to add dimensions for your query result.\n    6. Select **Save changes** to create the log metric.\n\n2. **Create metric using log viewer**:\n    1. Go to **Logs** or **Logs \u0026 Events** (latest Dynatrace).\n    2. Create a log viewer query or use log viewer **Available attributes** to extract the log data that interests you.\n    3. Select **Create metric**.\n    4. Optionally, add dimensions for your query result.\n    "
        },
        {
          "role": "user",
          "text": "create an alert from measure"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "0cc7d6b7-7a5e-4329-ada4-71544dfa1351",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Create anomaly detection metric — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-use-cases/lma-e2e-create-anomaly-detection-metric"
            },
            {
              "title": "Monitor Azure services with Azure Monitor metrics — Dynatrace Docs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/microsoft-azure-services/azure-integrations/azure-monitoring-guide"
            }
          ],
          "state": {
            "conversationId": "f84f530a-92e3-46db-974a-eead50458d8c",
            "history": [
              {
                "role": "user",
                "text": "create an alert from measure"
              },
              {
                "role": "ai",
                "text": "To create an alert based on a metric in Dynatrace, follow these steps:\n\n1. **Go to Settings**: Navigate to **Settings** \u003e **Anomaly detection** \u003e **Metric events**.\n2. **Add Metric Event**: Select **Add metric event**.\n3. **Summary**: Enter a summary name, such as `Abnormal product quantity`.\n4. **Query Definition**:\n   - Select the `Metric selector` option for **Type**.\n   - Enter the metric selector query, for example: `log.cartservice-product-quantity:splitBy(product):sum`.\n5. **Monitoring Strategy**:\n   - Select the **Auto-adaptive threshold** option for **Model type**.\n   - Switch on **Alert on missing data**.\n   - Leave the default value (`1`) for **Number of signal fluctuations**.\n   - Select **Alert if metric is outside** for **Alert condition**.\n6. **Event Template**:\n   - Enter `Abnormal product quantity` for **Title**.\n   - Modify the description as needed or leave the default description format.\n7. **Save Changes**: Select **Save changes** to create the metric event.\n\nTo check the problem alert created by your anomaly detection metric:\n\n1. **Go to Problems**: Navigate to **Problems**.\n2. **Search**: Search for `Abnormal product quantity` problems."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To create an alert based on a metric in Dynatrace, follow these steps:\n\n1. **Go to Settings**: Navigate to **Settings** \u003e **Anomaly detection** \u003e **Metric events**.\n2. **Add Metric Event**: Select **Add metric event**.\n3. **Summary**: Enter a summary name, such as `Abnormal product quantity`.\n4. **Query Definition**:\n   - Select the `Metric selector` option for **Type**.\n   - Enter the metric selector query, for example: `log.cartservice-product-quantity:splitBy(product):sum`.\n5. **Monitoring Strategy**:\n   - Select the **Auto-adaptive threshold** option for **Model type**.\n   - Switch on **Alert on missing data**.\n   - Leave the default value (`1`) for **Number of signal fluctuations**.\n   - Select **Alert if metric is outside** for **Alert condition**.\n6. **Event Template**:\n   - Enter `Abnormal product quantity` for **Title**.\n   - Modify the description as needed or leave the default description format.\n7. **Save Changes**: Select **Save changes** to create the metric event.\n\nTo check the problem alert created by your anomaly detection metric:\n\n1. **Go to Problems**: Navigate to **Problems**.\n2. **Search**: Search for `Abnormal product quantity` problems."
        }
      ]
    })
  private = true
}
