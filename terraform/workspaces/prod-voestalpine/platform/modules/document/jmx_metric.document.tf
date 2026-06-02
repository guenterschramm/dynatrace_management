resource "dynatrace_document" "jmx_metric" {
  name      = "jmx metric"
  type      = "CoPilotConversation"
  content   = jsonencode({
      "isUsingOperatorEndpoint": false,
      "messages": [
        {
          "role": "user",
          "text": "jmx metric"
        },
        {
          "complete": true,
          "messageToken": "eb209f38-e648-40e8-9c8d-011a0fd9be6c",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Install the z/OS Java module",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/dynatrace-oneagent/installation-and-operation/zos/installation/install-zos-java"
            },
            {
              "title": "Monitor JMX metrics on z/OS",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/dynatrace-oneagent/installation-and-operation/zos/monitoring/zos-java-custom-jmx-metrics"
            },
            {
              "title": "Tomcat (JMX) extension",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/observe/infrastructure-observability/extensions/connection-pools-tomcat"
            },
            {
              "title": "JMX extensions",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/extend-dynatrace/extend-metrics/ingestion-methods/jmx-extensions"
            }
          ],
          "state": {
            "conversationId": "68f683ab-f640-408f-964d-2c3130d17f13",
            "history": [
              {
                "role": "user",
                "text": "jmx metric"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you looking for information about JMX metrics in Dynatrace, how to monitor them, or something specific related to JMX metrics?"
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Could you please clarify your question? Are you looking for information about JMX metrics in Dynatrace, how to monitor them, or something specific related to JMX metrics?"
        },
        {
          "role": "user",
          "text": "how to add a specificjmx metric"
        },
        {
          "complete": true,
          "messageToken": "9212f8ce-be2b-4620-881d-76fcd4240611",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "JMX extensions",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/extend-dynatrace/extend-metrics/ingestion-methods/jmx-extensions"
            },
            {
              "title": "Monitor JMX metrics on z/OS",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/dynatrace-oneagent/installation-and-operation/zos/monitoring/zos-java-custom-jmx-metrics"
            },
            {
              "title": "JMX data source reference",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/extensions/develop-your-extensions/data-sources/jmx/jmx-schema-reference"
            },
            {
              "title": "JMX data source",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/ingest-from/extensions/develop-your-extensions/data-sources/jmx"
            }
          ],
          "state": {
            "conversationId": "68f683ab-f640-408f-964d-2c3130d17f13",
            "history": [
              {
                "role": "user",
                "text": "jmx metric"
              },
              {
                "role": "ai",
                "text": "Could you please clarify your question? Are you looking for information about JMX metrics in Dynatrace, how to monitor them, or something specific related to JMX metrics?"
              },
              {
                "role": "user",
                "text": "how to add a specificjmx metric"
              },
              {
                "role": "ai",
                "text": "To add a specific JMX metric in Dynatrace, follow these steps:\n\n### Steps to Add a JMX Metric\n1. **Access JMX/PMI Extensions Editor**:\n   - Sign in to Dynatrace and navigate to **Settings** \u003e **Monitoring** \u003e **Monitored technologies**.\n   - Click **Add new technology monitoring** and select **Monitor Java or WebSphere based technologies**.\n   - Click **Add JMX/PMI extension** and then **Use JMX/PMI extensions editor**.\n\n2. **Create the Extension**:\n   - Provide a name for the extension using only letters (`A-Z, a-z`), numbers (`0-9`), or `-/_`.\n   - Add the metrics source by selecting the relevant Java process or technology. This will narrow down the list of available MBeans.\n\n3. **Define the Metric**:\n   - Select the **Domain** of the MBean.\n   - Choose **Key Properties** to filter the list of available MBeans. You can use wildcards or exact matches.\n   - Select the specific **MBean** and its **Attribute** that contains the metric value. Only numeric attributes are available by default, but you can include non-numeric attributes if needed.\n   - Define the **Display Name** for the metric.\n   - Specify the **Unit** for the metric (e.g., Count, Bytes, etc.).\n   - Choose the **Aggregation** method (e.g., SUM, AVG, MIN, MAX) if multiple MBeans are matched.\n   - Optionally, configure **Calculation** settings like Delta or Rate to calculate changes or rates over time.\n\n4. **Save the Extension**:\n   - After defining the metric, click **Save** to register the extension.\n   - Once saved, Dynatrace will start collecting data from all Java processes containing the defined MBeans.\n\n5. **Enable the Extension**:\n   - By default, the extension is enabled globally. If you want to enable it for specific hosts, go to **Settings** \u003e **Monitored technologies** \u003e **Custom extensions** tab and disable it globally.\n   - Navigate to individual host pages, open the host settings, find your JMX extension, and enable it for the desired hosts.\n\n6. **View the Metrics**:\n   - Once the extension is active, go to the relevant process page in Dynatrace and click **Further details**. Select the tab named after your extension to view the defined metrics.\n\nFor advanced customization, you can download the extension and edit its JSON file to define additional dimensions, splitting, or other configurations."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To add a specific JMX metric in Dynatrace, follow these steps:\n\n### Steps to Add a JMX Metric\n1. **Access JMX/PMI Extensions Editor**:\n   - Sign in to Dynatrace and navigate to **Settings** \u003e **Monitoring** \u003e **Monitored technologies**.\n   - Click **Add new technology monitoring** and select **Monitor Java or WebSphere based technologies**.\n   - Click **Add JMX/PMI extension** and then **Use JMX/PMI extensions editor**.\n\n2. **Create the Extension**:\n   - Provide a name for the extension using only letters (`A-Z, a-z`), numbers (`0-9`), or `-/_`.\n   - Add the metrics source by selecting the relevant Java process or technology. This will narrow down the list of available MBeans.\n\n3. **Define the Metric**:\n   - Select the **Domain** of the MBean.\n   - Choose **Key Properties** to filter the list of available MBeans. You can use wildcards or exact matches.\n   - Select the specific **MBean** and its **Attribute** that contains the metric value. Only numeric attributes are available by default, but you can include non-numeric attributes if needed.\n   - Define the **Display Name** for the metric.\n   - Specify the **Unit** for the metric (e.g., Count, Bytes, etc.).\n   - Choose the **Aggregation** method (e.g., SUM, AVG, MIN, MAX) if multiple MBeans are matched.\n   - Optionally, configure **Calculation** settings like Delta or Rate to calculate changes or rates over time.\n\n4. **Save the Extension**:\n   - After defining the metric, click **Save** to register the extension.\n   - Once saved, Dynatrace will start collecting data from all Java processes containing the defined MBeans.\n\n5. **Enable the Extension**:\n   - By default, the extension is enabled globally. If you want to enable it for specific hosts, go to **Settings** \u003e **Monitored technologies** \u003e **Custom extensions** tab and disable it globally.\n   - Navigate to individual host pages, open the host settings, find your JMX extension, and enable it for the desired hosts.\n\n6. **View the Metrics**:\n   - Once the extension is active, go to the relevant process page in Dynatrace and click **Further details**. Select the tab named after your extension to view the defined metrics.\n\nFor advanced customization, you can download the extension and edit its JSON file to define additional dimensions, splitting, or other configurations."
        }
      ]
    })
  custom_id = "copilot-a23384a8-346c-45d0-8018-0f1864b17b92"
  private   = true
}
