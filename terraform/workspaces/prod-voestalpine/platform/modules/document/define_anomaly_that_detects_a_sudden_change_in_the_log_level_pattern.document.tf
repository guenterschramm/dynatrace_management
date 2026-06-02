resource "dynatrace_document" "define_anomaly_that_detects_a_sudden_change_in_the_log_level_pattern" {
  name      = "define anomaly that detects a sudden change in the log level pattern"
  type      = "CoPilotConversation"
  content   = jsonencode({
      "isUsingOperatorEndpoint": false,
      "messages": [
        {
          "role": "user",
          "text": "define anomaly that detects a sudden change in the log level pattern"
        },
        {
          "complete": true,
          "messageToken": "b0801888-c1b0-4dbc-bf8b-4b8e11bd6040",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Anomaly Detection",
              "type": "Hub",
              "url": "https://www.dynatrace.com/hub/detail/davis-anomaly-detection"
            },
            {
              "title": "Configure automated notifications using Terraform and Configuration as Code",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/deliver/configuration-as-code/terraform/tutorials/terraform-tutorial-set-up-automated-notification"
            },
            {
              "title": "Examples of anomaly detection on Grail",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/dynatrace-intelligence/use-cases/anomaly-detection-examples"
            },
            {
              "title": "What is anomaly detection?",
              "type": "Website",
              "url": "https://www.dynatrace.com/knowledge-base/anomaly-detection/"
            }
          ],
          "state": {
            "conversationId": "76dc8af9-50ba-460c-b8f4-19c4e3e87669",
            "history": [
              {
                "role": "user",
                "text": "define anomaly that detects a sudden change in the log level pattern"
              },
              {
                "role": "ai",
                "text": "To define an anomaly that detects a sudden change in the log level pattern, you can use Dynatrace's anomaly detection capabilities with logs stored in Grail. Here's how you can approach it:\n\n### Steps to Detect Anomalies in Log Level Patterns:\n1. **Extract Relevant Log Data**:\n   Use DQL (Dynatrace Query Language) to filter logs based on specific patterns or log levels. For example, you can filter logs containing certain keywords or log levels like \"ERROR\" or \"WARNING.\"\n\n2. **Create a Time Series**:\n   Transform the filtered log data into a time series using DQL. For example:\n   ```plaintext\n   fetch logs \n   | filter contains(content, \"ERROR\") \n   | makeTimeseries count(), time:{timestamp}\n   ```\n   This query creates a time series based on the count of \"ERROR\" log occurrences over time.\n\n3. **Apply Anomaly Detection**:\n   Feed the generated time series into an anomaly detection analyzer. You can use:\n   - **Static thresholds**: Set a hard limit for the number of log occurrences.\n   - **Auto-adaptive thresholds**: Dynamically adjust based on recent history.\n   - **Seasonal baselines**: Detect anomalies in recurring log patterns.\n\n4. **Configure Alerts**:\n   Define alert conditions, such as a sudden spike in log levels, using properties like sliding window violations, alert conditions (e.g., ABOVE or BELOW thresholds), and missing data handling.\n\n5. **Trigger Notifications**:\n   Set up workflows to notify relevant teams via email or other channels when an anomaly is detected.\n\nThis approach ensures precise detection of sudden changes in log level patterns and enables proactive responses to potential issues."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To define an anomaly that detects a sudden change in the log level pattern, you can use Dynatrace's anomaly detection capabilities with logs stored in Grail. Here's how you can approach it:\n\n### Steps to Detect Anomalies in Log Level Patterns:\n1. **Extract Relevant Log Data**:\n   Use DQL (Dynatrace Query Language) to filter logs based on specific patterns or log levels. For example, you can filter logs containing certain keywords or log levels like \"ERROR\" or \"WARNING.\"\n\n2. **Create a Time Series**:\n   Transform the filtered log data into a time series using DQL. For example:\n   ```plaintext\n   fetch logs \n   | filter contains(content, \"ERROR\") \n   | makeTimeseries count(), time:{timestamp}\n   ```\n   This query creates a time series based on the count of \"ERROR\" log occurrences over time.\n\n3. **Apply Anomaly Detection**:\n   Feed the generated time series into an anomaly detection analyzer. You can use:\n   - **Static thresholds**: Set a hard limit for the number of log occurrences.\n   - **Auto-adaptive thresholds**: Dynamically adjust based on recent history.\n   - **Seasonal baselines**: Detect anomalies in recurring log patterns.\n\n4. **Configure Alerts**:\n   Define alert conditions, such as a sudden spike in log levels, using properties like sliding window violations, alert conditions (e.g., ABOVE or BELOW thresholds), and missing data handling.\n\n5. **Trigger Notifications**:\n   Set up workflows to notify relevant teams via email or other channels when an anomaly is detected.\n\nThis approach ensures precise detection of sudden changes in log level patterns and enables proactive responses to potential issues."
        }
      ]
    })
  custom_id = "copilot-4762fa46-f1e0-491a-86ff-08b7951c6893"
  private   = true
}
