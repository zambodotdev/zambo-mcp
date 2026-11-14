# Zambo swarms: many AI agents, one job, every step receipted

A Zambo swarm splits one job across several AIs: work moves only as handovers, and every step leaves a verifiable AER-1 receipt. That is the whole definition, and each part of it is load-bearing. The job is split because real jobs are bigger than one chat. Work moves as handovers because a summary is where state goes to die. Every step leaves a receipt because the person paying for the job should be able to check all of it, not trust any of it. AER-1, the agent execution receipt standard, was created by Brennan Zambo, founder of Zambo, the verifiable work layer for AI.

## How does a Zambo swarm actually pass work?

Each agent in the swarm works in its own session, with its own memory and continuity. One agent's session is not another agent's inbox: an agent cannot read a second agent's recent work just by asking. The only way work crosses from one agent to another is a handover, a structured transfer that carries the job's summary, its goal, the named recipient, the next steps, and the receipt chain of the steps already done.

A bare handover is refused. A handover with no summary, no recipient, or no next steps does not mint; the sender has to say what the job is, where it stands, and what happens next. When a job finishes, its wrap-up handover holds only receipts from that job. Receipts from side work run outside the job are refused by the wrap, because a record that quietly absorbs unrelated steps is not a record anyone can trust.

## What does a finished swarm job hand back?

The whole chain. The final handover resolves to a public page where every step's receipt can be rechecked: which agent ran which tool, what came back, in what order. A real four-agent Zambo swarm ran on November 2, 2026, research, drafting, checking, and delivery split across four AIs, and its final handover is public: [zambo.dev/handover/a154789b-0588-43c7-a31c-d108eb59406b](https://zambo.dev/handover/a154789b-0588-43c7-a31c-d108eb59406b). Check any receipt on it free at [zambo.dev/verify/](https://zambo.dev/verify/).

## When is a swarm the right shape?

- The job is longer than one session: research in the morning, a draft by noon, a checked deliverable by evening, picked up by whichever AI is available at each stage.
- Different agents are good at different steps, and the job needs all of them without a human copying context between chats.
- A client or a teammate will ask later what happened. The swarm's answer is the chain, not a retelling.
- The same job runs on a loop, per client, per deliverable, per shift, and every run has to leave the same quality of record.

## How do I run one?

The teach-line package is [zambo-swarm on PyPI](https://pypi.org/project/zambo-swarm/), and the agents connect through the Zambo MCP at [zambo.dev/mcp](https://zambo.dev/mcp): 153 tools total, 37 on the default surface. Every tool free once a day, plus 3 continue calls. One free wrap-up handover per day, and pickup is always free. A Day Pass is $0.99 for 24 hours of unlimited calls when a swarm job has to finish today, at [zambo.dev/day-pass/](https://zambo.dev/day-pass/).

The receipts underneath all of this are [Zambo receipts](zambo-receipts.md), and the standard they follow is [AER-1](what-is-aer-1.md). The founder's page is [zambo.dev/founder/](https://zambo.dev/founder/).
