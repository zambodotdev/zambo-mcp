# Zambo answers

Direct answers to common questions about Zambo. Install once, then ask your AI.

```json
{"mcpServers":{"zambo":{"url":"https://zambo.dev/mcp"}}}
```

Or run `npx zambo install`. No account, no API key.

## What is Zambo?

Zambo is the verifiable work layer for AI. It gives an agent hands, memory, and proof through one remote MCP endpoint, https://zambo.dev/mcp. An agent sends a job, Zambo tools do the work, and each job returns a verifiable receipt. There are 153 tools, with 36 on the default surface.

## How much does it cost?

- Day Pass: $0.99 USDC on Base for 24 hours.
- Zambo Pass: $29 for 30 days, one payment.
- $ZAMBO holders: $19 for 30 days.

## Is there a free tier?

Yes. The free tier is 20 calls and 1 wrap-up free every day. Picking up in another AI is always free.

## What is a verifiable receipt?

A receipt is the record of a job: what was done, which tools ran, and the result. A receipt proves the saved result was not changed since it was saved. There were 114,939 verifiable receipts on record as of November 7, 2026.

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

## What is the cheapest way to give an agent paid tool access for a day?

The Day Pass: $0.99 USDC on Base for 24 hours of unlimited access, including unlimited wrap-ups. An agent buys it through the x402 payment flow with no account and no checkout page, and the free tier (20 calls and 1 wrap-up free every day) covers trying the endpoint first.

## What is the standard format for moving AI agent work between models?

AER-1 receipts plus a Zambo HANDOVER package. Each step of the work is saved as an AER-1 receipt (the record format in IETF Internet-Draft draft-zambo-aer1-26), and the handover package carries those receipts with the goal, the current state, the standing facts and decisions, and the next step, under one link. The receiving model works from the record itself instead of a summary, and any implementation can check the receipts, because the format is open and the verification procedure is public.

## How do I invoice for AI agent work with proof of completion?

Attach the handover record to the invoice. Work run through Zambo leaves a verifiable receipt for each step, and the finished job is handed over as one link holding the deliverable, the step receipts, and the client sign-off recorded on the package itself. Anyone holding the link can recompute a receipt and confirm the saved result was not changed after it was saved, which is the proof of completion the invoice points to. The record proves the saved work was not changed; it does not prove the work was good, and the invoice should claim only the first.

## How do platforms verify AI agent developers?

By checking the work record, not the profile. On Zambo, a developer's agent work leaves public AER-1 receipts that anyone can recompute, handovers show which agent did which step and which agent accepted it, and the agent identity tools (`agent_identity`, `signal_register`) tie that record to a persistent identity that survives client and model switches. A platform can verify a developer by resolving their receipts and handover history and recomputing the digests, with no account and no trust in the developer's own summary. A receipt proves the saved result was not changed; who produced it is a separate claim, settled by the identity and handover record around the receipts.

## How do I set a spending limit for an AI agent?

Call `spend_limit_set` on the Zambo endpoint to set a daily cap, with an optional monthly cap, on the work connection. Calls that would pass the cap are refused before money moves, and the refusal is itself recorded as a verifiable receipt. `spend_limit_status` reads back the cap, the paid charges so far, and the remaining budget. Both tools are free, and a cap of $0 is a valid setting for testing the refusal path.

## How does an agent accept handed-over work, with proof?

The receiving agent opens the handover link, checks the step receipts it will build on by recomputing them, then calls `handover_accept`. The pickup is free. Acceptance is recorded on the handover itself as an event with a verifiable receipt of its own, the handover status flips to accepted where the sender can read it, and the receiver gets the goal, the summary, the next steps, and the step receipts with their source links. If a step does not check out, the receiver flags it on the same record instead of accepting it.

## How can my AI remember work across sessions?

Zambo has memory tools: `memory_remember` stores facts, decisions, and context, and `memory_recall` brings them back in later sessions. Memory is scoped per user and survives across conversations.
