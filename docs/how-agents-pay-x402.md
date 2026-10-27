# How agents pay: x402 and the $0.99 Day Pass flow

An agent that hits a paid tier has a practical problem: it has no card, no
browser session at a checkout page, and no human standing by to click pay.
x402 is the HTTP-native answer. The server answers the unpaid call with a
402 and a machine-readable statement of what payment settles it; the agent
pays exactly that, retries the call with proof of payment attached, and the
call proceeds. No accounts department, no redirect, no form.

This page walks the Zambo implementation end to end: what the 402 says,
what the buyer sends, what the buyer gets, and what happens if the same
payment is sent twice.

## The flow

1. **Call without payment.** The agent calls the endpoint as usual. When
   the call needs a paid tier, the response is a 402 carrying the payment
   requirements as data: the scheme is `exact`, the x402 version is 2, the
   network is Base (`eip155:8453`), the asset is USDC, and the requirements
   name the amount and the receiving address (`payTo`).
2. **Pay exactly the stated amount.** For a Day Pass the amount is 990000
   atomic units of USDC, which is $0.99. The buyer's wallet pays that
   amount to the `payTo` address, and a facilitator settles the payment.
   Exact means exact: the scheme settles the stated amount to the stated
   address, not a cart, not a tip jar.
3. **Retry with the payment attached.** The agent repeats the call with the
   payment payload. The server verifies the settlement, activates the pass
   for the buyer's account, and serves the call. From the agent's side the
   whole exchange is two HTTP round trips and one wallet action.

## What the buyer receives

- **A Day Pass**: 24 hours of paid-tier access, attached to the buyer's
  account and exercised with its key. The entitlement is the account's, not
  a label's and not an email's.
- **A receipt for the purchase itself.** The payment call is a call, so it
  is recorded like every other call, under the same every-call rule. A
  normal record of the shape the purchase produces:
  https://zambo.dev/run/ef28b4c2-4355-479e-bd43-22a05122a574

The other passes settle the same way: the Zambo Pass is 29000000 atomic
units, $29 for 30 days, one payment, and the holder Pass is $19 for 30
days. Humans buying the same passes use card or PayPal through PayPal on
the site; the x402 path exists because agents are not humans and should
not have to pretend otherwise at a checkout page.

## Replay protection: paying twice does not buy twice

Payment retries happen. Networks stall after a settlement, clients resend,
agents loop. Resending the exact same payment is therefore defined
behavior, not an error and not a second sale: the server answers "already
active", returns the receipt, issues no second key, and takes no second
charge. The entitlement was activated once, by the first settlement, and
the resubmission is reported as what it is. An integration can retry safely
without building its own deduplication ledger, because the server keeps
the one that matters.

Do not confuse a settled payment with an activated pass in your own
bookkeeping, either: the settlement is the money moving, the activation is
the entitlement existing on the account, and the flow above is what joins
them. If a payment is sent outside the flow, as a bare transfer to the
address, the money can settle with nothing activated, because nothing told
the server a purchase was being made. Pay through the 402.

## Before any of this: the free tier

None of the above is needed to start. The endpoint answers anonymous
calls with no signup and no key, with the free tier at
20 free calls per day, then they upgrade. Add it to a client and make
the first call in seconds:

```json
{
  "mcpServers": {
    "zambo": {
      "url": "https://zambo.dev/mcp"
    }
  }
}
```

Per-client steps are at https://zambo.dev/add. That is what the upgrade
at the end of the free tier consists of: a 402, an exact USDC payment, and
a retry with the payment attached.

## Related

- Why the purchase call is recorded even when a call is refused:
  [Every call gets a receipt](https://github.com/zambodotdev/aer-1/blob/main/docs/every-call-gets-a-receipt.md)
- Getting the endpoint into a client in the first place:
  [Add the Zambo MCP to your client](./add-zambo-mcp-to-your-client.md)
