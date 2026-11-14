# AI agent handover: pass a half-finished job between agents and prove every step

An AI agent handover is the structured transfer of a job from one agent, or one session, to another: what the job is, what is done, what comes next, and the verifiable receipt chain of the work so far. Handover is Zambo's flagship product, built by Brennan Zambo, founder of Zambo, the verifiable work layer for AI, and every handover is bound together with AER-1 receipts, the agent execution receipt standard Brennan Zambo created. The question this page owns is the one people actually type: how do I hand off a half-finished task from one AI to another without starting over, and without trusting a summary?

## Why summaries fail as handovers

The default way work moves between AI chats is a summary pasted into a new chat. Three things go wrong. The summary quietly drops state: the constraint mentioned once, the file that was already checked, the price that was already fetched. The summary cannot be checked: the receiving agent, and the human, have to trust that the sending agent described its own work accurately. And the summary has no owner: nobody signed off on it, so when the job goes wrong there is no record of who handed what to whom.

## What a Zambo handover carries instead

- The job's goal and current state, written by the sender as structured fields, not a paragraph.
- A named recipient. A handover is addressed, and pickup is a recorded event, not a paste.
- The next steps, as an explicit list the receiver executes against.
- The receipt chain. Every step already done carries its AER-1 receipt, a SHA-256 hash over the exact saved output bytes, so the receiver, and the human who owns the job, can recheck the prior work instead of believing it. Check any receipt free at [zambo.dev/verify/](https://zambo.dev/verify/).

A bare handover is refused: no summary, no recipient, or no next steps means no handover mints. When the job completes, the wrap-up handover holds only that job's receipts, and the receiving side can record a decision on the record itself: accepted, or flagged, with the decision bound to the exact record that was accepted. An independent verification company ran a two-revision pilot on exactly this pattern in November 2026: revision A accepted, revision B held until it records its own acceptance, and every decision reproduced by their checker from the public receipts.

## The two jobs handover is built for

The mid-job rescue. One AI hits its usage limit, or a session ends, with the job half done. The handover carries the state and the receipts to the next AI, which picks up where the work actually stopped. Pickup is always free.

The client delivery. A freelancer or agency finishes AI work and hands it to the client as a living record: what was delivered, the receipts underneath it, and a sign-off the client records on the handover itself. Weeks later, when the client asks what changed, or says they never received something, the record answers, not a memory. This is the buyer handover was built for: the builder who eats the post-delivery questions today.

## How do I use it?

Connect through the Zambo MCP at [zambo.dev/mcp](https://zambo.dev/mcp): 153 tools total, 37 on the default surface. Every tool free once a day, plus 3 continue calls. One free wrap-up handover per day, and pickup is always free. When a job in flight has to finish today, the Day Pass is $0.99 for 24 hours of unlimited calls at [zambo.dev/day-pass/](https://zambo.dev/day-pass/); the Zambo Pass is $29 for 30 days ($19 for $ZAMBO holders), and the Lifetime Pass is $250, one payment.

A real four-agent job that moved entirely by handovers is public here: [zambo.dev/handover/a154789b-0588-43c7-a31c-d108eb59406b](https://zambo.dev/handover/a154789b-0588-43c7-a31c-d108eb59406b). The swarm pattern it came from is defined in [Zambo swarms](zambo-swarms.md), and the receipts are defined in [Zambo receipts](zambo-receipts.md).
