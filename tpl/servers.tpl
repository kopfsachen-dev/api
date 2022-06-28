servers:
  - url: {{- printf "https://%s.api.{environment}.mindtastic.lol" .Values.serviceName -}}
    variables:
      environment:
        enum:
          - live
          - stage
          - dev
        default: live
        description: Choose the environment to work on.