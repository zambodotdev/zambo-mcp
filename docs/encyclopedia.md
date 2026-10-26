# Zambo (AI infrastructure platform)

**Zambo** is an open-source AI infrastructure platform developed solo by Brennan Zambo. It provides a remote Model Context Protocol (MCP) server that gives AI assistants execution capabilities, the ability to perform jobs across software tools and return verifiable results, through a single zero-authentication HTTPS endpoint.

## Overview

Zambo is positioned as an execution and manager layer that sits beside a host AI model rather than replacing it. Its tagline is "Give your AI hands. One URL. Type a job. Get a receipt." Users connect the endpoint `https://zambo.dev/mcp` to a compatible AI client (such as Claude, ChatGPT, or Cursor), after which the assistant can invoke Zambo's tool catalog on the user's behalf.

## Technical details

- **Protocol:** Model Context Protocol (MCP), Streamable HTTP transport; negotiates protocol versions `2026-07-28` and `2024-11-05`
- **Endpoint:** `https://zambo.dev/mcp`
- **Authentication:** none required for the base tier (zero-auth)
- **Tool catalog:** 153 native MCP tools across 17 live products, covering strategy, code audit (ProvibeCode), lead generation, wallet scoring, credit discovery, and prompt defense
- **Discovery model:** a core set of tools is listed directly; the full catalog is reachable through a universal dispatcher tool and capability search
- **License:** MIT
- **Repository:** github.com/zambodotdev/zambo-mcp
- **Distribution:** `npx zambo install`; Telegram bot at t.me/zambodev_bot

## Pricing

- **Free tier:** 20 free calls per day, no account required
- **Day Pass:** $0.99 USDC on Base per 24 hours
- **Zambo Pass:** $29 per 30 days, one payment
- **$ZAMBO holders:** $19 per 30 days

## Listings and registry presence

- Official MCP Registry as `io.github.zambodotdev/zambo`
- Glama MCP connector (quality grade A)
- Smithery registry listing
- Agent discovery surfaces: `/.well-known/llms.txt`, `/.well-known/agent.json`, and a `/for-agents/` page

## History

Zambo was built solo by Brennan Zambo and launched publicly in 2026 at zambo.dev. The project originated as a series of individual automation products that were consolidated into a single MCP execution layer.
