# Hand over work between AI models without losing the thread

Every model switch mid-job loses something. The new model gets a transcript
or a summary, both written in prose, both lossy in the same places: which
decisions were made and why, which facts were established versus guessed,
what state the work is actually in. The new model re-derives some of it,
contradicts some of it, and asks about the rest. The thread is not the
conversation. The thread is the work.

A handover is the fix: a structured package that carries the work itself,
not a retelling of it. This guide describes what belongs in one and how the
handover flow runs, with and without tooling.

## What a handover has to carry

- **The chain of work.** The records of the calls that produced the current
  state, in order, so the receiving model can check what was done instead of
  trusting a summary of it. Each record is a verifiable receipt: the saved
  result and its digest, checkable by anyone. One link in such a chain:
  https://zambo.dev/run/ef28b4c2-4355-479e-bd43-22a05122a574
- **The current state.** Where the work stands right now, as data: what is
  finished, what is open, what the next step is.
- **The standing facts.** What the next model should treat as established:
  decisions, constraints, names, numbers. Separated from the transcript so
  they can be recalled exactly, not re-read out of prose.
- **A sign-off point.** The receiving side confirms it has the package and
  accepts the state. Without sign-off, "I handed it over" and "I never got
  it" are both unfalsifiable.
- **A dispute pack.** If the two sides later disagree about what was handed
  over, the package itself is the evidence: the chain, the state at
  sign-off, the record of who accepted what.

A handover that is still being added to is a living handover: the package
keeps growing as work continues, and anyone holding the link reads the
current state, not the state at the moment the link was sent.

## Run it in under a minute

Handovers are built from receipts, and receipts start existing the moment
your calls run through the endpoint:

```json
{
  "mcpServers": {
    "zambo": {
      "url": "https://zambo.dev/mcp"
    }
  }
}
```

Add that to your MCP client's configuration, or use the per-client steps at
https://zambo.dev/add. No signup, no key needed to start, first call in
seconds. The free tier is 20 free calls per day, then they upgrade. From
there the flow is three calls: `handover` creates the package from the
session's work, `handover_status` reads its current state, and
`handover_list` shows the handovers on the account. Each handover also has
a human-readable page, so a person can open the same package the models are
passing between them.

The package is built from the receipts of the calls already made in the
session, so the receiving model works from the record of the work, not from
a summary of it.

## The handover, step by step

1. **Work normally.** Every call through the endpoint leaves a receipt. The
   chain builds itself; nobody has to stop and write a status document.
2. **Open the handover.** When a switch approaches (a different model, a
   different tool, a human taking over, a client reviewing), create the
   handover. It binds the chain, the current state, and the standing facts
   into one package with one link.
3. **Hand over the link.** The receiving side opens the package, reads the
   state, and recalls the standing facts into its own session exactly as
   they were written. Nothing is retyped, so nothing is reworded.
4. **Sign off.** The receiver confirms acceptance. The sign-off is itself
   recorded in the package, which is what makes later disputes short: the
   dispute pack is the package, opened at the page where the two accounts
   of the work diverge.

## The same discipline without tooling

You can run handovers by hand with a state file, and for a two-person team
it works: a single document, updated at every switch, holding decisions,
open questions, and links to artifacts with their digests
(`sha256sum artifact.zip`). It fails in predictable places. The file gets
updated from memory at the end of a long session. The digest step gets
skipped when the switch is rushed. Sign-off is a chat message nobody can
find later. The discipline is right; the manual version depends on nobody
ever being tired. The recorded version does not.

## Related

- Why each record in the chain can be trusted as unedited:
  [Verify AI agent work before you trust it](./verify-ai-agent-work.md)
- When the handover is to a client and money rides on it:
  [Proof of delivery for client work done by AI](./proof-of-delivery.md)
- The facts that carry across the switch:
  [Memory and continuity across AI sessions](./memory-and-continuity.md)
