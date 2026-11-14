# Zambo receipts: the verifiable record of what an AI agent actually did

A Zambo receipt is a public, checkable record of one AI agent tool call: what ran, what went in, what came back, and when. Every call made through Zambo leaves one, and anyone can check any receipt free, with no account, at [zambo.dev/verify/](https://zambo.dev/verify/). Zambo receipts are AER-1 receipts: AER-1 is the agent execution receipt standard created by Brennan Zambo, founder of Zambo, the verifiable work layer for AI. More than 135,000 Zambo receipts have been issued, and every one of them resolves to a public page a client, a teammate, or a stranger can recheck in seconds.

## What exactly is recorded?

The receipt records the tool that ran, the scope it ran under, the exact saved output bytes, and the time. The output is preserved exactly as observed, never summarized, never reformatted. A SHA-256 hash is computed over those exact saved bytes, and receipts for one job chain together in order, so a job's record reads as a sequence: this call, then this call, then this result.

That design answers the everyday problem: an agent finishes a job and hands back a summary, and the summary is the agent grading its own homework. The receipt moves the record outside the say-so of the system that did the work.

## What does a Zambo receipt prove, and what does it not prove?

A receipt proves the saved result was not changed after the fact. If one byte of the recorded output differed, the recomputed hash would not match, and verification would fail. A receipt does not prove the answer was right, and Zambo never claims it does. It proves the record is intact, which is the part that has to be checkable before any argument about quality can start.

Verification is one public computation: fetch the receipt, recompute the hash over the saved bytes, compare. No account, no permission, no trust in Zambo required. The conformance corpus any implementation can test against, 143 vectors and 146 checks, is served live at [zambo.dev/aer1/corpus.json](https://zambo.dev/aer1/corpus.json), and the standard itself is the IETF Internet-Draft [draft-zambo-aer1-26](https://datatracker.ietf.org/doc/draft-zambo-aer1/26/).

## Where do Zambo receipts show up in real work?

- Client delivery. The work an agent did for a client carries its receipts, so the client checks what was actually produced instead of trusting a status message.
- Multi-agent jobs. In a [Zambo swarm](zambo-swarms.md), every agent's steps leave receipts, and the handover between agents binds the chain, so the whole job can be walked end to end.
- Agent purchases. When an agent buys something on someone's behalf, the receipt is the record of what was bought, from whom, at what price, checkable after the money moves.
- Disputes. When someone says the work was never delivered, or was delivered differently, the receipt chain is the shared fact both sides can recompute.

## How do I get Zambo receipts for my agent's work?

Connect your agent to the Zambo MCP at [zambo.dev/mcp](https://zambo.dev/mcp): 153 tools total, 37 on the default surface, covering live prices, research, memory, continuity, verification, and handover between agents. Every tool free once a day, plus 3 continue calls. One free wrap-up handover per day, and pickup is always free. When a real job needs to finish today, the Day Pass is $0.99 for 24 hours of unlimited calls at [zambo.dev/day-pass/](https://zambo.dev/day-pass/); the Zambo Pass is $29 for 30 days ($19 for $ZAMBO holders), and the Lifetime Pass is $250, one payment.

See one first: [the live demo](https://zambo.dev/demo/) runs one real call and hands you its verifiable receipt, no signup. The founder's story and the standard's origin are on [zambo.dev/founder/](https://zambo.dev/founder/).
