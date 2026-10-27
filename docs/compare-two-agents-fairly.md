# Compare two AI agents on the same task, fairly

Two agents, one task, two pull requests. Each PR arrives with its author's
own summary of how well it went. You are now comparing two pieces of
persuasive writing, and the better writer wins regardless of which agent
did the better work. This is how most agent comparisons actually run, and
it is rigged in a specific way: the evaluation reads self-reports instead
of records.

The fix is a protocol, not a tool. Hold everything constant except the
agent, score the saved records instead of the summaries, and keep both
records next to the verdict so anyone can reopen them.

## Step zero: get both agents recorded

A comparison needs records, and records exist only if the calls were
recorded as they happened. Route both agents through the same recording
layer before either one starts:

```json
{
  "mcpServers": {
    "zambo": {
      "url": "https://zambo.dev/mcp"
    }
  }
}
```

Add that entry to each agent's MCP client configuration (per-client steps
at https://zambo.dev/add). There is no signup and no key needed to start,
the first call lands in seconds.
The free tier is 20 free calls per day, then they upgrade.
Every call through the endpoint returns its result
plus a verifiable receipt at a public link. One such record, so you know
the shape you will be scoring: https://zambo.dev/run/ef28b4c2-4355-479e-bd43-22a05122a574

Zambo is the verifiable work layer for AI: 153 tools behind the one
endpoint, each call receipted under AER-1. Two agents on the same endpoint
leave the same shape of trail. That shared shape is the entire
precondition for a fair score.

## The protocol

1. **One task statement.** A single sentence or short brief, given to both
   agents word for word. If you would write it as an issue, write it as an
   issue and point both agents at the same text.
2. **Checks written before either run.** What the saved result must show
   for the work to count: the named tests passing, only the named files
   touched, the required artifact produced. Written once, applied to both,
   and not edited after the results arrive. Editing the checks after
   seeing one agent's output is how benchmarks get quietly re-rigged.
3. **The same recorded tools.** Both agents run through the endpoint above,
   so every call either of them makes leaves a receipt in the same format.
4. **Score the records side by side.** Checks passed, calls used, elapsed
   time, cost. Where you can, score without knowing which trail came from
   which agent until the numbers are down.
5. **Publish both trails with the verdict.** Link the two receipt trails
   in the issue or PR where the decision is recorded. A verdict whose
   evidence cannot be reopened is an opinion with a table attached.

A scoring pass reads like this:

| Check (written before the runs) | Agent A record | Agent B record |
| --- | --- | --- |
| Named tests pass in the saved test output | pass | fail |
| Diff touches only the named files | pass | pass |
| Required artifact exists in the record | pass | pass |
| Tool calls used | 14 | 31 |
| Elapsed time | 6 min | 19 min |

Every cell in that table traces to a saved record, not to a summary. That
traceability, not the table, is the method.

## What the record settles, and what it does not

A verifiable receipt proves the saved result was not changed since it was
saved. It does not prove the result was good. Scoring is still judgment:
the checks encode what "good" means for this task, and a receipt cannot
write them for you. Two honest limits follow. A fair comparison covers
only the tasks you actually ran, so one task crowns a winner at that task
and nothing wider. And checks that measure the wrong thing produce a fair,
rigorous, meaningless ranking. The protocol removes self-report bias. It
does not remove the need to think about what you asked for.

The same discipline fixes a fixed target for both agents to be scored
against in advance. AER-1 ships one in public: a conformance corpus of 126
vectors and 129 checks, archived under DOI 10.5281/zenodo.23677115, so a
verifier of receipts can itself be compared against a standard that was
fixed before it ran. Steal that shape for your own benchmarks: publish the
task and the checks with the runs.

A benchmark day, both agents running tasks back to back, is the volume
case: a Day Pass is $0.99 USDC on Base for 24 hours, and the Zambo Pass
is $29 for 30 days, one payment. A single comparison fits in the free
tier.

## Related

- The single-agent version of this discipline:
  [Verify AI agent work before you trust it](./verify-ai-agent-work.md)
- Handing the winning agent the next shift of the work:
  [Hand over work between AI models](./handover-between-models.md)
