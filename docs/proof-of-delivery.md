# Delivery records for client work done by AI

A delivery dispute can turn on questions like whether it was delivered,
whether it matched the agreement, or what the AI actually did. A chat
thread and a file timestamp settle little on their own: both can be
argued with, and neither was created to answer those questions.

Part of a delivery dispute is factual, and the factual part is answerable
if the work left a record while it happened: what was produced, when, in
what form, and what was placed in the handover package. This guide
builds that record from the receipts the work leaves when it runs through a
recording layer, and scopes every claim to what the record actually
covers.

## What the record shows

- **The work existed, in this form, at this time.** Each call that produced
  the deliverable left a verifiable receipt: the saved result and its
  digest. One example of the shape: https://zambo.dev/run/ef28b4c2-4355-479e-bd43-22a05122a574.
  Recomputing the digest of a delivered file and comparing it with the
  receipt shows whether the file matches the saved result; a mismatch
  shows only that the file is not that saved result, not how or why it
  differs.
- **What ran through the endpoint, in order.** The chain lists the calls
  made through the recording layer, in sequence. Whether those calls match
  the scope the client agreed to is a comparison the reader makes between
  the chain and the agreement, which lives outside the record. For calls
  run through the endpoint, the chain makes a claim like "the AI did
  something else" checkable against the recorded sequence; it says nothing
  about work done outside the recorded path.
- **The handover package.** The deliverable was placed in a handover
  package with a human-readable page, and any client sign-off given on it
  is recorded in the package. The package is part of the same record as
  the work, not a separate message thread.
- **Sign-off, where one was recorded.** Where the client signed off, the
  sign-off sits in the package with its time. Where no sign-off is
  recorded, the package shows only that no sign-off was recorded in it,
  not that the client rejected the work or failed to accept it elsewhere.

Assembled for a dispute, that package is the dispute pack: the chain, the
state at handover, and whatever sign-off was recorded. It is opened, read,
and checked. It argues nothing by itself.

## Build it as you work

The record is not extra work bolted on at delivery time. It accumulates if
the work runs through the endpoint from the first call:

```json
{
  "mcpServers": {
    "zambo": {
      "url": "https://zambo.dev/mcp"
    }
  }
}
```

Add that to your MCP client (per-client steps at https://zambo.dev/add).
No signup, no key needed to start, first call in seconds. The free tier is
20 free calls per day, then they upgrade. On Zambo, the verifiable work
layer for AI, the delivery flow is mechanical: work normally, open a
handover when the deliverable is ready, send the client the package link,
and any sign-off they give on the package is recorded in the package.
Client work at scale, deliverables moving through handovers every day,
is the volume case: a Day Pass is $0.99 USDC on Base for 24 hours, and
the Zambo Pass is $29 for 30 days, one payment.

## The honest boundary

A delivery record proves the saved result was not changed after it was
saved, that a handover package was created, and that a sign-off, where one
was recorded in the package, was recorded. It never proves the work was
good, or worth the fee, or what the client hoped for and never said. Those
are judgment and contract questions, and the record does not reach them.

What it changes is narrower: what was packaged, when, and whether a
sign-off was recorded each have a checkable record instead of two
competing memories. That is checkable evidence a dispute process can use
alongside the agreement and other evidence. It does not forbid anyone
from disputing, it does not decide the dispute by itself, and for work
done outside the recorded path it says nothing at all. For a dispute that turns on the recorded facts, the factual part has
a record to start from instead of a recollection.

## Related

- The handover mechanics this builds on:
  [Hand over work between AI models](./handover-between-models.md)
- How any single record in the chain is checked:
  [Verify AI agent work before you trust it](./verify-ai-agent-work.md)
