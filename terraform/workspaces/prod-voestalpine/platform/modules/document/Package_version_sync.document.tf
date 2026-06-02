resource "dynatrace_document" "Package_version_sync" {
  name      = "Package version sync"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: package-version-sync
      dependencies:
        apps:
        - id: dynatrace.github.connector
          version: ^2.7.2-dev.20260129T055907+6b45bdf7
        - id: dynatrace.text.processing
          version: ^1.0.3-dev.20260128T065419+b89103e1
      inputs:
      - type: connection
        schema: app:dynatrace.github.connector:connection
        targets:
        - tasks.get_package_json.connectionId
        - tasks.commit_version_sync.connectionId
        - tasks.get_package_lock_json.connectionId
    workflow:
      title: Package version sync
      description: ''
      schemaVersion: 3
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Package version sync
    
        This workflow synchronizes versions between package.json and package-lock.json in a GitHub repository. If versions differ, it updates package-lock.json to match package.json and commits the corrected file.
    
        # Setup
    
        If your environment doesn't already have a GitHub connection, you'll need to create one.
        For detailed instructions, see [Set up GitHub integration](https://dt-url.net/sz02zyb).
    
        # Trigger
    
        By default, this workflow uses an on-demand [trigger](?trigger=). You can leave it as-is to trigger the workflow manually or via API.
    
        You can update the trigger to run on a schedule (for example, daily or weekly at a specific time).
    
        # Get package.json
    
        In the task [get_package_json](?task=get_package_json&tab=input), configure the GitHub repository details:
    
        - **Owner**: Set the repository owner (organization or user)
        - **Repository**: Set the repository name
        - **Reference**: Set the branch or ref (for example, `main`)
        - **Path**: Keep as `package.json`
    
        # Get package-lock.json
    
        In the task [get_package_lock_json](?task=get_package_lock_json&tab=input), configure the same repository details:
    
        - **Owner**: Set the repository owner (must match the previous task)
        - **Repository**: Set the repository name (must match the previous task)
        - **Reference**: Set the branch or ref (for example, `main`)
        - **Path**: Keep as `package-lock.json`
    
        # Extract versions
    
        The workflow uses two text processing tasks to extract version information:
    
        - **get_version**: Extracts the version from `package.json` using path `.version`
        - **get_lock_version**: Extracts the version from `package-lock.json` using path `.version`
    
        These tasks are preconfigured and typically don't require modification.
    
        # Set version in lockfile
    
        The task **set_version_in_lockfile** updates the version in `package-lock.json` using semantic version parsing.
    
        The value field uses this Jinja expression to parse and compare versions:
        ```jinja
        {%- set semver = (
          (result("get_version")["json"] | string | trim).split('.')[0] | int,
          ((result("get_version")["json"] | string | trim).split('.')[1] | default('0') | int),
          ((result("get_version")["json"] | string | trim).split('.')[2] | default('0') | int)
        )
        -%}
    
        {{ result("get_version")["json"] }}
        ```
    
        This task only runs when versions differ between the two files.
    
        # Set lockfile root package version
    
        The task **set_lockfile_root_package_version** updates the root package version for npm v7+ lockfiles.
    
        It sets the `packages[""].version` field to ensure consistency across the lockfile structure. This task depends on `set_version_in_lockfile` completing successfully.
    
        # Commit changes
    
        In the task [commit_version_sync](?task=commit_version_sync&tab=input), configure where to commit the synchronized file:
    
        - **Owner**: Set the repository owner (must match earlier tasks)
        - **Repository**: Set the repository name (must match earlier tasks)
        - **Branch**: Set the target branch for the commit
        - **File path**: Automatically set based on which file needs updating
        - **Commit message**: Customize if needed (default includes the synchronized version)
    
        # Customization examples
    
        1. **Change commit message format**
           In the [commit_version_sync](?task=commit_version_sync&tab=input) task, update the **Message** field:
           ```
           chore: sync package version to {{ result("get_version")["json"] | string | trim }}
           ```
    
        2. **Target a different branch**
           Update the Reference field in all GitHub tasks to point to your desired branch.
    
        3. **Run on a schedule**
           Change the trigger to a schedule trigger and set a reasonable interval (for example, weekdays at 9:00 AM).
      tasks:
        get_version:
          name: get_version
          input:
            json: '{{result("get_package_json")["content"]}}'
            path: .version
          action: dynatrace.text.processing:get-json-value
          position:
            x: -1
            y: 2
          conditions:
            states:
              get_package_json: OK
          description: Retrieves the version from the package file
          predecessors:
          - get_package_json
        get_lock_version:
          name: get_lock_version
          input:
            json: '{{result("get_package_lock_json")["content"]}}'
            path: .version
          action: dynatrace.text.processing:get-json-value
          position:
            x: 1
            y: 2
          conditions:
            states:
              get_package_lock_json: OK
          description: Retrieves the version from the package-lock file
          predecessors:
          - get_package_lock_json
        get_package_json:
          name: get_package_json
          input:
            owner: ''
            filePath: package.json
            reference: main
            repository: ''
            connectionId: ''
          action: dynatrace.github.connector:get-content
          position:
            x: -1
            y: 1
          description: Retrieves the content of the package.json in a repository
          predecessors: []
        commit_version_sync:
          name: commit_version_sync
          input:
            owner: ''
            branch: sync-version-package-lock
            filePath: package-lock.json
            repository: ''
            fileContent: '{{result("set_lockfile_root_package_version")["json"]}}'
            connectionId: ''
            sourceBranch: main
            commitMessage: 'chore: harmonize package versions'
            createNewBranch: true
          action: dynatrace.github.connector:create-or-replace-file
          position:
            x: 0
            y: 5
          conditions:
            custom: '{{ result("get_lock_version")["json"] != result("get_version")["json"]
              }}'
            states:
              set_lockfile_root_package_version: OK
          description: Replaces the updated package file
          predecessors:
          - set_lockfile_root_package_version
        get_package_lock_json:
          name: get_package_lock_json
          input:
            owner: ''
            filePath: package-lock.json
            reference: main
            repository: ''
            connectionId: ''
          action: dynatrace.github.connector:get-content
          position:
            x: 1
            y: 1
          description: Retrieves the content of a package-lock.json in a repository
          predecessors: []
        set_version_in_lockfile:
          name: set_version_in_lockfile
          input:
            json: '{{result("get_package_lock_json")["content"]}}'
            path: .version
            value: "{%- set semver = (\n  (result(\"get_version\")[\"json\"] | string\
              \ | trim).split('.')[0] | int,\n  ((result(\"get_version\")[\"json\"] |\
              \ string | trim).split('.')[1] | default('0') | int),\n  ((result(\"get_version\"\
              )[\"json\"] | string | trim).split('.')[2] | default('0') | int)\n) \n-%}\n\
              \n{{ result(\"get_version\")[\"json\"] }}"
          action: dynatrace.text.processing:set-json-value
          position:
            x: 0
            y: 3
          conditions:
            else: SKIP
            custom: '{{ result("get_lock_version")["json"] != result("get_version")["json"]
              }}'
            states:
              get_version: OK
              get_lock_version: OK
          description: Sets the lock file version via semantic version comparison
          predecessors:
          - get_version
          - get_lock_version
        set_lockfile_root_package_version:
          name: set_lockfile_root_package_version
          input:
            json: '{{result("set_version_in_lockfile")["json"]}}'
            path: .packages.[""].version
            value: '{{ result("get_version")["json"] | string | replace(''\n'','''') |
              replace(''\r'','''') | replace(''\t'','''') | trim }}'
          action: dynatrace.text.processing:set-json-value
          position:
            x: 0
            y: 4
          conditions:
            else: SKIP
            custom: '{{ result("get_lock_version")["json"] != result("get_version")["json"]
              }}'
            states:
              set_version_in_lockfile: OK
          description: Set the package root version of the lockfile
          predecessors:
          - set_version_in_lockfile
    EOT
  custom_id = "dynatrace.text.processing.package-version-sync"
  # private = false
}
