# Zambo MCP

**Give your AI hands.** One URL. Type a job. Get a receipt.

100+ native MCP tools over a single zero-auth remote endpoint — solo-built AI infrastructure by Brennan Zambo. Paste the config into Claude, Cursor, Windsurf, Cline, or any Streamable HTTP MCP client. No API key, no signup. Free: 20 calls/tool/day.

[Connect](https://zambo.dev/mcp) · [Install](https://zambo.dev/install) · [Docs for agents](https://zambo.dev/for-agents/) · [Pricing](https://zambo.dev/pricing) · [Telegram](https://t.me/zambodev_bot)

[![Smithery](https://img.shields.io/badge/smithery-listed-c8f135?labelColor=1a1a18)](https://smithery.ai/servers/bramboz9494/zambo)

[![Install in VS Code](https://img.shields.io/badge/VS_Code-one--click_install-c8f135?labelColor=1a1a18)](https://insiders.vscode.dev/redirect?url=vscode%3Amcp%2Finstall%3F%7B%22name%22%3A%22zambo%22%2C%22url%22%3A%22https%3A%2F%2Fzambo.dev%2Fapi%2Fmcp%22%7D) [![Add to Cursor](https://img.shields.io/badge/Cursor-one--click_add-c8f135?labelColor=1a1a18)](cursor://anysphere.cursor-deeplink/mcp/install?name=zambo&config=eyJ1cmwiOiJodHRwczovL3phbWJvLmRldi9hcGkvbWNwIn0=)

## Quick start

**Option A — paste into your MCP client config:**

```json
{"mcpServers":{"zambo":{"url":"https://zambo.dev/api/mcp"}}}
```

**Option B — npm:**

```bash
npx zambo install
```

Endpoint: `https://zambo.dev/api/mcp`

First job after connect:

```text
Use Zambo to get the current BTC-USD price. Show the number, the source, and the receipt URL. If the tool fails, say it failed.
```

Do not use “SOL price + health check” as a demo until that route returns a price.

## Verify the protocol

```bash
curl -sS https://zambo.dev/api/mcp \
  -H 'content-type: application/json' \
  -d '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{"protocolVersion":"2025-03-26","capabilities":{},"clientInfo":{"name":"curl","version":"1.0"}}}'
```

Default `tools/list` should stay small. Full catalog: `https://zambo.dev/api/mcp?full=true`.

## Auth and limits

Free tier works without an account — 20 calls/tool/day. Paid: Day Pass ($1.49/24h) or Zambo Pass ($49/mo), card or PayPal. Do not send wallet keys, seed phrases, or card numbers through the MCP.

## Compatibility

Remote Streamable HTTP. Setup paths: [zambo.dev/install](https://zambo.dev/install). “MCP-compatible” does not mean every client is tested.

## Prove it — verified badges

`zambo_verified` issues a signed Zambo MCP Verified certificate for a project — embeddable badge (SVG/Markdown) plus a leaderboard entry. Put the badge in your repo README: public proof the work was agent-executed and verified, and a backlink to the Zambo network.

## Security

Never commit capability keys, wallet keys, or session tokens. Review side effects before consequential calls. See [SECURITY.md](SECURITY.md).

## FAQ

### What is Zambo MCP?
Zambo MCP is a remote MCP (Model Context Protocol) server built solo by Brennan Zambo. It exposes 100+ native AI tools — code audit, strategy, lead generation, onchain scoring, credit discovery, prompt defense — through a single Streamable HTTP endpoint (`https://zambo.dev/api/mcp`). One connection gives any MCP-compatible AI client instant capabilities.

### How do I connect Zambo to Cursor, Claude, or Windsurf?
Paste one JSON block into your MCP client config — no API key, no signup:

```json
{"mcpServers":{"zambo":{"url":"https://zambo.dev/api/mcp"}}}
```

Or run `npx zambo install`. Full per-client setup: [zambo.dev/install](https://zambo.dev/install).

### Is Zambo MCP free?
Yes. The free tier allows 20 calls per tool per day with no account. Paid options: Day Pass ($1.49/24h) or Zambo Pass ($49/mo).

### Remote vs local MCP servers — when should I use Zambo?
Use a remote server like Zambo when you want zero-install setup that works identically across machines and clients. Use a local (stdio) server when you need direct filesystem access or offline operation. Zambo is remote-only: nothing to install, nothing to update.

### Who built Zambo?
Zambo was built solo by Brennan Zambo — 17 live products and 100+ native MCP tools, no team, no VC. More: [zambo.dev](https://zambo.dev).

### Where are the machine-readable docs for AI agents?
[https://zambo.dev/.well-known/llms.txt](https://zambo.dev/.well-known/llms.txt) and [https://zambo.dev/for-agents/](https://zambo.dev/for-agents/).

## License

This repository documents a hosted service. It does not grant a license to the Zambo platform.
