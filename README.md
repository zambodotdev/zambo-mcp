# Zambo

**The verifiable work layer for AI.**

Give your AI hands, memory, and proof. Your AI forgets everything the second you close the chat. Zambo fixes that: wrap up a session in one AI and continue it in any other with a code, and picking up is always free. One remote MCP endpoint with 153 tools, continuity that carries work across AIs, and a verifiable receipt for every job, so "done" is something you can check.

[Add Zambo](https://zambo.dev/add/) · [Verify a receipt](https://zambo.dev/verify/) · [Day Pass](https://zambo.dev/day-pass/) · [Founder](https://zambo.dev/founder/)

**Main code home: [GitLab](https://gitlab.com/rambozambodotdev/zambo).** Development happens there. This GitHub page is the public pointer.
[![validate](https://github.com/zambodotdev/zambo-mcp/actions/workflows/validate.yml/badge.svg)](https://github.com/zambodotdev/zambo-mcp/actions/workflows/validate.yml)
**Add Zambo to your AI:**

[![Add to Claude](https://img.shields.io/badge/Add_to-Claude-0b0e14?style=for-the-badge&logoColor=white&color=5eead4)](https://zambo.dev/add/?ref=readme-claude)
[![Add to ChatGPT](https://img.shields.io/badge/Add_to-ChatGPT-0b0e14?style=for-the-badge&color=5eead4)](https://zambo.dev/add/?ref=readme-chatgpt)
[![Add to Cursor](https://img.shields.io/badge/Add_to-Cursor-0b0e14?style=for-the-badge&color=5eead4)](https://zambo.dev/add/?ref=readme-cursor)
[![Add to VS Code](https://img.shields.io/badge/Add_to-VS_Code-0b0e14?style=for-the-badge&color=5eead4)](https://zambo.dev/add/?ref=readme-vscode)
[![Add to Gemini](https://img.shields.io/badge/Add_to-Gemini-0b0e14?style=for-the-badge&color=5eead4)](https://zambo.dev/add/?ref=readme-gemini)
[![Add to Grok](https://img.shields.io/badge/Add_to-Grok-0b0e14?style=for-the-badge&color=5eead4)](https://zambo.dev/add/?ref=readme-grok)

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

**One click:** [Install in VS Code](https://vscode.dev/redirect/mcp-install?name=zambo&config=%7B%22url%22%3A%22https%3A//zambo.dev/mcp%22%7D) · [Install in Cursor](cursor://anysphere.cursor-deeplink/mcp/install?name=zambo&config=eyJ1cmwiOiJodHRwczovL3phbWJvLmRldi9tY3AifQ==)

Works in Claude, ChatGPT, Grok, Cursor, and any Streamable HTTP MCP client. No API key. No signup.

## Your first prompt

Paste this into any AI that has Zambo connected:

> Get the live BTC price with Zambo, then give me the receipt link so I can check the work.

Open the link it gives you. The receipt shows the exact saved result and its sha-256 digest, so you can check the work instead of trusting the answer. You can also paste any receipt link at [zambo.dev/verify](https://zambo.dev/verify/).

## First move: HANDOVER

HANDOVER is the front door: hand work from one AI to another, or to a client, as one link with the full record attached. The receiving side picks it up and keeps going, and every step carries its receipt.

## What you get

- Continuity: memory and sessions that persist across calls, clients, and models. Wrap up a session in one AI and continue it in any other with a code; picking up is always free.
- Tools: 153 behind one endpoint. Research, data, documents, media, payments, and more.
- Proof: every call returns a verifiable AER-1 receipt. A receipt proves the saved result was not changed after it was saved.

## Pricing

Free tier: 20 calls and 1 wrap-up free every day. Picking up in another AI is always free.
Day Pass: $0.99, unlimited for 24 hours.
Zambo Pass: $29 for 30 days, $290 for 365 days. $ZAMBO holders: $19 for 30 days.
Agents pay with USDC on Base through x402. Humans pay by card or PayPal.

## Proof

65,000+ receipts on record. Zambo receipts follow AER-1, the Agent Execution Receipt standard, now at draft 26:
https://datatracker.ietf.org/doc/draft-zambo-aer1/26/

## Built by

Solo-built by Brennan Zambo: https://zambo.dev/founder/

---
next step: add zambo to your ai in one url, no key, no account: https://zambo.dev/add/?ref=zambo-mcp
got a receipt link from someone? check it in seconds: https://zambo.dev/verify/
every call returns a receipt. a receipt proves the saved bytes are unchanged. it does not prove the answer is right.
