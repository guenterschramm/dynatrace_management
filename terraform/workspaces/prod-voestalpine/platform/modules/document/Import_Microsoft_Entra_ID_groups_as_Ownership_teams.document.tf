resource "dynatrace_document" "Import_Microsoft_Entra_ID_groups_as_Ownership_teams" {
  name      = "Import Microsoft Entra ID groups as Ownership teams"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: import-microsoft-entra-id-groups
      dependencies:
        apps:
        - id: dynatrace.azure.connector
          version: ^2.1.14-dev.20260128T132539+6a479f97
        - id: dynatrace.ownership
          version: ^2.2.2-dev.20260128T065327+60c3e84a
      inputs:
      - type: connection
        schema: app:dynatrace.azure.connector:microsoft-entra-identity-developer-connection
        targets:
        - tasks.get_entra_id_groups.connection
    workflow:
      title: Import Microsoft Entra ID groups as Ownership teams
      description: ''
      schemaVersion: 3
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Import Microsoft Entra ID groups as Ownership teams
    
        This workflow fetches Microsoft Entra ID groups and imports them into Dynatrace.
    
        # Setup
    
        1. **Set up Microsoft Entra ID Connector**\
             If you have not already you need to [set up a connection](/ui/apps/dynatrace.settings/settings/dynatrace.azure.connector) with Microsoft Azure. Learn more about [Microsoft Entra ID setup](https://dt-url.net/c862ez4) in the official Dynatrace documentation.
        1. **Set up Ownership**\
             When importing teams with Ownership "Import teams" action there is no additional setup required. To learn more about [supported methods of applying ownership](https://dt-url.net/ws0243t) please visit the official Dynatrace documentation.
    
        # Trigger Configuration
    
        By default, this workflow uses an on-demand [trigger](?trigger=).
        You can leave it as-is to trigger the workflow manually or via API.
        You can update the trigger to run on a schedule (for example, daily or weekly at a specific time).
    
        # Get Entra ID groups
    
        1. **Customize filter criteria** for [get_entra_id_groups](?task=get_entra_id_groups) (Optional)\
             Feel free to filter groups to be fetched from Microsoft Entra ID.
        1. **Verify `$select` statement** for [get_entra_id_groups](?task=get_entra_id_groups)\
             Ensure at least `id` and `displayName` are included. These fields are required when importing Entra ID groups as ownership teams.
    
        # Import teams
    
        **Customize import preferences** for [import_ownership_teams](?task=import_ownership_teams) (Optional)\
        Depending on your use case you can configure whether you only want to import new teams and skip existing teams (default) or if you want to overwrite existing teams.\
        Furthermore you can decide whether you want to fail action and do not import a single team or if you want to continue action and import valid teams while logging the errors (default).
    
        # Customization Examples
    
        In some cases you may only want to import certain groups as ownership teams. If out-of-the-box filter capabilities provided by Entra ID are not enough you can always use a "Run JavaScript" action and manually preprocess your groups. For example:
    
        ```js
        import { result } from '@dynatrace-sdk/automation-utils';
    
        export default async function () {
          const getEntraIdGroupsResult = await result('get_entra_id_groups');
          const groups = getEntraIdGroupsResult.groups;
          const filteredGroups = groups.filter((group) => group.mailEnabled);
    
          return {
            ...getEntraIdGroupsResult,
            count: filteredGroups.length,
            groups: filteredGroups,
          };
        }
        ```
    
        # Next steps
    
        * Turn on notifications 🔔 to be notified about workflow failures via email.
        * Once the workflow has run you should see imported teams when navigating to **Settings > Environment segmentation > Ownership > Teams**.
        * Create a separate workflow triggered by a problem and get owners for affected entities. Use contact details to notify responsible teams about the problem.
    
        # Learn more
    
        * [Microsoft Entra ID Connector](https://dt-url.net/c862ez4)
        * [Ownership](https://dt-url.net/ih0266u)
      tasks:
        get_entra_id_groups:
          name: get_entra_id_groups
          input:
            top: '999'
            count: 'true'
            expand: ''
            filter: ''
            search: ''
            select: id,displayName,description,mail,mailNickname
            orderby: ''
            connection: ''
          action: dynatrace.azure.connector:get-groups
          position:
            x: 0
            y: 1
          description: Fetch your groups from Microsoft Entra ID
          predecessors: []
        import_ownership_teams:
          name: import_ownership_teams
          input:
            importData: '{{ result("get_entra_id_groups") }}'
            importType: IMPORT_ONLY
            failStrategy: CONTINUE_AND_LOG_FAILURE
            importSource: Entra ID groups
          action: dynatrace.ownership:import-teams-to-settings
          active: true
          position:
            x: 0
            y: 2
          conditions:
            states:
              get_entra_id_groups: OK
          description: Import teams into Dynatrace.
          predecessors:
          - get_entra_id_groups
    EOT
  custom_id = "dynatrace.ownership.import-microsoft-entra-id-groups"
  # private = false
}
