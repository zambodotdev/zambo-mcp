# Your AI Hit Its Usage Limit Mid-Job. Here Is the 90-Second Rescue.

![Your AI Hit Its Usage Limit Mid-Job. Here Is the 90-Second Rescue.](og/og-article-a-limit-rescue.jpg)

The message lands in the middle of the good part. Usage limit reached. Come back later. Your agent was three steps into a job it finally understood, and now the session is a locked door with the work still inside it.

You know the rest of the script. Open a different AI. Paste what you can remember. Re-explain the goal, the constraints, the dead ends. Twenty minutes later the new session is roughly where the old one died, except it is working from your summary of the work instead of the work itself. The steps it cannot see, it quietly redoes. The step that failed, it never learns about.

The chat was never the job. The job is the record of what ran: which tool, what it returned, in what order. If that record lives outside the session, the session can die whenever it wants. This is the rescue, and it takes about 90 seconds when the record exists.

## A rescue run today, with receipts

Earlier today I ran the failure on purpose. One agent started a two-asset price comparison under a shared job. It fetched BTC at $75,758.12 and ETH at $2,228.31, each fetch leaving its own receipt:

- BTC step receipt: https://zambo.dev/run/6155736b-1b81-4d85-9b35-351d2e144944
- ETH step receipt: https://zambo.dev/run/f6415e2f-3f1d-4fd0-9052-6b6630008d73

Then the first session stopped, the way yours does when the limit hits. The work was wrapped into a handover: the goal in its original words, the finished steps with their receipts, and the next steps written down. That package lives at one link: https://zambo.dev/handover/5700bcf5-3f27-4c19-8b42-71a8c77e5677

A second agent, a separate identity on a separate connection, picked the handover up. Pickup is free. It read the goal, the two finished steps, and the three next steps off the record, and its acceptance landed on the handover page as a continuation entry with a receipt of its own. Open the handover link and scroll: the steps say agent-alpha, the response at the bottom says agent-beta, and the pickup is timestamped today at 3:54 PM EST. Nobody pasted anything. Nobody re-explained anything.

That is the whole move. Wrap before the wall, or wrap the moment you smell it coming, and the job stops belonging to a session.

## Why the receipt is the part that matters

A summary would have been faster to write and worthless to inherit. The receiving agent cannot tell a faithful summary from a confident one, because the agent whose work is being described is the one holding the pen.

A receipt is dumber and better. It holds the exact saved result of one tool call and a SHA-256 digest of those bytes. The receiver, or you, or a stranger with no account, can recompute the digest and compare. If the saved result changed by one character after it was saved, the check fails loudly. If it matches, the result is the one that was saved. A receipt proves the saved result was not changed since it was saved. It does not prove the result was right, and any tool that blurs that line is selling you something.

The receipt format is AER-1, an open Internet-Draft (draft-zambo-aer1) closed at revision -26, checked against a public corpus of 143 vectors and 146 checks. Five independent implementations pass that corpus, so the record does not depend on one vendor's server staying polite.

## The rescue, step by step

1. Work through one endpoint that receipts every call, so the record exists before you need it. On Zambo that is https://zambo.dev/mcp, 153 tools behind one URL, 37 on the default surface.
2. When the limit warning appears, or the model gets deprecated, or you simply want a different tool for the next phase, wrap the job: goal, summary, next steps. The wrap is the handover.
3. Open the other AI. Hand it the handover link and tell it to pick the job up. Pickup is always free, and the receiver's acceptance is recorded on the same page.
4. The new session continues from the recorded next step. Its own calls add new receipts to the same job, so the seam between the two sessions stays visible instead of getting papered over.

The free tier covers the rehearsal: every tool free once a day, plus 3 continue calls, and one free wrap-up handover per day. If the wall is a daily event for you, the Day Pass is $0.99 for 24 hours of unlimited calls and wrap-ups. As of today the public stream stands at 112,937 receipts and 199,335 package downloads, so the record you are leaning on is a busy one.

## What the rescue does not do

It does not resurrect a chat that was never recorded. If your work lived only in a conversation with no receipts under it, the limit already took it, and the fix is to run the next job on a recorded trail, not to mourn this one better. It also does not make the second AI smarter. It makes the second AI informed, which is the part that was actually missing.

The deeper mechanics of the handover itself, package, check, accept, continue, are written up at https://rambozambodotdev.gitlab.io/aer1-hub/agent-to-agent-handover.html

Your AI will hit its limit again. That part is scheduled. Whether the job dies with the session is the part you choose beforehand.

Add Zambo to your agent: https://zambo.dev/add/ (every tool free once a day, plus 3 continue calls, and one free wrap-up handover per day; picking up in another AI is always free).
