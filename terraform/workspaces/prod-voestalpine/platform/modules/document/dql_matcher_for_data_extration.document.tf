resource "dynatrace_document" "dql_matcher_for_data_extration" {
  name      = "dql matcher for data extration"
  type      = "CoPilotConversation"
  content   = jsonencode({
      "isUsingOperatorEndpoint": false,
      "messages": [
        {
          "role": "user",
          "text": "dql matcher for data extration"
        },
        {
          "complete": true,
          "messageToken": "e65dcf0a-b162-4c88-9b40-1fef00592ed4",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "DQL matcher in logs",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-classic-log-processing/lma-log-processing-matcher"
            },
            {
              "title": "DQL matcher in OpenPipeline",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/openpipeline/reference/dql/dql-matcher-in-openpipeline"
            },
            {
              "title": "Speed up your security investigations with DPL Architect",
              "type": "Blog",
              "url": "https://www.dynatrace.com/news/blog/speed-up-your-security-investigations-with-dpl-architect/"
            },
            {
              "title": "OpenPipeline processing examples",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/openpipeline/use-cases/processing-examples"
            }
          ],
          "state": {
            "conversationId": "ba626e32-7090-4a9d-8f71-331a76e37a1a",
            "history": [
              {
                "role": "user",
                "text": "dql matcher for data extration"
              },
              {
                "role": "ai",
                "text": "### **DQL Matcher for Data Extraction**\n\nDynatrace Query Language (DQL) matchers are powerful tools for filtering and extracting data from logs and events. They are used to reduce the scope of data processed and enable precise data extraction. Below are key features and functions of DQL matchers for data extraction:\n\n---\n\n#### **Key Features of DQL Matchers**\n1. **Filter Records**: Identify records containing specific phrases or values in attributes.\n2. **Search for Specific Values**: Locate specific values within attributes.\n3. **Test for NULL Values**: Check if a value is NULL.\n4. **Logical Operators**: Combine multiple expressions using logical operators.\n\n---\n\n#### **Common DQL Matcher Functions**\n1. **matchesPhrase**:\n   - Filters records containing a specified phrase.\n   - Case-insensitive for ASCII characters.\n   - Supports multi-value attributes and single-term wildcards (`*`).\n   - **Syntax**: `matchesPhrase(expression, phrase [, caseSensitive])`\n\n2. **matchesValue**:\n   - Filters records based on exact matches of attribute values.\n   - **Syntax**: `matchesValue(attribute, value)`\n\n---\n\n#### **Using DQL Matchers for Data Extraction**\n1. **Extract Specific Fields**:\n   - Use the `parse` command with DQL matchers to extract fields from unstructured data.\n   - Example: `parse content, \"IPADDR:client_ip\"` extracts IP addresses from log content.\n\n2. **Extract Patterns Using DPL**:\n   - Use Dynatrace Pattern Language (DPL) matchers to define schemas and extract fields.\n   - Example: `parse content, \"LD 'user ID=' INT:user_id\"` extracts user IDs from logs with varying formats.\n\n3. **Handle Complex Data Structures**:\n   - Use DPL matchers for JSON objects, key-value pairs, or nested structures.\n   - Example: `parse content, \"JSON{STRING+:username, INT:result}(flat=true)\"` extracts specific fields from JSON objects.\n\n4. **Perform Calculations**:\n   - Combine DQL matchers with functions to calculate new attributes.\n   - Example: `fieldsAdd failed.percentage = 100.0 * failed / total` calculates failure percentage.\n\n5. **Mask Sensitive Data**:\n   - Use `replacePattern` or `ipMask` functions to mask sensitive data.\n   - Example: `fieldsAdd ip = ipMask(ip, 24)` masks the last octet of an IP address.\n\n---\n\nFor more details, you can explore the documentation on [DQL matcher in logs](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-classic-log-processing/lma-log-processing-matcher) or [DQL matcher in OpenPipeline](https://docs.dynatrace.com/docs/platform/openpipeline/reference/dql/dql-matcher-in-openpipeline)."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "### **DQL Matcher for Data Extraction**\n\nDynatrace Query Language (DQL) matchers are powerful tools for filtering and extracting data from logs and events. They are used to reduce the scope of data processed and enable precise data extraction. Below are key features and functions of DQL matchers for data extraction:\n\n---\n\n#### **Key Features of DQL Matchers**\n1. **Filter Records**: Identify records containing specific phrases or values in attributes.\n2. **Search for Specific Values**: Locate specific values within attributes.\n3. **Test for NULL Values**: Check if a value is NULL.\n4. **Logical Operators**: Combine multiple expressions using logical operators.\n\n---\n\n#### **Common DQL Matcher Functions**\n1. **matchesPhrase**:\n   - Filters records containing a specified phrase.\n   - Case-insensitive for ASCII characters.\n   - Supports multi-value attributes and single-term wildcards (`*`).\n   - **Syntax**: `matchesPhrase(expression, phrase [, caseSensitive])`\n\n2. **matchesValue**:\n   - Filters records based on exact matches of attribute values.\n   - **Syntax**: `matchesValue(attribute, value)`\n\n---\n\n#### **Using DQL Matchers for Data Extraction**\n1. **Extract Specific Fields**:\n   - Use the `parse` command with DQL matchers to extract fields from unstructured data.\n   - Example: `parse content, \"IPADDR:client_ip\"` extracts IP addresses from log content.\n\n2. **Extract Patterns Using DPL**:\n   - Use Dynatrace Pattern Language (DPL) matchers to define schemas and extract fields.\n   - Example: `parse content, \"LD 'user ID=' INT:user_id\"` extracts user IDs from logs with varying formats.\n\n3. **Handle Complex Data Structures**:\n   - Use DPL matchers for JSON objects, key-value pairs, or nested structures.\n   - Example: `parse content, \"JSON{STRING+:username, INT:result}(flat=true)\"` extracts specific fields from JSON objects.\n\n4. **Perform Calculations**:\n   - Combine DQL matchers with functions to calculate new attributes.\n   - Example: `fieldsAdd failed.percentage = 100.0 * failed / total` calculates failure percentage.\n\n5. **Mask Sensitive Data**:\n   - Use `replacePattern` or `ipMask` functions to mask sensitive data.\n   - Example: `fieldsAdd ip = ipMask(ip, 24)` masks the last octet of an IP address.\n\n---\n\nFor more details, you can explore the documentation on [DQL matcher in logs](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-classic-log-processing/lma-log-processing-matcher) or [DQL matcher in OpenPipeline](https://docs.dynatrace.com/docs/platform/openpipeline/reference/dql/dql-matcher-in-openpipeline)."
        },
        {
          "role": "user",
          "text": "dql matcher in openpipeline to route all metrics coming with the source data extraction"
        },
        {
          "complete": true,
          "messageToken": "3a1dc0c1-01f2-46fb-bde5-4f90d12e7ab7",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Log processing with OpenPipeline",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-log-processing/lma-openpipeline"
            },
            {
              "title": "Extract metrics from spans and distributed traces",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/openpipeline/use-cases/tutorial-extract-metrics-from-spans"
            },
            {
              "title": "Data flow in OpenPipeline",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/openpipeline/concepts/data-flow"
            },
            {
              "title": "Parse log lines and extract a metric",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/openpipeline/use-cases/tutorial-log-processing-pipeline"
            }
          ],
          "state": {
            "conversationId": "ba626e32-7090-4a9d-8f71-331a76e37a1a",
            "history": [
              {
                "role": "user",
                "text": "dql matcher for data extration"
              },
              {
                "role": "ai",
                "text": "### **DQL Matcher for Data Extraction**\n\nDynatrace Query Language (DQL) matchers are powerful tools for filtering and extracting data from logs and events. They are used to reduce the scope of data processed and enable precise data extraction. Below are key features and functions of DQL matchers for data extraction:\n\n---\n\n#### **Key Features of DQL Matchers**\n1. **Filter Records**: Identify records containing specific phrases or values in attributes.\n2. **Search for Specific Values**: Locate specific values within attributes.\n3. **Test for NULL Values**: Check if a value is NULL.\n4. **Logical Operators**: Combine multiple expressions using logical operators.\n\n---\n\n#### **Common DQL Matcher Functions**\n1. **matchesPhrase**:\n   - Filters records containing a specified phrase.\n   - Case-insensitive for ASCII characters.\n   - Supports multi-value attributes and single-term wildcards (`*`).\n   - **Syntax**: `matchesPhrase(expression, phrase [, caseSensitive])`\n\n2. **matchesValue**:\n   - Filters records based on exact matches of attribute values.\n   - **Syntax**: `matchesValue(attribute, value)`\n\n---\n\n#### **Using DQL Matchers for Data Extraction**\n1. **Extract Specific Fields**:\n   - Use the `parse` command with DQL matchers to extract fields from unstructured data.\n   - Example: `parse content, \"IPADDR:client_ip\"` extracts IP addresses from log content.\n\n2. **Extract Patterns Using DPL**:\n   - Use Dynatrace Pattern Language (DPL) matchers to define schemas and extract fields.\n   - Example: `parse content, \"LD 'user ID=' INT:user_id\"` extracts user IDs from logs with varying formats.\n\n3. **Handle Complex Data Structures**:\n   - Use DPL matchers for JSON objects, key-value pairs, or nested structures.\n   - Example: `parse content, \"JSON{STRING+:username, INT:result}(flat=true)\"` extracts specific fields from JSON objects.\n\n4. **Perform Calculations**:\n   - Combine DQL matchers with functions to calculate new attributes.\n   - Example: `fieldsAdd failed.percentage = 100.0 * failed / total` calculates failure percentage.\n\n5. **Mask Sensitive Data**:\n   - Use `replacePattern` or `ipMask` functions to mask sensitive data.\n   - Example: `fieldsAdd ip = ipMask(ip, 24)` masks the last octet of an IP address.\n\n---\n\nFor more details, you can explore the documentation on [DQL matcher in logs](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-classic-log-processing/lma-log-processing-matcher) or [DQL matcher in OpenPipeline](https://docs.dynatrace.com/docs/platform/openpipeline/reference/dql/dql-matcher-in-openpipeline)."
              },
              {
                "role": "user",
                "text": "dql matcher in openpipeline to route all metrics coming with the source data extraction"
              },
              {
                "role": "ai",
                "text": "To route all metrics coming from the source data extraction in OpenPipeline using Dynatrace Query Language (DQL) matchers, you can follow these steps:\n\n### Steps to Use DQL Matchers for Routing Metrics\n1. **Access Dynamic Routing Settings**:\n   - Navigate to **Settings** \u003e **Process and contextualize** \u003e **OpenPipeline** \u003e **Metrics** \u003e **Dynamic routing**.\n\n2. **Create a New Dynamic Route**:\n   - Select **Add Dynamic route**.\n   - Provide a descriptive name for the route (e.g., \"Route Metrics from Data Extraction\").\n\n3. **Define the Matching Condition**:\n   - Use a DQL query to specify the matching condition for the metrics you want to route. For example:\n     ```dql\n     fetch metrics | filter dt.openpipeline.source == \"data-extraction-source\"\n     ```\n   - Replace `\"data-extraction-source\"` with the actual name or path of your ingest source.\n\n4. **Assign the Pipeline**:\n   - Select the pipeline where you want to route the metrics for further processing.\n   - Ensure the pipeline is configured to handle metrics appropriately.\n\n5. **Save the Route**:\n   - Click **Add** to save the dynamic route.\n\n### Best Practices\n- **Use Explicit Matching Conditions**: Ensure your DQL query is precise to avoid routing unintended data.\n- **Order Routes Carefully**: Dynamic routes are evaluated sequentially, so place this route in the correct order to ensure it matches the intended data before other routes.\n- **Test the Configuration**: Use sample data or existing metrics to verify that the route is correctly matching and routing the desired metrics.\n\nBy following these steps, you can effectively use DQL matchers in OpenPipeline to route all metrics from a specific source to the desired pipeline for processing and storage."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "To route all metrics coming from the source data extraction in OpenPipeline using Dynatrace Query Language (DQL) matchers, you can follow these steps:\n\n### Steps to Use DQL Matchers for Routing Metrics\n1. **Access Dynamic Routing Settings**:\n   - Navigate to **Settings** \u003e **Process and contextualize** \u003e **OpenPipeline** \u003e **Metrics** \u003e **Dynamic routing**.\n\n2. **Create a New Dynamic Route**:\n   - Select **Add Dynamic route**.\n   - Provide a descriptive name for the route (e.g., \"Route Metrics from Data Extraction\").\n\n3. **Define the Matching Condition**:\n   - Use a DQL query to specify the matching condition for the metrics you want to route. For example:\n     ```dql\n     fetch metrics | filter dt.openpipeline.source == \"data-extraction-source\"\n     ```\n   - Replace `\"data-extraction-source\"` with the actual name or path of your ingest source.\n\n4. **Assign the Pipeline**:\n   - Select the pipeline where you want to route the metrics for further processing.\n   - Ensure the pipeline is configured to handle metrics appropriately.\n\n5. **Save the Route**:\n   - Click **Add** to save the dynamic route.\n\n### Best Practices\n- **Use Explicit Matching Conditions**: Ensure your DQL query is precise to avoid routing unintended data.\n- **Order Routes Carefully**: Dynamic routes are evaluated sequentially, so place this route in the correct order to ensure it matches the intended data before other routes.\n- **Test the Configuration**: Use sample data or existing metrics to verify that the route is correctly matching and routing the desired metrics.\n\nBy following these steps, you can effectively use DQL matchers in OpenPipeline to route all metrics from a specific source to the desired pipeline for processing and storage."
        },
        {
          "role": "user",
          "text": "built in data extraction"
        },
        {
          "complete": true,
          "messageToken": "00fdfe22-181c-424f-ba41-4f3439ed0b67",
          "role": "ai",
          "sourceDocuments": [
            {
              "title": "Processing in OpenPipeline",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/openpipeline/concepts/processing"
            },
            {
              "title": "Business event capture",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/observe/business-observability/bo-events-capturing"
            },
            {
              "title": "Configure a processing pipeline",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/openpipeline/get-started/tutorial-configure-processing"
            },
            {
              "title": "OpenPipeline API - GET a configuration",
              "type": "Documentation",
              "url": "https://docs.dynatrace.com/docs/platform/openpipeline/reference/openpipeline-api/configurations-api/get-configuration"
            }
          ],
          "state": {
            "conversationId": "ba626e32-7090-4a9d-8f71-331a76e37a1a",
            "history": [
              {
                "role": "user",
                "text": "dql matcher for data extration"
              },
              {
                "role": "ai",
                "text": "### **DQL Matcher for Data Extraction**\n\nDynatrace Query Language (DQL) matchers are powerful tools for filtering and extracting data from logs and events. They are used to reduce the scope of data processed and enable precise data extraction. Below are key features and functions of DQL matchers for data extraction:\n\n---\n\n#### **Key Features of DQL Matchers**\n1. **Filter Records**: Identify records containing specific phrases or values in attributes.\n2. **Search for Specific Values**: Locate specific values within attributes.\n3. **Test for NULL Values**: Check if a value is NULL.\n4. **Logical Operators**: Combine multiple expressions using logical operators.\n\n---\n\n#### **Common DQL Matcher Functions**\n1. **matchesPhrase**:\n   - Filters records containing a specified phrase.\n   - Case-insensitive for ASCII characters.\n   - Supports multi-value attributes and single-term wildcards (`*`).\n   - **Syntax**: `matchesPhrase(expression, phrase [, caseSensitive])`\n\n2. **matchesValue**:\n   - Filters records based on exact matches of attribute values.\n   - **Syntax**: `matchesValue(attribute, value)`\n\n---\n\n#### **Using DQL Matchers for Data Extraction**\n1. **Extract Specific Fields**:\n   - Use the `parse` command with DQL matchers to extract fields from unstructured data.\n   - Example: `parse content, \"IPADDR:client_ip\"` extracts IP addresses from log content.\n\n2. **Extract Patterns Using DPL**:\n   - Use Dynatrace Pattern Language (DPL) matchers to define schemas and extract fields.\n   - Example: `parse content, \"LD 'user ID=' INT:user_id\"` extracts user IDs from logs with varying formats.\n\n3. **Handle Complex Data Structures**:\n   - Use DPL matchers for JSON objects, key-value pairs, or nested structures.\n   - Example: `parse content, \"JSON{STRING+:username, INT:result}(flat=true)\"` extracts specific fields from JSON objects.\n\n4. **Perform Calculations**:\n   - Combine DQL matchers with functions to calculate new attributes.\n   - Example: `fieldsAdd failed.percentage = 100.0 * failed / total` calculates failure percentage.\n\n5. **Mask Sensitive Data**:\n   - Use `replacePattern` or `ipMask` functions to mask sensitive data.\n   - Example: `fieldsAdd ip = ipMask(ip, 24)` masks the last octet of an IP address.\n\n---\n\nFor more details, you can explore the documentation on [DQL matcher in logs](https://docs.dynatrace.com/docs/analyze-explore-automate/logs/lma-classic-log-processing/lma-log-processing-matcher) or [DQL matcher in OpenPipeline](https://docs.dynatrace.com/docs/platform/openpipeline/reference/dql/dql-matcher-in-openpipeline)."
              },
              {
                "role": "user",
                "text": "dql matcher in openpipeline to route all metrics coming with the source data extraction"
              },
              {
                "role": "ai",
                "text": "To route all metrics coming from the source data extraction in OpenPipeline using Dynatrace Query Language (DQL) matchers, you can follow these steps:\n\n### Steps to Use DQL Matchers for Routing Metrics\n1. **Access Dynamic Routing Settings**:\n   - Navigate to **Settings** \u003e **Process and contextualize** \u003e **OpenPipeline** \u003e **Metrics** \u003e **Dynamic routing**.\n\n2. **Create a New Dynamic Route**:\n   - Select **Add Dynamic route**.\n   - Provide a descriptive name for the route (e.g., \"Route Metrics from Data Extraction\").\n\n3. **Define the Matching Condition**:\n   - Use a DQL query to specify the matching condition for the metrics you want to route. For example:\n     ```dql\n     fetch metrics | filter dt.openpipeline.source == \"data-extraction-source\"\n     ```\n   - Replace `\"data-extraction-source\"` with the actual name or path of your ingest source.\n\n4. **Assign the Pipeline**:\n   - Select the pipeline where you want to route the metrics for further processing.\n   - Ensure the pipeline is configured to handle metrics appropriately.\n\n5. **Save the Route**:\n   - Click **Add** to save the dynamic route.\n\n### Best Practices\n- **Use Explicit Matching Conditions**: Ensure your DQL query is precise to avoid routing unintended data.\n- **Order Routes Carefully**: Dynamic routes are evaluated sequentially, so place this route in the correct order to ensure it matches the intended data before other routes.\n- **Test the Configuration**: Use sample data or existing metrics to verify that the route is correctly matching and routing the desired metrics.\n\nBy following these steps, you can effectively use DQL matchers in OpenPipeline to route all metrics from a specific source to the desired pipeline for processing and storage."
              },
              {
                "role": "user",
                "text": "built in data extraction"
              },
              {
                "role": "ai",
                "text": "Dynatrace provides built-in data extraction capabilities through OpenPipeline, which allows you to process and analyze incoming data using configurable pipelines and stages. Below are the relevant details:\n\n### **Built-in Data Extraction Capabilities**\n1. **Data Extraction Stage Processors**:\n   - **DavisEventExtractionProcessor**: Extracts Davis events for further analysis.\n   - **BizeventExtractionProcessor**: Extracts business events for observability and insights.\n   - **SecurityEventExtractionProcessor**: Extracts security-related events for monitoring and analysis.\n\n2. **Dynamic Routing with DQL Matchers**:\n   - OpenPipeline supports dynamic routing of data to pipelines based on **DQL matching conditions**. This allows you to define rules that match specific field values or ingest sources to route data to the appropriate pipeline for processing.\n\n3. **Classic Pipeline for Log and Business Event Scopes**:\n   - The **Classic pipeline** serves as an entry point for rules set in **Settings Classic** for log or business event processing. It is specifically designed for these scopes and supports migration of rules to OpenPipeline custom pipelines.\n\nThese capabilities enable you to efficiently extract, process, and store data in Grail for further analysis using Dynatrace's advanced observability features."
              }
            ],
            "skillName": "recommender",
            "version": "0.3"
          },
          "text": "Dynatrace provides built-in data extraction capabilities through OpenPipeline, which allows you to process and analyze incoming data using configurable pipelines and stages. Below are the relevant details:\n\n### **Built-in Data Extraction Capabilities**\n1. **Data Extraction Stage Processors**:\n   - **DavisEventExtractionProcessor**: Extracts Davis events for further analysis.\n   - **BizeventExtractionProcessor**: Extracts business events for observability and insights.\n   - **SecurityEventExtractionProcessor**: Extracts security-related events for monitoring and analysis.\n\n2. **Dynamic Routing with DQL Matchers**:\n   - OpenPipeline supports dynamic routing of data to pipelines based on **DQL matching conditions**. This allows you to define rules that match specific field values or ingest sources to route data to the appropriate pipeline for processing.\n\n3. **Classic Pipeline for Log and Business Event Scopes**:\n   - The **Classic pipeline** serves as an entry point for rules set in **Settings Classic** for log or business event processing. It is specifically designed for these scopes and supports migration of rules to OpenPipeline custom pipelines.\n\nThese capabilities enable you to efficiently extract, process, and store data in Grail for further analysis using Dynatrace's advanced observability features."
        }
      ]
    })
  custom_id = "copilot-621c8d7b-5e11-423b-8cf1-124f20d3b2f8"
  private   = true
}
