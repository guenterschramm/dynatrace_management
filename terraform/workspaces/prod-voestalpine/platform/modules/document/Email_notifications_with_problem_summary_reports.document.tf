resource "dynatrace_document" "Email_notifications_with_problem_summary_reports" {
  name      = "Email notifications with problem summary reports"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: send-email-with-problem-summary
      dependencies:
        apps:
        - id: dynatrace.automations
          version: ^1.2781.0
        - id: dynatrace.email
          version: ^1.9.1-dev.20260219T072412+1a6f8da6
      inputs: []
    workflow:
      title: Send Email with DQL Query Results Table
      description: ''
      schemaVersion: 3
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Setup
    
        No additional setup or connection is required to send emails from this workflow.
    
        For detailed configuration options, see [Send email action](https://dt-url.net/9022zbt).
    
        # Trigger
    
        By default, this workflow uses an on-demand [trigger](?trigger=). You can leave it as-is to trigger the workflow manually or via API.
    
        You can update the trigger to run on a schedule (for example, weekly or monthly at a specific time) to receive regular problem summaries.
    
        # Fetch problems with DQL
    
        The task [fetch_problems_with_dql](?task=fetch_problems_with_dql&tab=input) runs a DQL query that retrieves the latest 100 problem events from the past 7 days, sorted chronologically.
    
        You can customize the query to adjust:
        - **Time range**: Change `from:now()-7d` to a different period (for example, `now()-14d` for two weeks)
        - **Result limit**: Modify `limit 100` to retrieve more or fewer problems
        - **Filters**: Add filters to focus on specific problem categories or severities, for example:
        ```dql
        | filter event.severity_level in ("AVAILABILITY", "ERROR")
        ```
    
        # Configure the email
    
        In the task [send_problem_summary](?task=send_problem_summary&tab=input), configure who receives the problem summary and customize the email format.
    
        - **Recipients**:
          Update the **To** field with one or more email addresses:
          ```code
          team@example.com, manager@example.com
          ```
    
        - **Subject** (recommended):
          ```code
          Problem Summary - Last 7 Days
          ```
    
        - **Body**:
          The email automatically generates a markdown table containing all problem details from the DQL query. You can add introductory text before the table:
          ```code
          # Problem Summary
          Here is a summary of problems detected in the past 7 days:
          [existing table code]
          ```
      tasks:
        send_problem_summary:
          name: send_problem_summary
          input:
            cc: []
            to: []
            bcc: []
            content: |
              # Problem Summary
              Here is a summary of problems detected in the past 7 days:
              {% for type in result("fetch_problems_with_dql").records %}
                  {% if loop.first %}
                         {% for key in type.keys() %}| {{key}} {% endfor %} |
                         {% for key in type.keys() %}| ---------  {% endfor %} |
                  {% endif %}
                  {% for key, value in type.items() %}| {{value | replace('|', '\\|') | replace('\n', ' ') | replace('\r', '') | replace('\t', ' ')}} {% endfor %} |
              {% endfor %}
            subject: Problem Summary - Last 7 Days
          action: dynatrace.email:send-email
          position:
            x: 0
            y: 2
          conditions:
            states:
              fetch_problems_with_dql: OK
          description: Send email with problem summary
          predecessors:
          - fetch_problems_with_dql
        fetch_problems_with_dql:
          name: fetch_problems_with_dql
          input:
            query: |
              fetch events, from:now()-7d
              | filter event.kind=="DAVIS_PROBLEM" and (event.level == "AVAILABILITY" or event.level == "ERROR")
              | sort timestamp asc
              | limit 100
          action: dynatrace.automations:execute-dql-query
          position:
            x: 0
            y: 1
          description: Make use of Dynatrace Grail data in your workflow.
          predecessors: []
    EOT
  custom_id = "dynatrace.email.send-email-with-dql-query-results-table"
  # private = false
}
