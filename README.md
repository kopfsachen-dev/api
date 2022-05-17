# Kopfsachen OpenAPI Specification

> The OpenAPI Specification (OAS) defines a standard, language-agnostic interface to RESTful APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection.
(https://swagger.io/specification/)

## How to use
Open [the specification](openapi.yaml) in your favorite [Swagger UI](https://editor.swagger.io/) or OpenAPI Editor, e.g. in [Stoplight Studio](https://stoplight.io/studio/).

## Live
See it [here](https://app.swaggerhub.com/apis/kopfsachen/kopfsachen/0.1) in action.

## Try out with mock server
```bash
# Install prism mock server
npm install -g @stoplight/prism-cli

# Start prism mock server
prism mock -d openapi.yaml

# Test mock server with basic request
curl -X GET http://127.0.0.1:4010/user

# Install json parser
sudo apt-get install jq # or
brew install jq

# Enjoy formatted output
curl -X GET http://127.0.0.1:4010/user | jq

# Start implementing app
fetch('http://localhost:4010/user')
        .then(response => response.json())
        .then(data => ...) ...
```

## Workflow

1. Create new feature branch in github.com/kopfsachen-dev/api repository
2. Make changes to current OpenAPI specification
3. Push changes
4. Create new pull request & set reviewers from other [teams](https://github.com/orgs/kopfsachen-dev/teams) (backend <-> frontend)
5. Optional: Modify changes upon reviewer’s request
6. Implement your changes
