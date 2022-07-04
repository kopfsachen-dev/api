# Kopfsachen OpenAPI Specification

> The OpenAPI Specification (OAS) defines a standard, language-agnostic interface to RESTful APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection.
(https://swagger.io/specification/)

## Quick Access
Access the [latest API Specification in SwaggerUI](https://kopfsachen-dev.github.io/api/).

## How to use
Open [the specification](openapi.yaml) in your favorite [Swagger UI](https://editor.swagger.io/) or OpenAPI Editor, e.g. in [Stoplight Studio](https://stoplight.io/studio/).

Please note that the specification is split over multiple files, so the editor has to support multiple files. To see local edits, you can start the server.
Alternatively, some editors allow the explicit specification of a resolvement path. In that case, you can stick with just the `openapi.yaml` file and set the resolvement path to `https://github.com/kopfsachen-dev/api/blob/main`.

## Live
See it [here](https://kopfsachen-dev.github.io/api/) in action.

## Try out with mock server
```bash
# Install prism mock server
npm install @stoplight/prism-cli -g
npm install speccy -g

# Merge into a single file
speccy resolve openapi.yaml -o complete.yaml

# Start prism mock server
prism mock -d complete.yaml

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
