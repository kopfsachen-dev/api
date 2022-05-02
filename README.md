# Kopfsachen OpenAPI Specification

> The OpenAPI Specification (OAS) defines a standard, language-agnostic interface to RESTful APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection.
(https://swagger.io/specification/)

## How to use
Open [the specification](openapi.yaml) in your favorite [Swagger UI](https://editor.swagger.io/) or OpenAPI Editor, e.g. in [Stoplight Studio](https://stoplight.io/studio/).

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