resource "dynatrace_document" "verify_a_selector" {
  name    = "verify a selector"
  type    = "CoPilotConversation"
  content = jsonencode({
      "messages": [
        {
          "role": "user",
          "text": "verify a selector"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "578e7337-3111-4d79-9481-43ec16cffcd9",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Metric selector conversion guide",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/metrics/upgrade/metric-selector-conversion"
            }
          ],
          "state": {
            "conversationId": "fa632da7-0167-4763-acbc-dbcb647ecf8b",
            "history": [
              {
                "role": "user",
                "text": "verify a selector"
              },
              {
                "role": "ai",
                "text": "To verify a metric selector in Dynatrace, follow these steps:\n\n1. **Check Metric Compatibility**: Ensure the metric is supported in Grail by searching for it in the [Built-in Metrics on Grail](https://www.dynatrace.com/support/help/docs/analyze-explore-automate/metrics/built-in-metrics-on-grail). Not all Classic metrics have Grail equivalents.\n\n2. **Validate Transformations**: Confirm that all transformations in your metric selector (e.g., `splitBy`, `filter`, `avg`) are supported in DQL. Unsupported transformations may require manual adjustments.\n\n3. **Test in Data Explorer**: Use the Data Explorer to run your query and verify its results. If needed, use the **Open with...** option to convert the selector to DQL for further validation in Notebooks or Dashboards.\n\nLet me know if you need help with a specific selector!"
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To verify a metric selector in Dynatrace, follow these steps:\n\n1. **Check Metric Compatibility**: Ensure the metric is supported in Grail by searching for it in the [Built-in Metrics on Grail](https://www.dynatrace.com/support/help/docs/analyze-explore-automate/metrics/built-in-metrics-on-grail). Not all Classic metrics have Grail equivalents.\n\n2. **Validate Transformations**: Confirm that all transformations in your metric selector (e.g., `splitBy`, `filter`, `avg`) are supported in DQL. Unsupported transformations may require manual adjustments.\n\n3. **Test in Data Explorer**: Use the Data Explorer to run your query and verify its results. If needed, use the **Open with...** option to convert the selector to DQL for further validation in Notebooks or Dashboards.\n\nLet me know if you need help with a specific selector!"
        },
        {
          "role": "user",
          "text": "matchesValue with tags"
        },
        {
          "complete": true,
          "isJsonParsingError": false,
          "messageToken": "b139b007-3247-427c-9f1e-c57f9c5fe37a",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Template",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/discover-dynatrace/references/dynatrace-query-language/functions/functions-example"
            },
            {
              "title": "Business event bucket assignment",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/observe/business-analytics/ba-bucket-assignment"
            },
            {
              "title": "DQL matcher in workflow event triggers",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/trigger/dql-matcher-in-workflow-trigger"
            },
            {
              "title": "DQL matcher in business events",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/observe/business-analytics/ba-events-processing/ba-events-processing-matcher"
            }
          ],
          "state": {
            "conversationId": "fa632da7-0167-4763-acbc-dbcb647ecf8b",
            "history": [
              {
                "role": "user",
                "text": "verify a selector"
              },
              {
                "role": "ai",
                "text": "To verify a metric selector in Dynatrace, follow these steps:\n\n1. **Check Metric Compatibility**: Ensure the metric is supported in Grail by searching for it in the [Built-in Metrics on Grail](https://www.dynatrace.com/support/help/docs/analyze-explore-automate/metrics/built-in-metrics-on-grail). Not all Classic metrics have Grail equivalents.\n\n2. **Validate Transformations**: Confirm that all transformations in your metric selector (e.g., `splitBy`, `filter`, `avg`) are supported in DQL. Unsupported transformations may require manual adjustments.\n\n3. **Test in Data Explorer**: Use the Data Explorer to run your query and verify its results. If needed, use the **Open with...** option to convert the selector to DQL for further validation in Notebooks or Dashboards.\n\nLet me know if you need help with a specific selector!"
              },
              {
                "role": "user",
                "text": "matchesValue with tags"
              },
              {
                "role": "ai",
                "text": "The `matchesValue` function can be used in a Dynatrace metric selector to filter metrics based on specific tag values. Here's how you can use it:\n\n1. **Syntax**: Use the `matchesValue` function to match specific tag values associated with the metric. For example:\n   ```plaintext\n   matchesValue(entity.tags, \"environment:production\")\n   ```\n   This filters metrics where the `entity.tags` attribute contains the tag `environment:production`.\n\n2. **Wildcard Matching**: You can use wildcards (`*`) at the beginning or end of the value for partial matches. For example:\n   ```plaintext\n   matchesValue(entity.tags, \"environment:*\")\n   ```\n   This matches all tags that start with `environment:`.\n\n3. **Case Insensitivity**: The function is case-insensitive for ASCII characters, so `matchesValue(entity.tags, \"Environment:Production\")` will match the same as `matchesValue(entity.tags, \"environment:production\")`.\n\n4. **Multi-Value Tags**: If the `entity.tags` attribute contains multiple tags, `matchesValue` will match any of the values in the array.\n\nBy combining `matchesValue` with other logical operators (`AND`, `OR`, `NOT`), you can create complex filtering conditions for your metric selector."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "The `matchesValue` function can be used in a Dynatrace metric selector to filter metrics based on specific tag values. Here's how you can use it:\n\n1. **Syntax**: Use the `matchesValue` function to match specific tag values associated with the metric. For example:\n   ```plaintext\n   matchesValue(entity.tags, \"environment:production\")\n   ```\n   This filters metrics where the `entity.tags` attribute contains the tag `environment:production`.\n\n2. **Wildcard Matching**: You can use wildcards (`*`) at the beginning or end of the value for partial matches. For example:\n   ```plaintext\n   matchesValue(entity.tags, \"environment:*\")\n   ```\n   This matches all tags that start with `environment:`.\n\n3. **Case Insensitivity**: The function is case-insensitive for ASCII characters, so `matchesValue(entity.tags, \"Environment:Production\")` will match the same as `matchesValue(entity.tags, \"environment:production\")`.\n\n4. **Multi-Value Tags**: If the `entity.tags` attribute contains multiple tags, `matchesValue` will match any of the values in the array.\n\nBy combining `matchesValue` with other logical operators (`AND`, `OR`, `NOT`), you can create complex filtering conditions for your metric selector."
        }
      ]
    })
  private = true
}
