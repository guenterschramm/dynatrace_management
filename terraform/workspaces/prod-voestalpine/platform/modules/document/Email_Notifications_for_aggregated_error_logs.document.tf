resource "dynatrace_document" "Email_Notifications_for_aggregated_error_logs" {
  name      = "Email Notifications for aggregated error logs"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: send-email-with-log-summary
      dependencies:
        apps:
        - id: dynatrace.automations
          version: ^1.2781.0
        - id: dynatrace.email
          version: ^1.8.6-dev.20260206T061657+64369db9
      inputs: []
    workflow:
      title: Send Email with aggregated log summary
      description: ''
      schemaVersion: 3
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Send email notifications for error logs with distributed trace links
    
        This workflow detects error logs, groups them by content pattern, and sends an email notification with clickable links to distributed traces for quick troubleshooting.
    
        # Setup
    
        No additional setup or connection is required to send emails from this workflow.
    
        For detailed configuration options, see [Send email action](https://dt-url.net/9022zbt).
    
        # Trigger
    
        By default, this workflow uses an on-demand [trigger](?trigger=). You can leave it as-is to trigger the workflow manually or via API.
    
        You can update the trigger to run on a schedule (for example, hourly or daily at a specific time) to automatically monitor for error logs.
    
        # Acquire tenant information
    
        The task [acquire_tenant_information](?task=acquire_tenant_information) retrieves the environment URL using the Dynatrace SDK. This URL is used later to construct clickable trace links in the email notification.
    
        No configuration is required for this task.
    
        # Query error logs
    
        The task [fetch_log_summary](?task=fetch_log_summary&tab=input) runs a DQL query that:
        - Fetches error logs from the last 24 hours
        - Filters by `ERROR` level
        - Groups logs by the first 23 characters of the content
        - Captures the latest timestamp, trace ID, and event count for each group
    
        You can customize the query:
        - **Time range**: Change `from:now() - 24h` to a different period (for example, `12h` or `48h`)
        - **Log level**: Add other levels like `WARN` by extending the filter: `matchesValue(level, "ERROR") OR matchesValue(level, "WARN")`
        - **Result limit**: Adjust `limit 20` to show more or fewer log groups
    
        # Configure the email
    
        In the task [send_log_summary](?task=send_log_summary&tab=input), configure who receives the notification and what it contains.
    
        - **Recipients**:
          Update the **To** field with one or more recipients, for example:
          ```code
          oncall@example.com, sre-team@example.com
          ```
          Optionally, add **CC** or **BCC** recipients for additional visibility.
    
        - **Subject** (default):
          ```code
          Error Log Summary
          ```
          You can customize it to include specific information
    
        - **Body**: The email contains a table with:
          - **Group Key**: First 23 characters of log content to identify similar errors
          - **Latest Occurrence**: Timestamp of the most recent log entry
          - **Event Count**: Number of logs in this group
          - **Sample Message**: Truncated example of the log content (up to 160 characters)
          - **TraceId**: Clickable link that opens the distributed trace overview in Dynatrace
    
          The trace link automatically includes the correct timestamp and trace ID for immediate investigation.
    
        # Customization examples
    
        **Group by different content length**:
        In the DQL query [fetch_log_summary](?task=fetch_log_summary&tab=input), change the substring length to group logs differently:
        ```code
        firstPartOfTheContent = substring(content, from:0, to:50)
        ```
    
        **Adjust message truncation**:
        In the task [send_log_summary](?task=send_log_summary&tab=input), modify the message body to show more or less of the sample message:
        ```code
        {{ (r["exampleContent"] or "N/A") | replace("\n"," ") | truncate(250, True, '…') }}
        ```
    
        **Filter by specific services**:
        Add a filter in the DQL query to focus on logs from particular services:
        ```code
        | filter matchesValue(k8s.deployment.name, "my-service")
        ```
      tasks:
        send_log_summary:
          name: send_log_summary
          input:
            cc: []
            to: []
            bcc: []
            content: '{% set res = result("fetch_log_summary") %}
    
    
              {% set rows = res["records"] if res and "records" in res else [] %}
    
              {% if rows and rows|length > 0 %}
    
              Top log groups (grouped by first 23 characters of content)
    
    
              Group Key | Latest Occurrence | Event Count | Sample Message (latest) |
              TraceId
    
              --- | --- | --- | --- | ---
    
              {% for r in rows %}
    
              {{ (r["firstPartOfTheContent"] or "N/A") | replace("\n"," ") }} | {{ r["latestTimestamp"]
              }} | {{ r["eventCount"] }} | {{ (r["exampleContent"] or "N/A") | replace("\n","
              ") | truncate(160, True, ''…'') }} | [{{ r["exampleTraceId"] }}]({{ result("acquire_tenant_information")["tenantUrl"]
              }}/ui/intent/dynatrace.distributedtracing/view-trace#{"timestamp"%3A"{{
              r["latestTimestamp"] }}"%2C"dt.segments"%3A[]%2C"trace.id"%3A"{{ r["exampleTraceId"]
              }}"%2C"span.id"%3A""})
    
              {% endfor %}
    
              {% else %}
    
              No aggregated log results for the selected window.
    
              {% endif %}'
            subject: Error Log Summary
          action: dynatrace.email:send-email
          position:
            x: 0
            y: 3
          conditions:
            states:
              fetch_log_summary: OK
          description: Send log summary via email
          predecessors:
          - fetch_log_summary
        fetch_log_summary:
          name: fetch_log_summary
          input:
            query: |
              fetch logs, bucket:{"default_logs"}, from:now() - 24h
              | filter matchesValue(level, "ERROR") OR matchesValue(loglevel, "ERROR")
              | filter dt.tenant.uuid == "{{ result("acquire_tenant_information").tenantId }}"
              | summarize by:{dt.tenant.uuid, level, firstPartOfTheContent = substring(content, from:0, to:23)},
                  {latestTimestamp = max(timestamp),
                   exampleTraceId = max(trace_id),
                   eventCount = count(),
                   exampleContent = max(content)}
              | fields latestTimestamp, dt.tenant.uuid, eventCount, firstPartOfTheContent, exampleContent, exampleTraceId, status = level
              | sort eventCount desc
              | limit 20
          action: dynatrace.automations:execute-dql-query
          position:
            x: 0
            y: 2
          conditions:
            states:
              acquire_tenant_information: OK
          description: Fetch the default log errors from the last 24 hours
          predecessors:
          - acquire_tenant_information
        acquire_tenant_information:
          name: acquire_tenant_information
          input:
            script: |-
              import { execution } from '@dynatrace-sdk/automation-utils';
              import { getEnvironmentUrl } from '@dynatrace-sdk/app-environment';
    
              export default async function ({ execution_id }) {
                // Get tenant URL
                const tenantUrl = getEnvironmentUrl();
    
                // Extract tenant ID from URL
                const url = new URL(tenantUrl);
                const tenantId = url.hostname.split('.')[0];
    
                return {
                  tenantUrl: tenantUrl,
                  tenantId: tenantId
                };
              }
          action: dynatrace.automations:run-javascript
          position:
            x: 0
            y: 1
          description: Fetch the environment URL and  ID
          predecessors: []
    EOT
  custom_id = "dynatrace.email.send-email-with-aggregated-log-summary"
  # private = false
}
