# Memory and continuity across AI sessions

Sessions end. Windows close, clients restart, a different model picks the
work up tomorrow. Whatever the agent learned in the last session is gone
unless something outside the session kept it. Pasting a transcript into
the next chat is the usual workaround, and it degrades exactly like a
retelling: long, lossy, and reworded a little more each time.

Continuity means the facts survive the session boundary as data. This
guide covers the model Zambo uses: a server-side memory addressed by a
caller handle, readable from any later session, including a session on a
different model.

## The caller handle is the address

When a client initializes against the endpoint, the server issues a caller
handle: a string of the shape `zch_...`, returned in the initialize response body as `meta.caller_handle` and in the `X-Zambo-Caller-Handle` response header. That handle
is the address of a memory store. Present the same handle on later calls,
as the `_caller_handle` argument, and the memory tools read and write the
same store:

- `memory_remember` writes one fact to the store; it requires a session id argument, presented with the `_caller_handle`.
- `memory_recall` reads facts back, exactly as written.
- The continuity tools report recent activity under the handle, so a fresh
  session can see what the work has been doing before it asks anything.

Two properties matter. First, the store is server-side, so the model is
interchangeable: a fact written from one client in the morning is recalled
verbatim by a different model at night, because neither model was ever the
one keeping it. Second, the handle is the binding, and a name is not. A
caller label is a display string; two sessions typing the same label are
two strangers with the same nickname. The handle is what makes a returning
session the same caller. Treat it like a key: whoever presents it reads
the memory filed under it.

## Start, remember, return

Add the endpoint to your client:

```json
{
  "mcpServers": {
    "zambo": {
      "url": "https://zambo.dev/mcp"
    }
  }
}
```

Per-client steps are at https://zambo.dev/add. No signup, no key needed to
start; the first call lands in seconds.
The free tier is 20 free calls per day, then they upgrade.
On the first session, note the handle the server
issues and keep it with the project's own configuration. Then the loop is:

1. During work, write the facts that future sessions will need:
   decisions, constraints, the state of play. One fact per write, stated
   plainly, because recall returns them as written.
2. End the session whenever you like. Nothing needs exporting.
3. In the next session, on any client or model, present the handle and
   recall. The facts arrive as data, not as a summary somebody wrote at
   midnight.

Every one of those calls leaves a verifiable receipt, like this one:
https://zambo.dev/run/ef28b4c2-4355-479e-bd43-22a05122a574. The memory is
therefore not just persistent but auditable: you can check what was
written, when, and that it was not changed afterward. What a receipt
proves is the saved record's integrity, never that the fact recorded in it
was true. A wrong fact, remembered faithfully, is still wrong, and the
receipt says so by saying nothing about it.

## Where continuity breaks in other setups

- **Session ids as memory.** A fresh session id is a fresh stranger. If
  recall keys on the session, rotation silently zeroes the memory while
  the writes keep landing somewhere unreachable. If you have ever watched
  an agent "forget" between two chats in the same tool, this is usually
  the mechanism.
- **Transcripts as memory.** A pasted transcript buries the three facts
  that matter under forty messages that do not, and the receiving model
  weighs them by position and confidence of tone rather than by truth.
- **Per-model memory.** Facts stored inside one assistant product do not
  follow the work to a different assistant. The store has to live outside
  all of them, addressed by something the caller carries.

A fleet sharing one memory across a full day of sessions is the volume case: a Day Pass is $0.99 USDC on Base for 24 hours, and the Zambo Pass is $29 for 30 days, one payment.

## Related

- Continuity is what makes a clean model switch possible:
  [Hand over work between AI models](./handover-between-models.md)
- Checking the records a session leaves behind:
  [Verify AI agent work before you trust it](./verify-ai-agent-work.md)
