# 2,048 Ways to Stop Starting From a Blank Prompt

Every agent job I watch starts the same way: a blank prompt, a capable model, and ten minutes of improvising the job spec that should have existed before the first call. The model guesses the inputs. It guesses what done looks like. It guesses when to stop. Sometimes the guesses are good. You only find out at the end, when there is nothing underneath the work to check.

That cold start is the problem the new Zambo task guides exist to kill. Today zambo.dev shipped 64 task guides holding 2,048 task-specific starter recipes at [zambo.dev/workflows/tasks/](https://zambo.dev/workflows/tasks/). A starter is not a prompt tip and it is not a template with blanks. It is a ready job: the inputs named up front, a copyable prompt written for that exact task, an output checklist, review checks, stop conditions, and a JSON recipe, each starter with its own direct anchor link so you can send someone the exact job, not the page it lives on.

I built Zambo solo, and I built these guides the way I build everything here: if a claim cannot be checked, it does not ship. At verification this morning the public stream stood at 128,922 public receipts, 1,583 of them that day, on version 4.1.0, with 153 tools behind one endpoint and 36 on the default surface.

## What a starter actually contains

Take one end to end: [handover-current-state](https://zambo.dev/workflows/tasks/multi-ai-handover-plan/#handover-current-state), inside the multi-ai-handover-plan guide. HANDOVER is Zambo's flagship product, so this is the starter I care about most.

Its structure, in order:

- **Inputs.** The current state of the job as it actually stands: what is done, what is open, and what the next AI needs to know before it touches anything. No archaeology through a chat transcript.
- **A copyable prompt.** Written for this task, not a generic frame. It tells the agent to state the current state plainly, separate finished work from work in flight, and name the exact next step.
- **An output checklist.** The shape the result has to arrive in, item by item, so done is a checklist you can tick, not a feeling.
- **Review checks.** The questions a reviewer runs before accepting the state as true, including whether each finished step carries its receipt.
- **Stop conditions.** The points where the agent stops and reports instead of pushing on: a step with no record under it, a state that contradicts an earlier one, a next step nobody actually decided.
- **A JSON recipe.** The whole starter as structured data, so a tool or another agent can load the job directly instead of reading prose about it.

Two more, so the range is clear: [extract-requirements](https://zambo.dev/workflows/tasks/website-brief/#extract-requirements) pulls a real brief out of a messy website request, and [check-contradictions](https://zambo.dev/workflows/tasks/bug-report/#check-contradictions) makes a bug report argue with itself before a human has to. Sixty-four guides, 2,048 starters, every one built to that same six-part shape.

## The guides meet the workflows you already saved

The 25 workflows that were already live remain at [zambo.dev/workflows/](https://zambo.dev/workflows/), and that page got better in the same release. There is a workflow finder, find by problem or outcome, for the moment you know the result you need but not the workflow name. There are browser-saved shortcuts, kept in localStorage in your own browser, nothing sent to Zambo. There is a resume prompt, pick up where you left off, for carrying a job into a fresh session or a different AI. And there are public template links, so a workflow you rely on can be shared as a link instead of a screenshot and a paragraph of explanation.

The journey is the point: find the starter, run the job, save the shortcut, resume it later in whichever AI you are in now. Pickup is always free.

## The refusal is the receipt I am proudest of

Document work is where this honesty standard gets tested. The doc_intel tool analyzes at most 24,000 UTF-16 code units per call and reports exact coverage, the source_sha256, and a next_offset, so a long document is read in named parts with the coverage stated on the record, never implied.

Here is a clean analysis, live: [receipt ac016d46](https://zambo.dev/run/ac016d46-b3d2-45d0-ae46-8d0c63dce9b2), 992 of 992 characters covered, hash matched.

And here is the one I would put on the wall: [receipt bc83e018](https://zambo.dev/run/bc83e018-51df-4e2b-b461-7c5b1c35c107). If the source changes between parts, doc_intel refuses, with code source_changed, and issues a receipt for the refusal. That refusal consumed no quota. A tool that will happily analyze a document that changed mid-read is a tool inventing a document that never existed. Ours would rather hand you a receipt that says: I stopped, here is why, here is the record.

That is what a verifiable receipt means here, and it is worth stating plainly: a receipt proves the saved result was not changed since it was saved. It does not prove the answer was right. The receipt format is AER-1, an open IETF Internet-Draft, [draft-zambo-aer1-26 on the Datatracker](https://datatracker.ietf.org/doc/draft-zambo-aer1/26/).

## Add it to the AI you already use

One endpoint: https://zambo.dev/mcp . Add it to your AI and the guides, the workflows, and all 153 tools are behind it, every call returning a verifiable AER-1 receipt.

Pricing, in one paragraph: the free tier is 20 calls plus 1 wrap-up free every day, and picking up in another AI is always free. The Day Pass is $0.99 for 24 hours. The Zambo Pass is $29 for 30 days, $19 for 30 days for $ZAMBO holders. Lifetime is $250, one payment. There is no annual tier.

Start from a job, not a blank prompt: [zambo.dev/workflows/tasks/](https://zambo.dev/workflows/tasks/)

Brennan Zambo, founder of Zambo, the verifiable work layer for AI.