resource "dynatrace_document" "Email_Reminder_for_Open_Jira_Bugs" {
  name      = "Email Reminder for Open Jira Bugs"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: email-reminder-for-open-jira-bugs
      dependencies:
        apps:
        - id: dynatrace.automations
          version: ^1.2632.0
        - id: dynatrace.email
          version: ^1.8.6-dev.20260128T065517+c75a09bf
        - id: dynatrace.jira
          version: ^5.6.8-dev.20260122T074638+229c9e4e
      inputs:
      - type: connection
        schema: app:dynatrace.jira:connection
        targets:
        - tasks.fetch_open_bugs.connectionId
    workflow:
      title: Email Reminder for Open Jira Bugs
      description: ''
      schemaVersion: 3
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Send open Jira bugs via email
    
        This workflow fetches open bug tickets from Jira using a JQL query and sends a summary via email.
    
        # Setup
    
        If your environment doesn't already have a Jira connection, you'll need to create one with permissions to read issues in the target project.
        For detailed instructions, see [Set up Jira integration](https://dt-url.net/ug02rll).
    
        # Trigger
    
        By default, this workflow uses an on-demand [trigger](?trigger=). You can leave it as-is to trigger the workflow manually or via API.
    
        You can update the trigger to run on a schedule (for example, daily on weekdays at 9:00 AM).
    
        # Fetch open bugs
    
        In the task [fetch_open_bugs](?task=fetch_open_bugs&tab=input), configure the Jira query:
    
        - **Connection**: Select or create your Jira connection
        - **JQL query**: The preconfigured query fetches open bugs. Customize it to match your project and criteria:
        ```jql
        project = YOUR_PROJECT AND issuetype = Bug AND status = Open
        ```
        - **Maximum number of results**: Adjust to increase or decrease the number of bug tickets fetched (default is typically 50)
    
        # Send email notification
    
        In the task [notify_via_email](?task=notify_via_email&tab=input), configure the email recipients and content:
    
        - **To**: Enter at least one recipient email address (required)
        - **Cc** (optional): Enter additional recipients
        - **Bcc** (optional): Enter additional recipients for blind copy
        - **Subject**: The preconfigured subject includes the bug count
        - **Body**: The template lists all open bugs with links to Jira
    
        If no bugs are found, the email clearly states that no open bugs exist.
    
        # Customization examples
    
        Use these examples for common adjustments:
    
        - **Filter by priority**
          In the [fetch_open_bugs](?task=fetch_open_bugs&tab=input) JQL query:
        ```jql
        project = YOUR_PROJECT AND issuetype = Bug AND status = Open AND priority in (High, Critical)
        ```
    
        - **Filter by assignee**
          In the [fetch_open_bugs](?task=fetch_open_bugs&tab=input) JQL query:
        ```jql
        project = YOUR_PROJECT AND issuetype = Bug AND status = Open AND assignee = currentUser()
        ```
    
        - **Customize email subject**
          In the [notify_via_email](?task=notify_via_email&tab=input) Subject field:
        ```jinja
        Daily Bug Report: {{ result("fetch_open_bugs") | length }} open bugs
        ```
    
        - **Add more bug details to email**
          In the [notify_via_email](?task=notify_via_email&tab=input) Body field, extend the template to include priority, assignee, or created date.
    
        - **Schedule daily reports**
          Change the [trigger](?trigger=) to a schedule trigger and set it to run on weekdays at a specific time (for example, 9:00 AM)
      tasks:
        build_bug_urls:
          name: build_bug_urls
          input:
            script: "import { result } from '@dynatrace-sdk/automation-utils';\n\nexport\
              \ default async function () {\n  const openBugs = await result('fetch_open_bugs');\n\
              \  const bugUrls = [];\n\n  for (const bug of openBugs) {\n    const origin\
              \ = new URL(bug.self).origin;\n    const bugKey = bug.key;\n    const url\
              \ = new URL(`$${origin}/browse/$${bugKey}`);\n    bugUrls.push(url);\n  }\n\
              \  \n  return bugUrls;\n}"
          action: dynatrace.automations:run-javascript
          position:
            x: 0
            y: 2
          conditions:
            states:
              fetch_open_bugs: OK
          description: Run custom JavaScript code.
          predecessors:
          - fetch_open_bugs
        fetch_open_bugs:
          name: fetch_open_bugs
          input:
            jql: type = Bug AND status = Open
            expand: []
            fields:
            - key
            maxResults: 50
            connectionId: ''
          action: dynatrace.jira:jira-jql-search
          position:
            x: 0
            y: 1
          description: Execute JQL queries to fetch issues from Jira
          predecessors: []
        notify_via_email:
          name: notify_via_email
          input:
            cc: []
            to:
            - valid-email@email.com
            bcc: []
            content: "{% if result('build_bug_urls') %}\n  The following bug tickets are\
              \ currently **open** in Jira:\n  {% for bugUrl in result('build_bug_urls')\
              \ %}\n  * {{ bugUrl }}\n  {% endfor %}\n{% else %}\n  Great news! There\
              \ are currently no open bug tickets in Jira.\n{% endif %}"
            subject: Open Bug Tickets Notification
          action: dynatrace.email:send-email
          position:
            x: 0
            y: 3
          conditions:
            states:
              build_bug_urls: OK
          description: Send email
          predecessors:
          - build_bug_urls
    EOT
  custom_id = "dynatrace.jira.email-reminder-for-open-jira-bugs"
  # private = false
}
