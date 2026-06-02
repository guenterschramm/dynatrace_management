resource "dynatrace_document" "Create_a_GitLab_issue_from_Problem_Event" {
  name      = "Create a GitLab issue from Problem Event"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: create-gitlab-issue
      dependencies:
        apps:
        - id: dynatrace.gitlab.connector
          version: ^2.1.5
      inputs:
      - type: connection
        schema: app:dynatrace.gitlab.connector:connection
        targets:
        - tasks.create_issue.connection
    workflow:
      title: Create GitLab issue from Problem Event
      description: Creates a GitLab issue from Problem Event and sends it to GitLab issues
      schemaVersion: 3
      trigger:
        eventTrigger:
          isActive: true
          filterQuery: event.kind == "DAVIS_PROBLEM" AND event.status == "ACTIVE" AND
            (event.status_transition == "CREATED" OR event.status_transition == "UPDATED"
            OR event.status_transition == "REOPENED") AND (event.category == "ERROR")
          uniqueExpression: '{{ event()["event.id"] }}-{{ "open" if event()["event.status_transition"]
            in ("CREATED", "UPDATED", "REOPENED", "REFRESHED") else "resolved" }}-{{ event()["dt.davis.last_reopen_timestamp"]
            }}'
          triggerConfiguration:
            type: davis-problem
            value:
              categories:
                error: true
              entityTags: {}
              customFilter: ''
              onProblemClose: false
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Setup
    
        If your environment doesn't already have a GitLab connection, you'll need to create one. For detailed instructions, see [Set up GitLab integration](https://docs.dynatrace.com/docs/analyze-explore-automate/workflows/actions/gitlab).
    
        # Trigger
    
        By default, this workflow uses a problem [trigger](?trigger=) that activates for error category events.
    
        To modify the trigger:
        - **Filter by category**: Currently set to `ERROR`. To include other categories, edit the trigger and select additional event categories (availability, slowdown, resource, custom).
        - **Entity filtering**: Add entity tag filters in the trigger configuration to limit issue creation to specific services or applications.
        - **Include problem closure**: Enable `onProblemClose` in trigger configuration if you want to update issues when problems resolve.
    
        To test the trigger configuration, select **Query past events** to view recent problem events that would have triggered this workflow.
    
        # Configure the issue
    
        In the task [create_issue](?task=create_issue&tab=input), you must specify the **projectId** for where the GitLab issue will be created.
    
        You can also customize:
        - **Title**: By default, uses the problem event name.
        - **Description**: By default, uses the problem event description.
        - **Labels**: Currently set to affected entity IDs. Update this field to use custom labels or project-specific tags.
        - **Assignees**: Add GitLab usernames to automatically assign issues.
    
      tasks:
        create_issue:
          name: create_issue
          input:
            title: '{{ event()[''event.name''] }}'
            labels: '{{ event()[''affected_entity_ids''] | join('','') }}'
            assignees: ''
            projectId: ''
            connection: ''
            issue_type: issue
            description: '{{event()[''event.description'']}}'
          action: dynatrace.gitlab.connector:gitlab-issue-create
          active: true
          position:
            x: 0
            y: 1
          conditions:
            custom: ''
            states: {}
          description: Creates a new issue in GitLab
          predecessors: []
    EOT
  custom_id = "dynatrace.gitlab.connector.create-issue-for-problem"
  # private = false
}
