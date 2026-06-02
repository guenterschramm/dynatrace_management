resource "dynatrace_document" "Pull_Request_Review_Reminder" {
  name      = "Pull Request Review Reminder"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: pull-request-review-reminder
      dependencies:
        apps:
        - id: dynatrace.github.connector
          version: ^2.7.2-dev.20260122T061938+52b0fa12
        - id: dynatrace.slack
          version: ^3.2.4-dev.20260122T093317+ec890e7f
      inputs:
      - type: connection
        schema: app:dynatrace.github.connector:connection
        targets:
        - tasks.open_pull_requests.connectionId
      - type: connection
        schema: app:dynatrace.slack:connection
        targets:
        - tasks.send_summary_to_slack.connection
    workflow:
      title: Pull Request Review Reminder
      description: ''
      schemaVersion: 3
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Pull request review reminder
    
        This workflow sends a Slack reminder with all open pull requests that need review in a selected GitHub repository.
    
        # Setup
    
        If your environment doesn't already have GitHub and Slack connections, you'll need to create them.
    
        For detailed instructions, see:
        - [Set up GitHub integration](https://dt-url.net/sz02zyb)
        - [Set up Slack integration](https://dt-url.net/6y02rmx)
    
        # Trigger
    
        By default, this workflow uses an on-demand [trigger](?trigger=). You can leave it as-is to trigger the workflow manually or via API.
    
        You can update the trigger to run on a schedule (for example, daily on weekdays at 9:00 AM).
    
        # List pull requests
    
        In the task [open_pull_requests](?task=open_pull_requests&tab=input), configure the GitHub repository to monitor:
    
        - **Owner**: Set the repository owner (organization or user)
        - **Repository**: Set the repository name
        - **State**: Keep as `open` to list only open pull requests
    
        The action returns up to 30 pull requests.
    
        # Send Slack reminder
    
        In the task [send_summary_to_slack](?task=send_summary_to_slack&tab=input), configure where to send the reminder:
    
        - **Channel**: Select the target Slack channel
        - **Message**: The preconfigured template lists all open pull requests with links
        - **Attachments** (optional): Add structured details if needed
        - **Reactions** (optional): Add emoji reactions by providing their names
    
        If no pull requests are found, the message clearly states that no reviews are pending.
    
        # Customization examples
    
        Use these examples for common adjustments:
    
        1. **Filter by label**
           In the [open_pull_requests](?task=open_pull_requests&tab=input) task, add a filter condition after fetching:
        ```jinja
           {{ result("open_pull_requests") | selectattr("labels", "contains", "needs-review") | list }}
        ```
    
        2. **Customize the Slack message format**
           In the [send_summary_to_slack](?task=send_summary_to_slack&tab=input) Message field, adjust the template to include additional PR details like author or creation date.
    
        3. **Monitor multiple repositories**
           Duplicate the workflow and update the Repository field in each instance, or create multiple list tasks within one workflow.
    
        4. **Schedule reminders on weekdays only**
           Change the trigger to a schedule trigger and set it to run Monday through Friday at a specific time (for example, 9:00 AM)
      tasks:
        open_pull_requests:
          name: open_pull_requests
          input:
            owner: ''
            repository: ''
            connectionId: ''
          action: dynatrace.github.connector:list-pull-requests
          position:
            x: 0
            y: 1
          description: Lists latest open pull requests in a repository (returns 30 pull
            requests max.)
          predecessors: []
        send_summary_to_slack:
          name: send_summary_to_slack
          input:
            message: "{% set prs = result(\"open_pull_requests\")[\"pullRequests\"] %}\n\
              {% if not prs or prs|length == 0 %}\nNo open pull requests found.\n{% else\
              \ %}\n*:information_source: Open pull requests reminder ({{ prs|length }})*\n\
              \n{% for pr in prs %}\n• *{{ pr.title | replace(\"\\n\",\" \") | trim }}*\
              \ — `#{{ pr.number }}`\n  • *Repository*: `{{ pr.base.repo.full_name if\
              \ pr.base is defined and pr.base.repo is defined and pr.base.repo.full_name\
              \ is defined else \"n/a\" }}`\n  • *Author*: `{{ pr.user.login if pr.user\
              \ is defined and pr.user.login is defined else \"n/a\" }}`\n  • *Link*:\
              \ {{ pr.html_url }}\n\n{% endfor %}\n{% endif %}"
            reaction: []
            connection: ''
            channelType: expression
            executionDate: '{{ execution().started_at }}'
            appendToThread: false
            replyBroadcast: false
            selectedRequestType: 0
            attachmentToggleValue: none
          action: dynatrace.slack:slack-send-message
          position:
            x: 0
            y: 2
          conditions:
            states:
              open_pull_requests: OK
          description: Sends the Pull Request summary to a Slack Workspace
          predecessors:
          - open_pull_requests
    EOT
  custom_id = "dynatrace.github.connector.pull-request-review-reminder"
  # private = false
}
