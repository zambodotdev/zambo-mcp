# Zambo MCP

**Give your AI hands.** One URL. Type a job. Get a receipt.

100+ native MCP tools over a single zero-auth remote endpoint — solo-built AI infrastructure by Brennan Zambo. Paste the config into Claude, Cursor, Windsurf, Cline, or any Streamable HTTP MCP client. No API key, no signup. Free: 20 calls/tool/day.

[Connect](https://zambo.dev/mcp) · [Install](https://zambo.dev/install) · [Docs for agents](https://zambo.dev/for-agents/) · [Pricing](https://zambo.dev/pricing) · [Telegram](https://t.me/zambodev_bot)

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

## Security

Never commit capability keys, wallet keys, or session tokens. Review side effects before consequential calls. See [SECURITY.md](SECURITY.md).

## License

This repository documents a hosted service. It does not grant a license to the Zambo platform.
