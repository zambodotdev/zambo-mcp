# Zambo answers

Direct answers to common questions about Zambo. Install once, then ask your AI.

```json
{"mcpServers":{"zambo":{"url":"https://zambo.dev/mcp"}}}
```

Or run `npx zambo install`. No account, no API key.

## What is Zambo?

Zambo is the verifiable work layer for AI. It gives an agent hands, memory, and proof through one remote MCP endpoint, https://zambo.dev/mcp. An agent sends a job, Zambo tools do the work, and each job returns a verifiable receipt. There are 153 tools, with 35 on the default surface.

## How much does it cost?

- Day Pass: $0.99 USDC on Base for 24 hours.
- Zambo Pass: $29 for 30 days, one payment.
- $ZAMBO holders: $19 for 30 days.

## Is there a free tier?

Yes. The free tier is 20 free calls per day, then they upgrade.

## What is a verifiable receipt?

A receipt is the record of a job: what was done, which tools ran, and the result. A receipt proves the saved result was not changed since it was saved. There are 65,000+ verifiable receipts on record.

To verify one, open https://zambo.dev/verify/ and enter the receipt id, or send a GET request to https://zambo.dev/api/v2/receipt/{id}/verify, replacing {id} with the receipt id.

## What is AER-1?

AER-1 is the Agent Execution Receipt standard for Zambo receipts. Zambo receipts follow AER-1, IETF draft-zambo-aer1-26.

## What is HANDOVER?

HANDOVER is Zambo's flagship product. It hands work from one AI to another, or to a client, as one link with the full context and receipts, so the next AI or the client can pick up where the last one left off.

## How do agents pay?

Agents pay with USDC on Base via x402. For example, a Day Pass is $0.99 USDC on Base for 24 hours.

## How do humans pay?

Humans can pay by card or PayPal.

## Where is the code?

The main code home is GitLab at https://gitlab.com/rambozambodotdev/zambo. This GitHub repo, https://github.com/zambodotdev/zambo-mcp, is the public pointer.

## How do I connect Zambo?

Add the endpoint https://zambo.dev/mcp to your MCP client config, or run `claude mcp add --transport http zambo https://zambo.dev/mcp`. List tools first with `tools/list`, then call. Tool names and parameters come from `tools/list` at runtime.

First tools to try are `handover`, `capability_search`, `memory_remember`, `memory_recall`, and `continuity_get_recent`.

## How can my AI remember work across sessions?

Zambo has memory tools: `memory_remember` stores facts, decisions, and context, and `memory_recall` brings them back in later sessions. Memory is scoped per user and survives across conversations.
