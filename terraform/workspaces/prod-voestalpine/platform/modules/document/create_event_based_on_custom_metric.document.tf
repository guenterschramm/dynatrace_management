resource "dynatrace_document" "create_event_based_on_custom_metric" {
  name    = "create event based on custom metric"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "create event based on custom metric"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "c0a169be-23f6-4a88-b1b2-f76896ae5b67",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Business event metric extraction",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/observe/business-observability/bo-metric-extraction"
            },
            {
              "title": "Metric key events",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/davis-ai/anomaly-detection/set-up-a-customized-anomaly-detector/how-to-set-up/metric-events/metric-key-events"
            },
            {
              "title": "Metric selector events",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/davis-ai/anomaly-detection/set-up-a-customized-anomaly-detector/how-to-set-up/metric-events/metric-selector-events"
            },
            {
              "title": "Events powered by Grail overview (DPS)",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/license/capabilities/events"
            }
          ],
          "state": {
            "conversationId": "f68cecf8-66e3-4b1d-adac-ee732a7ecb3a",
            "history": [
              {
                "role": "user",
                "text": "create event based on custom metric"
              },
              {
                "role": "ai",
                "text": "To create an event based on a custom metric in Dynatrace, follow these steps:\n\n1. **Navigate to Settings**: Go to **Settings** \u003e **Anomaly Detection** \u003e **Metric events**.\n2. **Add Metric Event**: Select **Add metric event**.\n3. **Define Summary**: Provide a short, meaningful description of the event in the **Summary** field.\n4. **Configure Metric Query**: \n   - Choose **Metric selector** or **Metric key** as the query type.\n   - Specify the custom metric (e.g., the metric key you defined earlier, such as `bizevents.CustomMetricName`).\n   - Select an aggregation type (e.g., average, sum).\n5. **Set Monitoring Scope**: Optionally, specify a management zone or filters to narrow the scope of the event.\n6. **Define Monitoring Strategy**: \n   - Choose a threshold type (e.g., static, auto-adaptive, or seasonal baseline).\n   - Set the threshold value and alert conditions (e.g., above or below the threshold).\n   - Configure advanced properties like sliding windows or missing data alerts.\n7. **Preview and Test**: Review the alert preview to ensure the configuration is effective.\n8. **Add Event Details**: Provide a **Title** and **Description** for the event, using placeholders like `{metricname}` or `{threshold}` for dynamic details.\n9. **Save Changes**: Select **Save changes** to finalize the event configuration.\n\nThis event will trigger alerts based on the behavior of your custom metric."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To create an event based on a custom metric in Dynatrace, follow these steps:\n\n1. **Navigate to Settings**: Go to **Settings** \u003e **Anomaly Detection** \u003e **Metric events**.\n2. **Add Metric Event**: Select **Add metric event**.\n3. **Define Summary**: Provide a short, meaningful description of the event in the **Summary** field.\n4. **Configure Metric Query**: \n   - Choose **Metric selector** or **Metric key** as the query type.\n   - Specify the custom metric (e.g., the metric key you defined earlier, such as `bizevents.CustomMetricName`).\n   - Select an aggregation type (e.g., average, sum).\n5. **Set Monitoring Scope**: Optionally, specify a management zone or filters to narrow the scope of the event.\n6. **Define Monitoring Strategy**: \n   - Choose a threshold type (e.g., static, auto-adaptive, or seasonal baseline).\n   - Set the threshold value and alert conditions (e.g., above or below the threshold).\n   - Configure advanced properties like sliding windows or missing data alerts.\n7. **Preview and Test**: Review the alert preview to ensure the configuration is effective.\n8. **Add Event Details**: Provide a **Title** and **Description** for the event, using placeholders like `{metricname}` or `{threshold}` for dynamic details.\n9. **Save Changes**: Select **Save changes** to finalize the event configuration.\n\nThis event will trigger alerts based on the behavior of your custom metric."
        },
        {
          "role": "user",
          "text": "create openpipeline event based on customer grail metric"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "c3dcc5e4-51a7-472e-b7e5-507d0f9cb52d",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Events powered by Grail overview (DPS)",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/license/capabilities/events"
            },
            {
              "title": "Data flow",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline/concepts/data-flow"
            },
            {
              "title": "Processing",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/platform/openpipeline/concepts/processing"
            },
            {
              "title": "Built-in Metrics on Grail",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/metrics/built-in-metrics-on-grail"
            }
          ],
          "state": {
            "conversationId": "f68cecf8-66e3-4b1d-adac-ee732a7ecb3a",
            "history": [
              {
                "role": "user",
                "text": "create event based on custom metric"
              },
              {
                "role": "ai",
                "text": "To create an event based on a custom metric in Dynatrace, follow these steps:\n\n1. **Navigate to Settings**: Go to **Settings** \u003e **Anomaly Detection** \u003e **Metric events**.\n2. **Add Metric Event**: Select **Add metric event**.\n3. **Define Summary**: Provide a short, meaningful description of the event in the **Summary** field.\n4. **Configure Metric Query**: \n   - Choose **Metric selector** or **Metric key** as the query type.\n   - Specify the custom metric (e.g., the metric key you defined earlier, such as `bizevents.CustomMetricName`).\n   - Select an aggregation type (e.g., average, sum).\n5. **Set Monitoring Scope**: Optionally, specify a management zone or filters to narrow the scope of the event.\n6. **Define Monitoring Strategy**: \n   - Choose a threshold type (e.g., static, auto-adaptive, or seasonal baseline).\n   - Set the threshold value and alert conditions (e.g., above or below the threshold).\n   - Configure advanced properties like sliding windows or missing data alerts.\n7. **Preview and Test**: Review the alert preview to ensure the configuration is effective.\n8. **Add Event Details**: Provide a **Title** and **Description** for the event, using placeholders like `{metricname}` or `{threshold}` for dynamic details.\n9. **Save Changes**: Select **Save changes** to finalize the event configuration.\n\nThis event will trigger alerts based on the behavior of your custom metric."
              },
              {
                "role": "user",
                "text": "create openpipeline event based on customer grail metric"
              },
              {
                "role": "ai",
                "text": "To create an OpenPipeline event based on a custom Grail metric in Dynatrace, follow these steps:\n\n1. **Define the Metric**: Ensure your custom Grail metric is ingested and available in Dynatrace. Use the appropriate ingestion method, such as the Metrics API or OpenTelemetry metrics ingest API.\n\n2. **Create a Pipeline**: Navigate to the OpenPipeline configuration in Dynatrace and create a new pipeline for processing events.\n\n3. **Add a Data Extraction Stage**: In the pipeline, configure a **Data Extraction** stage. Use the **DQL matcher** to filter records based on your custom Grail metric. For example, query the metric key and apply conditions to identify relevant data points.\n\n4. **Configure the Processor**: Use the **Davis event processor** to extract fields from the matched records and create a new event. Define the event attributes, such as severity, description, and metadata, based on the metric values.\n\n5. **Route and Store**: Assign the pipeline to a Grail bucket for storage and ensure the event is routed correctly for further analysis.\n\n6. **Validate**: Test the pipeline by ingesting sample data and verifying that the event is created as expected.\n\nThis process allows you to transform metric data into actionable events for enhanced observability and analysis."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To create an OpenPipeline event based on a custom Grail metric in Dynatrace, follow these steps:\n\n1. **Define the Metric**: Ensure your custom Grail metric is ingested and available in Dynatrace. Use the appropriate ingestion method, such as the Metrics API or OpenTelemetry metrics ingest API.\n\n2. **Create a Pipeline**: Navigate to the OpenPipeline configuration in Dynatrace and create a new pipeline for processing events.\n\n3. **Add a Data Extraction Stage**: In the pipeline, configure a **Data Extraction** stage. Use the **DQL matcher** to filter records based on your custom Grail metric. For example, query the metric key and apply conditions to identify relevant data points.\n\n4. **Configure the Processor**: Use the **Davis event processor** to extract fields from the matched records and create a new event. Define the event attributes, such as severity, description, and metadata, based on the metric values.\n\n5. **Route and Store**: Assign the pipeline to a Grail bucket for storage and ensure the event is routed correctly for further analysis.\n\n6. **Validate**: Test the pipeline by ingesting sample data and verifying that the event is created as expected.\n\nThis process allows you to transform metric data into actionable events for enhanced observability and analysis."
        }
      ]
    })
  private = true
}
