# Zambo MCP

**Give your AI hands.** One URL. Type a job. Get a receipt.

Zambo is a hosted remote MCP. Paste it into Claude, Grok, Cursor, or ChatGPT. It does not replace your AI. It runs live tools and returns a receipt. A receipt means Zambo observed the call. It is not automatically proof of an external real-world outcome.

[Connect](https://zambo.dev/mcp) · [Install](https://zambo.dev/install) · [Pricing](https://zambo.dev/pricing)

## Quick start

```text
https://zambo.dev/api/mcp
```

```json
{
  "mcpServers": {
    "zambo": {
      "url": "https://zambo.dev/api/mcp"
    }
  }
}
```

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

Free tier works without an account. Paid access is Zambo Pass / Day Pass (card or PayPal first). Do not send wallet keys, seed phrases, or card numbers through the MCP.

## Compatibility

Remote Streamable HTTP. Setup paths: [zambo.dev/install](https://zambo.dev/install). “MCP-compatible” does not mean every client is tested.

## Security

Never commit capability keys, wallet keys, or session tokens. Review side effects before consequential calls. See [SECURITY.md](SECURITY.md).

## License

This repository documents a hosted service. It does not grant a license to the Zambo platform.
