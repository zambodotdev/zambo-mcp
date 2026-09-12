# Installing Zambo in Cline

Zambo is a remote MCP execution layer: 120 native tools across 17 products behind one
zero-auth endpoint. No API key, no account, no environment variables.

## Option A — zero-config (recommended)

1. Open Cline's **MCP Servers** settings.
2. Add a remote server: `https://zambo.dev/api/mcp`
3. Done. Free: 20 calls/tool/day.

## Option B — config JSON

```json
{"mcpServers":{"zambo":{"url":"https://zambo.dev/api/mcp"}}}
```

## Option C — self-host

```bash
npx zambo install
```

## Verify it works

Ask Cline: "Use Zambo to get the current BTC-USD price. Show the number, the source, and the receipt URL."

## Docs for agents

- https://zambo.dev/for-agents/
- https://zambo.dev/llms-full.txt (full tool catalog)
- https://zambo.dev/.well-known/agent.json
