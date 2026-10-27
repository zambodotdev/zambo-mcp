# Verify AI agent work before you trust it

An agent that reports "done" has made a claim, not shown evidence. Its summary
is written by the same system that did the work, in its own words, after the
fact. Verification means something stricter: a saved record of what the agent
actually called, what came back, and a way for anyone to check that the record
was not changed after it was saved.

This guide is the method. It works on paper with any tooling.
On Zambo, the verifiable work layer for AI, every call already leaves the record this method needs.
But read the steps first and judge the method on its own.

## The method, in five steps

1. **Record every call.** For each tool call the agent makes, save the inputs
   and the exact output bytes. Not a summary of the output. The bytes.
2. **Digest the saved output.** Compute the SHA-256 digest of the saved bytes
   and store it with the record. The digest is the commitment: any later edit
   to the saved result, even one character, produces a different digest.
3. **Bind the record to the job.** A record floating free proves nothing about
   which job it belongs to. The record needs the fields that tie it to the
   work: which tool ran, when, under whose session, and where it sits in the
   sequence of calls for that job.
4. **Verify by recomputation.** To check a record, recompute the digest from
   the saved bytes and compare it with the stored digest. Then re-check the
   binding fields. Verification is recomputation, not trust in the recorder.
5. **Report the outcome honestly.** Every check ends in one of these states: verified, verification failed, rejected: unresolvable record, absent, or not checked. A check nobody ran is "not
   checked", never quietly folded into a pass. The outcome vocabulary is
   specified in AER-1 and covered in
   [Four outcomes, never two](https://github.com/zambodotdev/aer-1/blob/main/docs/four-outcomes.md).

What this proves, stated exactly: the saved result was not changed since it
was saved. What it never proves: that the result was right. A wrong answer,
faithfully recorded, verifies cleanly. Judgment about correctness stays with
whoever reads the record. Anyone who tells you a receipt proves the work was
good is selling you something the format does not contain.

## Start in under a minute

Point your MCP client at the hosted endpoint and the records above start
existing for your own calls:

```json
{
  "mcpServers": {
    "zambo": {
      "url": "https://zambo.dev/mcp"
    }
  }
}
```

Save that in your client's MCP configuration, or follow the per-client steps
at https://zambo.dev/add. There is no signup and no key needed to start. The
first call lands in seconds, and every call returns its result plus a
verifiable receipt at a public link.
The free tier is 20 free calls per day, then they upgrade.
The endpoint serves 153 tools in total behind the one URL, 35 of them on the default surface.

## A worked example you can check yourself

Open this receipt: https://zambo.dev/run/ef28b4c2-4355-479e-bd43-22a05122a574

That page is one saved record: the call, its saved result, and its digest,
readable by anyone with the link. Do not take the page's word for it. Ask the
verify endpoint to recompute:

```bash
curl https://zambo.dev/api/v2/receipt/ef28b4c2-4355-479e-bd43-22a05122a574/verify
```

The response reports an overall status and the result of each individual
check it ran, including the binding checks that tie the record to its job.
That is the issuer's verify endpoint reporting its recomputation over the saved bytes, with each check listed, not a screenshot of a dashboard. For an independent check, recompute the SHA-256 of the saved bytes yourself and compare it with the stored digest.

## The same method without Zambo

Nothing above requires this endpoint. You can build the record layer
yourself:

- Wrap every tool your agent calls. Log the call name, the inputs, and the
  raw output to an append-only file, one entry per call.
- Digest each output as you save it:

```bash
sha256sum result.json
```

- Keep the log with the deliverable. To verify later, recompute the digest
  of each saved output and compare against the logged digest.

What you give up with the hand-rolled version is steps 3 and 5 done
uniformly: each tool logs in its own shape, the binding between a record and
a job is whatever you remembered to write down, and there is no public record an outsider can resolve and recompute on their own. The method still beats a summary. It just
stops at your own disk.

## Where this goes next

If the verification runs all day rather than once, the paid rungs are a
Day Pass at $0.99 USDC on Base for 24 hours or the Zambo Pass at $29 for
30 days, one payment. The method above is identical on the free tier.

- The record format, including why even rejected calls are recorded, is
  AER-1: https://datatracker.ietf.org/doc/draft-zambo-aer1/26/
- Handing verified work to another model or a client:
  [Hand over work between AI models](./handover-between-models.md)
- Scoring one agent's record against another's:
  [Compare two AI agents on the same task, fairly](./compare-two-agents-fairly.md)
