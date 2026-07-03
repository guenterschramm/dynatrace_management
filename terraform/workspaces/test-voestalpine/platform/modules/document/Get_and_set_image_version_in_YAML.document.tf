resource "dynatrace_document" "Get_and_set_image_version_in_YAML" {
  name      = "Get and set image version in YAML"
  type      = "workflow-template"
  content   =<<-EOT
    metadata:
      version: '1'
      trackingId: get-and-set-image-version-in-yaml
      dependencies:
        apps:
        - id: dynatrace.text.processing
          version: ^1.0.3-dev.20260216T023047+758d6e2c
      inputs: []
    workflow:
      title: Get and set image version in YAML
      description: ''
      schemaVersion: 4
      trigger: {}
      result: null
      type: STANDARD
      input: {}
      hourlyExecutionLimit: 1000
      guide: |
        # Get and set image version in YAML
    
        This workflow showcases how to use the Text processing app to read and update an image version in a Kubernetes Pod YAML. It uses one task to extract the image value from the YAML and another task to modify that value.
    
        # Setup
    
        The Text processing app does not require any external connections.
    
        You only need to provide the YAML content you want to work with in the respective tasks.
    
        # Trigger
    
        By default, this workflow uses an on-demand [trigger](?trigger=). You can leave it as-is to run the workflow manually or via API.
    
        You can also update the trigger to run on a schedule (for example, daily or weekly) or to start from another workflow, depending on how you want to automate your YAML processing.
    
        # Get the version of an image
    
        The task [get_version_of_an_image](?task=get_version_of_an_image&tab=input) demonstrates how to read a value from a YAML file using the **Get YAML value** action.
    
        Configure the task as follows:
    
        1. **YAML content**
           Paste or provide the full YAML you want to inspect, for example a Pod specification:
           ```yaml
           apiVersion: v1
           kind: Pod
           metadata:
             name: my-app-pod
             labels:
               app: my-app
               environment: production
           spec:
             containers:
               - name: nginx-container
                 image: nginx:1.25.3
                 ports:
                   - containerPort: 80
           ```
    
        2. **Document index**
           Keep the default `0` if your YAML contains a single document.
    
        3. **Path**
           Set the path to the property you want to read.
           In this example, the image field of the first container:
           ```code
           .spec.containers[0].image
           ```
    
        The task returns the image value (for example, `nginx:1.25.3`), which you can use in later steps of the workflow.
    
        # Adjust the version of an image
    
        The task [adjust_version_of_an_image](?task=adjust_version_of_an_image&tab=input) demonstrates how to update a value in a YAML file using the **Set YAML value** action.
    
        Configure the task as follows:
    
        1. **YAML content**
           Provide the YAML you want to modify. You can:
           - Paste the same Pod YAML as in the previous task, or
           - Use the output of a previous task that supplies YAML content.
    
        2. **Document index**
           Keep the default `0` for a single-document YAML.
    
        3. **Path**
           Use the same path as in the read example to target the image field:
           ```code
           .spec.containers[0].image
           ```
    
        4. **Value**
           Set the new image value you want to write, for example:
           ```code
           nginx:1.25.4
           ```
    
        The task updates the YAML at the specified path and returns the modified YAML, which you can use in downstream tasks (for example, to store the file or submit it to another system).
    
        # Customization examples
    
        You can adapt this workflow to other YAML-based use cases:
    
        1. **Target a different container**
           Update the path to point to another container in the list, for example:
           ```code
           .spec.containers[1].image
           ```
    
        2. **Modify other properties**
           Use the same pattern to read or update any YAML field, such as:
           ```code
           .metadata.labels.environment
           .spec.replicas
           ```
    
        This template is intended as a simple reference to learn how to get and set values in YAML with the Text processing app and can be extended to match your own deployment and configuration workflows.
      tasks:
        get_version_of_an_image:
          name: get_version_of_an_image
          input:
            path: .spec.containers[0].image
            yaml: |
              apiVersion: v1
              kind: Pod
              metadata:
                name: my-app-pod
                labels:
                  app: my-app
                  environment: production
              spec:
                containers:
                - name: nginx-container
                  image: nginx:1.25.3
                  ports:
                  - containerPort: 80
                    protocol: TCP
                  resources:
                    requests:
                      memory: "64Mi"
                      cpu: "250m"
                    limits:
                      memory: "128Mi"
                      cpu: "500m"
                  volumeMounts:
                  - name: shared-data
                    mountPath: /usr/share/nginx/html
    
                - name: app-container
                  image: python:3.11-slim
                  command: ["python", "-m", "http.server", "8080"]
                  ports:
                  - containerPort: 8080
                    protocol: TCP
                  env:
                  - name: ENVIRONMENT
                    value: "production"
                  resources:
                    requests:
                      memory: "128Mi"
                      cpu: "250m"
                    limits:
                      memory: "256Mi"
                      cpu: "500m"
                  volumeMounts:
                  - name: shared-data
                    mountPath: /data
    
                volumes:
                - name: shared-data
                  emptyDir: {}
                restartPolicy: Always
          action: dynatrace.text.processing:get-yaml-value
          position:
            x: -1
            y: 1
          description: Retrieves a value from a YAML file
          predecessors: []
        adjust_version_of_an_image:
          name: adjust_version_of_an_image
          input:
            path: .spec.containers[0].image
            yaml: |
              apiVersion: v1
              kind: Pod
              metadata:
                name: my-app-pod
                labels:
                  app: my-app
                  environment: production
              spec:
                containers:
                - name: nginx-container
                  image: nginx:1.25.3
                  ports:
                  - containerPort: 80
                    protocol: TCP
                  resources:
                    requests:
                      memory: "64Mi"
                      cpu: "250m"
                    limits:
                      memory: "128Mi"
                      cpu: "500m"
                  volumeMounts:
                  - name: shared-data
                    mountPath: /usr/share/nginx/html
    
                - name: app-container
                  image: python:3.11-slim
                  command: ["python", "-m", "http.server", "8080"]
                  ports:
                  - containerPort: 8080
                    protocol: TCP
                  env:
                  - name: ENVIRONMENT
                    value: "production"
                  resources:
                    requests:
                      memory: "128Mi"
                      cpu: "250m"
                    limits:
                      memory: "256Mi"
                      cpu: "500m"
                  volumeMounts:
                  - name: shared-data
                    mountPath: /data
    
                volumes:
                - name: shared-data
                  emptyDir: {}
                restartPolicy: Always
            value: nginx:1.25.4
          action: dynatrace.text.processing:set-yaml-value
          position:
            x: 1
            y: 1
          description: Manipulates a YAML
          predecessors: []
    EOT
  custom_id = "dynatrace.text.processing.get-and-set-image-version-in-yaml"
  # private = false
}
