#!/bin/sh
# entrypoint.sh
export OPENCODE_CONFIG_CONTENT=$(cat <<EOF
{
  "model": "abacus/route-llm",
  "provider": {
    "abacus": {
      "npm": "@ai-sdk/openai-compatible",
      "options": {
        "baseURL": "https://routellm.abacus.ai/v1",
        "apiKey": "${ABACUS_API_KEY}"
      },
      "models": { "route-llm": {} }
    }
  }
}
EOF
)
exec "$@"
