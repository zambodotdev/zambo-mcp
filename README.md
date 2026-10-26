# Zambo

**The verifiable work layer for AI.**

Give your AI hands, memory, and proof. One remote MCP endpoint with 153 tools, continuity that carries work across AIs, and a verifiable receipt for every job, so "done" is something you can check.

[Add Zambo](https://zambo.dev/add/) · [Verify a receipt](https://zambo.dev/verify/) · [Day Pass](https://zambo.dev/day-pass/) · [Founder](https://zambo.dev/founder/)

**Main code home: [GitLab](https://gitlab.com/rambozambodotdev/zambo).** Development happens there. This GitHub page is the public pointer.
[![validate](https://github.com/zambodotdev/zambo-mcp/actions/workflows/validate.yml/badge.svg)](https://github.com/zambodotdev/zambo-mcp/actions/workflows/validate.yml)
## Add it

Tell your AI: "Add Zambo from https://zambo.dev/mcp"

Or paste the config:

```json
{
  "mcpServers": {
    "zambo": {
      "url": "https://zambo.dev/mcp"
    }
  }
}
```

**Claude Code:** `claude mcp add --transport http zambo https://zambo.dev/mcp`

**One command:** `npx zambo install`

Works in Claude, ChatGPT, Grok, Cursor, and any Streamable HTTP MCP client. No API key. No signup.

## First move: HANDOVER

HANDOVER is the front door: hand work from one AI to another, or to a client, as one link with the full record attached. The receiving side picks it up and keeps going, and every step carries its receipt.

## What you get

- Tools: 153 behind one endpoint. Research, data, documents, media, payments, and more.
- Continuity: memory and sessions that persist across calls, clients, and models.
- Proof: every call returns a verifiable AER-1 receipt. A receipt proves the saved result was not changed after it was saved.

## Pricing

Free tier: 20 free calls per day, then they upgrade.
Day Pass: $0.99 for 24 hours.
Zambo Pass: $29 for 30 days. $ZAMBO holders: $19 for 30 days.
Agents pay with USDC on Base through x402. Humans pay by card or PayPal.

## Proof

65,000+ receipts on record. Zambo receipts follow AER-1, the Agent Execution Receipt standard, now at draft 26:
https://datatracker.ietf.org/doc/draft-zambo-aer1/26/

## Built by

Solo-built by Brennan Zambo: https://zambo.dev/founder/
