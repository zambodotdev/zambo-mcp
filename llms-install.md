# Installing Zambo

Zambo is the verifiable work layer for AI: 153 tools behind one remote MCP endpoint, with continuity across AIs and a verifiable AER-1 receipt for every job. No API key, no account, no environment variables.

Endpoint: https://zambo.dev/mcp

## Option A - config JSON (Claude, Cursor, Windsurf, Cline, and other MCP clients)

Paste this into your MCP client config:

```json
{"mcpServers":{"zambo":{"url":"https://zambo.dev/mcp"}}}
```

For Claude Desktop, use `claude_desktop_config.json`. For Cursor, use `.cursor/mcp.json`. For VS Code, use `.vscode/mcp.json`. For other clients, use the client's connector settings.

## Option B - Claude Code

```bash
claude mcp add --transport http zambo https://zambo.dev/mcp
```

## Option C - one command

```bash
npx zambo install
```

## Free tier and passes

- Free: 20 free calls per day, then they upgrade.
- Day Pass: $0.99 USDC on Base for 24 hours.
- Zambo Pass: $29 for 30 days, one payment.
- $ZAMBO holders: $19 for 30 days.

## Verify it works

Ask your AI: "Use Zambo to get the current BTC-USD price. Show the number, the source, and the receipt URL."

Then try HANDOVER, the flagship product, plus `capability_search`, `memory_remember`, `memory_recall`, and `continuity_get_recent`. List tools first with `tools/list`, then call.

## Docs for agents

- https://zambo.dev/for-agents/
- https://zambo.dev/llms-full.txt (full tool catalog)
- https://zambo.dev/.well-known/llms.txt
- https://zambo.dev/.well-known/agent.json
- Main code home: https://gitlab.com/rambozambodotdev/zambo ; this GitHub repo is the public pointer.
