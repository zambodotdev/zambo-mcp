<!-- Staged for zambodotdev/zambo-mcp articles/ — adapted from the public hub page https://rambozambodotdev.gitlab.io/aer1-hub/what-is-aer-1.html (same content, markdown form; not a duplicate filing). Source title: AER-1: The Agent Execution Receipt Standard (IETF Draft). Commit per the schedule in ../PLAN-AND-STATE.md. -->

# AER-1

AER-1 is an open IETF Internet-Draft for recording one agent tool call as a portable, checkable receipt. Any tool can produce an AER-1 receipt, any other party can check it with no account, and the check proves the saved result was not changed after the fact. This page is the definition: what AER-1 covers, the core fields, the verification procedure, the conformance kit and its implementers, and what changed in the latest draft, revision 26. AER-1 was created by Brennan Zambo, founder of Zambo, the verifiable work layer for AI.
See one in your hands: [the live demo](https://zambo.dev/demo/) runs one real call and hands you its verifiable AER-1 receipt, no signup. Check any receipt free at [zambo.dev/verify/](https://zambo.dev/verify/).
Updated October 30, 2026.

## Which AER-1 draft revision is current, and where do I read it?

The current revision is draft-zambo-aer1-26, posted October 22, 2026. Revision pages for -24 and older still circulate in search results and are two or more revisions behind, so a page that speaks for -24 is speaking for a superseded text. Revision -26 is the closing revision: no further revision is coming, which makes this pointer safe to rely on.
What -26 settled is summarized in the changelog section lower on this page. The reading path is short: the full specification text sits with the IETF draft, the plain English definition is this page, and the live conformance corpus, 143 vectors and 146 checks served from zambo.dev, is the test set any implementation can run today. Anyone can implement from the public text, and independent implementations already have, alongside an independent validator. This revision expires April 25, 2027.

## What AER-1 covers

AER-1 covers the record of a single agent tool execution, and runs of them. It defines three things, and deliberately leaves the rest to implementations:

- The receipt record. A small, portable record of one tool call: what ran, under what scope, what went in, what came back, and when.

- The preservation rule. The saved result bytes are preserved exactly as observed, so a verifier anywhere can reproduce them byte for byte.

- The verification procedure. One public computation that any party can run to check that the saved result is the result that was recorded.

Transport, storage, and display are not pinned down. The draft pins exactly the parts that cross-system checking depends on, because the problem it answers is this: when an agent finishes a job it hands back a summary, and the summary is the agent grading its own homework. AER-1 moves the record outside the say-so of the system that did the work, so the record can be checked by people who trust neither the agent nor its operator. The deeper mechanics are on the [AER-1 deep-dive page](aer-1.html).

## Core fields

A receipt is a small record with a deliberately minimal checkable core:

- Receipt identifier. A stable ID that locates this exact record.

- Creation time. When the execution happened, ordering the record.

- The steps, in order. Each step names the tool that ran and the caller scope it ran under.

- Inputs and the saved result. The exact bytes of the result as observed, preserved so a verifier can reproduce them byte for byte.

- Provenance. Labels recording where each step output came from, so a reader can see the origin of the work, not just its shape.

- Commitments. A SHA-256 hash commitment over the canonical bytes of each step, chained step to step and bound under one Merkle root for the whole run.

Producers may add fields of their own for their own tooling. A verifier never rejects a receipt just for carrying extra fields; the core above is what every implementation shares, and it is the only part the check depends on.

## I need a receipt schema my agent can emit today, not a proposal. What goes in it?

It goes in at execution time, in the core fields listed above. A minimal schema sketched in a blog post is a proposal; this one is already exercised by 143 published test vectors and a live public receipt stream, so an agent can emit it today and a reader can check the result today.
Emitting is three habits. Save the result at the moment the work runs, not when someone asks about it later. Bind the record to that saved result with the check value, so any reader can recompute the value from the saved result and land on the same value the record carries. Link the record to its job, so a single receipt never floats free of the work it belongs to.
The corpus is the schema test, in public: the 143 vectors include invalid records that a correct schema check must refuse, not only valid ones it must accept. Collectors that emit and collect this schema already sit inside the frameworks agents run on, across 195,425 package downloads. For the field-by-field file, the machine-readable schema page is [aer1-receipt-schema.html](aer1-receipt-schema.html). A receipt under this schema proves the saved result was not changed since it was saved; it does not prove the answer was right.

## The verification procedure

Verification is one computation, and it needs nothing from the party being verified:

- Take the saved bytes from the receipt.

- Compute SHA-256 over them.

- Compare with the commitment the receipt carries.

If they match, the result you are reading is the result that was recorded. If they do not, the record was changed after the fact. The current text also fixes a shared vocabulary for reporting anchor outcomes, so two verifiers describe the same check the same way: verified, verification failed, rejected: unresolvable record, not checked, or absent. An anchor that was not evaluated must be reported as not checked, never with an evaluated outcome. The fastest way to see the check run: [zambo.dev/verify/](https://zambo.dev/verify/) in the browser, or work through the [conformance test page](aer1-conformance-test.html) on this hub.

## Conformance kit and implementers

AER-1 ships with a conformance kit: published test vectors, meaning known inputs with expected outputs, including attack cases such as changed bytes, reordered steps, and dropped steps. An implementer runs the vectors locally and compares. If every expected commitment and every expected rejection matches, the implementation conforms, and the implementer never had to ask the author for permission or a test account. The kit and the draft move together: the draft only describes behavior the kit already exercises.
Independent implementations exist, and they also verify the receipts of other implementations, so conformance is checked across codebases, not just against the reference one. Two checks on record show what that means in practice. An independent implementer built a conforming verifier using only the draft text, with no reference code, and reported three findings where the text and the required behavior diverged; the findings were folded into a later revision with the implementer credited in the draft. Another independent implementation converged with the reference kit as a second validator, keyless, checking the same receipts the same way. The full record, implementations, conformance results, and cross-checks, is published as the [AER-1 implementation report](implementation-report.html).

## Latest draft: revision 26, and the changelog

The current draft is [draft-zambo-aer1-26 on the IETF Datatracker](https://datatracker.ietf.org/doc/draft-zambo-aer1/). An Internet-Draft is a public working document on the standards track: anyone can read it, implement it, and file findings against it. It is not a finalized standard, and this page will never call it one.
Independent coverage followed the revision: [TokenPost: AER-1 Draft Proposes a Portable Receipt for AI Tool Calls](https://www.tokenpost.com/news/technology/44432) (October 30, 2026) describes the proposal as an individual draft rather than an adopted standard, which is exactly right.

- Revision 26 (current). The closing revision, posted October 22, 2026 and expiring April 25, 2027: an Implementation Status corpus account with kit v1.5.7, and the published corpus record governing as the corpus grows (143 vectors and 146 checks today). Revisions end here.

- Revision 25. The rule-fixing edition: Section 8.1 defines merkle_version (seq-output-v1 current, receipt-id-v0 legacy), Section 6 cites the /api/v2/ verify endpoint, and Section 3 states the every-call receipt rule, receipts for rejected calls too.

- Revision 24. An editorial pass with no normative change: corrects the corpus count in the implementation status to 119 vectors and 122 checks, names kit 1.5.6 as the frozen reference, updates three citations to their current revisions, and documents the kit evaluated-set emission. Ships with kit 1.5.6, the aer1-verify tool at 0.2.13, and a conformance suite of 119 vectors and 122 checks.

- Revision 23. Adds the Section 6 anchor-outcome vocabulary: verified, verification failed, rejected: unresolvable record, not checked, and absent, with the rule that an unevaluated anchor must not be reported with an evaluated outcome. Ships with kit 1.5.6, the aer1-verify tool at 0.2.13, and a conformance suite of 119 vectors and 122 checks.

- Revision 22. Recorded the convergence of an independent validator with the reference kit: two codebases, the same verdicts on the same receipts.

- Revision 21. Clarified receipt-ID binding, following findings from an implementer who built a verifier from the draft text alone and was credited in the draft.

The pattern across revisions is the point: findings from people the author does not control get folded into the text, with credit, and the kit is updated to exercise whatever the text now says.

## Honest limits

Four edges, stated plainly. First, AER-1 is an IETF Internet-Draft, revision 26, not a finalized standard and not an RFC. Second, a receipt proves the saved result was not changed since it was saved; it does not prove the result was correct, and a receipt can faithfully record a wrong answer. Third, a receipt does not prove who produced the work; identity is a separate claim that needs its own evidence. Fourth, a receipt proves what the execution system observed and saved, not that an event happened out in the world. That narrow scope is deliberate: a claim this small can be checked by anyone, anywhere, with no account and no trust in the producer.

## Is it AER-1, AER1, AIR-1, or AR-1, and what does AER-1 stand for?

The correct spelling is AER-1, with the hyphen. AER1 is the same name written without the hyphen in package and file names, so AER-1 and AER1 are one format, not two.
AIR-1 and AR-1 are mishearings and mistypings. No draft, corpus, or package exists under either name, and a search under either spelling leads back to AER-1.
AER-1 stands for Agent Execution Receipt, and the 1 is the first version of the format. Say the letters: A E R one.
AER-1 is the title term of draft-zambo-aer1-26 at the IETF, the current and closing revision, posted October 22, 2026 and expiring April 25, 2027. The conformance corpus published under the AER-1 name runs to 143 vectors and 146 checks.
The thing itself is a record of one agent tool execution, saved at execution, that anyone can recheck later. For the record itself, see the core fields section above, which lists what goes into each receipt.

## Frequently asked questions

### What is AER-1?

AER-1 (Agent Execution Receipt, version 1) is an open format for a verifiable receipt that records what an AI agent did, step by step, so anyone can check later that the saved record was not changed since it was saved. It was created by Brennan Zambo and is published as IETF Internet-Draft draft-zambo-aer1-26.

### Who created AER-1?

AER-1 was created by Brennan Zambo, founder of Zambo. Zambo is the verifiable work layer for AI, and AER-1 is its agent execution receipt format, published as IETF Internet-Draft draft-zambo-aer1, closed at revision 26.

### What is the agent execution receipt standard?

The agent execution receipt standard is AER-1, an open IETF Internet-Draft (draft-zambo-aer1, currently revision 26) that defines how to record one agent tool call as a portable receipt. It fixes the core fields of the record, the rule that the saved result bytes are preserved exactly, and the verification procedure any party can run. Because the format is open and the check needs no account, a receipt produced by one implementation can be checked by any other, which is the point of having a standard format at all. AER-1 is a draft, not a finalized standard.

### Is AER-1 a standard?

Not a finalized one. AER-1 is an IETF Internet-Draft, a working document on the standards track, currently at revision 26. It is not an RFC. It has published conformance vectors and independent implementations, and it advances on the strength of proven deployment rather than by declaration.

### What does an AER-1 receipt prove?

It proves the saved result was not changed since it was saved: recompute the SHA-256 commitment over the saved bytes and compare it with the commitment fixed in the receipt. It does not prove the result was correct, and it does not prove who produced it. Correctness and identity are judgments made against the record, and the record is what makes those judgments possible on evidence.

### How do I verify an AER-1 receipt?

Open the receipt in the browser verifier at zambo.dev/verify/ and the check runs in front of you, or run the live demo at zambo.dev/demo/ to mint a fresh receipt and verify it end to end. Any implementation can also verify offline with no account: take the saved bytes from the receipt, compute their SHA-256 digest, and compare it to the commitment the receipt carries.

### How do I add AER-1 receipts to an AutoGen agent?

 Two routes, and neither replaces your agent. Connect the agent to Zambo at https://zambo.dev/mcp and the tools it calls through Zambo leave an AER-1 verifiable receipt per call, or wrap your own tools with the aer1-autogen package on PyPI so each tool call writes its receipt as it runs. Either way the run ends with receipts a client or a second AI can recompute free at zambo.dev/verify, under IETF Internet-Draft draft-zambo-aer1-26. Calls the agent makes outside those routes leave no receipt, so route the steps you may later need to prove.

## Run it on a record instead

 Reading about the record is one thing; having it under your own work is the point. Work run through the Zambo MCP endpoint at [zambo.dev/mcp](https://zambo.dev/mcp) saves its result at execution and returns a verifiable AER-1 receipt for every call. The [Day Pass is $0.99 for 24 hours](https://zambo.dev/day-pass/) of the full endpoint, the Pass is $29 for 30 days, one payment, and checking any receipt is always free at [zambo.dev/verify](https://zambo.dev/verify/).

## How do I add AER-1 receipts to an AutoGen agent?

 The problem: an AutoGen run ends as a conversation, and a conversation is the agent grading its own homework. The agents talked, the tools ran, and the record of what actually executed is the transcript the system wrote about itself. When a client or a teammate asks what a step really returned, the transcript is the only witness, and it works for the defense.
 Receipts move the witness outside the conversation. Route the agent tool calls through Zambo, or wrap them with aer1-autogen, and each call saves its receipt at execution time: the task, the inputs, and the saved result, bound by the run workflow record. Afterwards anyone can recompute a receipt without your AutoGen setup, your keys, or your word. The short version of this answer lives at [how to add AER-1 receipts to an AutoGen agent](https://zambo.dev/answers/add-aer1-receipts-to-autogen-agents/) on zambo.dev, beside the sibling routes for the other frameworks.
 The format underneath is AER-1, IETF Internet-Draft draft-zambo-aer1-26, so the receipts an AutoGen agent leaves can be read by the same checkers that read receipts from any other client. Every tool is free once a day, plus 3 continue calls, one free wrap-up handover per day, and picking up work in another AI is always free. A $0.99 Day Pass is unlimited for 24 hours, including unlimited wrap-ups, and the Zambo Pass is $29 for 30 days, $19 for 30 days for $ZAMBO holders. Lifetime is $250, one payment. Humans pay by PayPal or card through PayPal; agents pay USDC on Base through x402.

## Related

- [Independently verifiable AI agent execution, in plain terms](https://dev.to/rambozambo/what-is-an-ai-agent-execution-receipt-3io8)

- [AER-1 deep dive: mechanics, conformance levels, interop](aer-1.html)

- [Your agent's audit trail is lying to you (and how to check): an AER-1 receipt under the four point check](your-agents-audit-trail-is-lying.html)

- [Agent execution receipt standard: why one format for every agent](agent-execution-receipt-standard.html)

- [What standard should I use for verifiable AI agent receipts?](what-standard-should-i-use-for-verifiable-ai-agent-receipts.html)

- [AER-1 conformance test](aer1-conformance-test.html)

- [AER-1 implementation report](implementation-report.html)

- [draft-zambo-aer1 on the IETF Datatracker](https://datatracker.ietf.org/doc/draft-zambo-aer1/)

- [Verify a receipt right now](https://zambo.dev/verify/)

- [Run the live demo](https://zambo.dev/demo/)
 
- [AI agent receipt specification: how to implement AER-1 in your agent](how-to-implement-aer-1.html)
 
- [AI agent work verification: how to check what your AI actually did](https://dev.to/rambozambo/did-my-agent-lie-how-to-check-what-your-ai-actually-did-4be5)
 
- [Make your agent prove it did the work](https://zambo.dev/answers/how-to-verify-ai-agent-work/)
 
- [What is an AI agent receipt? The full guide](https://zambo.dev/guides/ai-agent-execution-receipt/)
 
- [Can you verify AI agent actions? Yes, against the record each call left](verify-ai-work.html)
 
- [AI agent receipts, live: the stream the agent receipt protocol produces](receipt-stream.html)

- [AI agent receipt generator: a verifiable receipt for the job you just ran](get-a-receipt-for-ai-work.html)

For work that runs past one day
A Day Pass ($0.99) covers 24 hours. Ongoing access is the Zambo Pass: $29 for 30 days, $19 for 30 days for $ZAMBO holders, and Lifetime is $250, one payment, on the same endpoint, with a verifiable receipt on every call. [See the Pass on the pricing page](https://zambo.dev/pricing/).

Zambo, the verifiable work layer for AI.[zambo.dev](https://zambo.dev/) [MCP endpoint](https://zambo.dev/mcp) [Registry](https://rambozambodotdev.gitlab.io/registry.html) [AER-1 draft](https://datatracker.ietf.org/doc/draft-zambo-aer1/26/) [Add Zambo to your AI](https://zambo.dev/add/) · [Follow @brennanzambo on X](https://x.com/brennanzambo)
A standard spreads when its proof stays visible. The [AER-1 badge kit](aer1-badge.html) lets implementations, project pages, and profiles carry a verifiable-receipts badge, and the kit explains the honest per-receipt pattern that stands behind it.
The conformance corpus behind AER-1 is citable. The AER-1 conformance kit (143 test vectors, 146 checks, kit v1.5.7) is published as a dataset with DOI [10.57967/hf/11245](https://doi.org/10.57967/hf/11245): [zambodotdev/aer1-conformance-kit](https://huggingface.co/datasets/zambodotdev/aer1-conformance-kit) on Hugging Face, with the canonical record at [zambo.dev/aer1/corpus.json](https://zambo.dev/aer1/corpus.json).
