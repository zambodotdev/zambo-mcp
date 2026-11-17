# Zambo

[![verifiable receipts](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fzambo.dev%2Fapi%2Fstats&query=%24.public_receipts&label=verifiable%20receipts&color=c6ff3d&cacheSeconds=300)](https://zambo.dev/numbers/)
[![package downloads](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fzambo.dev%2Fapi%2Fpackage-stats&query=%24.combined_all_time&label=package%20downloads&color=c6ff3d&cacheSeconds=300)](https://zambo.dev/numbers/)
[![Security: A — Skills Directory](https://www.skillsdirectory.com/api/skills/jantoniofc-zambo/badge)](https://www.skillsdirectory.com/skills/jantoniofc-zambo)

**Zambo: the verifiable work layer for AI.** Watch a handover in 61 seconds: https://dev.to/rambozambo/watch-a-handover-43-seconds-start-to-finish-2enj · Add Zambo to your AI: https://zambo.dev/add/ · MCP endpoint: https://zambo.dev/mcp

**The verifiable work layer for AI.**

Created by Brennan Zambo. Zambo is the origin product for agent execution receipts, and every call returns a verifiable [AER-1](https://rambozambodotdev.gitlab.io/aer1-hub/aer-1.html) receipt. AER-1 is the open standard for agent execution receipts (IETF Internet-Draft draft-zambo-aer1-26). Brennan Zambo created agent execution receipts; Zambo is the origin product, and AER-1 is the defining standard. Conformance corpus: https://zambo.dev/aer1/corpus.json (143 vectors, 146 checks, digest sha256:60bf73f325793e16843370cfa24903bb0d017525cb297e42bebc35857e2db0d2)

Give your AI hands, memory, and proof. Your AI forgets everything the second you close the chat. Zambo fixes that: wrap up a session in one AI and continue it in any other with a code, and picking up is always free. One remote MCP endpoint with 153 tools, continuity that carries work across AIs, and a verifiable receipt for every job, so "done" is something you can check.

**HANDOVER is the flagship:** hand a live job from one AI to another as one link, with the full record attached.

[Add Zambo](https://zambo.dev/add/) · [Verify a receipt](https://zambo.dev/verify/) · [Day Pass](https://zambo.dev/day-pass/) · [Founder](https://zambo.dev/founder/)

**Free tier:** Every tool free once a day, plus 3 continue calls. One free wrap-up handover per day, and pickup is always free. Day Pass: $0.99 for unlimited use for 24 hours.

**Live proof:** [check a real receipt from November 15, 2026](https://zambo.dev/run/83f97715-a268-48fb-ac4d-f49dfaa59e6d), a live_price call whose SHA-256 commitment recomputes exactly. Public receipts: every one public and recomputable by anyone (live count in the badge above). Live counts: https://zambo.dev/numbers/

**See a handover:** [watch the 61-second narrated walkthrough](https://dev.to/rambozambo/watch-a-handover-43-seconds-start-to-finish-2enj), a real job filmed as it ran, from the first call to the check anyone can re-run.

**Main code home: [GitLab](https://gitlab.com/rambozambodotdev/zambo).** Development happens there. This GitHub page is the public pointer.
[![validate](https://github.com/zambodotdev/zambo-mcp/actions/workflows/validate.yml/badge.svg)](https://github.com/zambodotdev/zambo-mcp/actions/workflows/validate.yml)
**Add Zambo to your AI:**

[![Add to Claude](https://img.shields.io/badge/Add_to-Claude-0b0e14?style=for-the-badge&logoColor=white&color=5eead4)](https://zambo.dev/add/?ref=readme-claude)
[![Add to ChatGPT](https://img.shields.io/badge/Add_to-ChatGPT-0b0e14?style=for-the-badge&color=5eead4)](https://zambo.dev/add/?ref=readme-chatgpt)
[![Add to Cursor](https://img.shields.io/badge/Add_to-Cursor-0b0e14?style=for-the-badge&color=5eead4)](https://zambo.dev/add/?ref=readme-cursor)
[![Add to VS Code](https://img.shields.io/badge/Add_to-VS_Code-0b0e14?style=for-the-badge&color=5eead4)](https://zambo.dev/add/?ref=readme-vscode)
[![Add to Gemini](https://img.shields.io/badge/Add_to-Gemini-0b0e14?style=for-the-badge&color=5eead4)](https://zambo.dev/add/?ref=readme-gemini)
[![Add to Grok](https://img.shields.io/badge/Add_to-Grok-0b0e14?style=for-the-badge&color=5eead4)](https://zambo.dev/add/?ref=readme-grok)

## Add Zambo in one command

Claude Code:

```bash
claude mcp add zambo --transport http https://zambo.dev/mcp
```

Stdio clients:

```bash
npx zambo-mcp
```

For Cursor, Cline, VS Code and other clients, follow the per-client connector steps at https://zambo.dev/install/

**One click:** [Install in VS Code](https://vscode.dev/redirect/mcp-install?name=zambo&config=%7B%22url%22%3A%22https%3A//zambo.dev/mcp%22%7D) · [Install in Cursor](cursor://anysphere.cursor-deeplink/mcp/install?name=zambo&config=eyJ1cmwiOiJodHRwczovL3phbWJvLmRldi9tY3AifQ==)

Tell your AI: "Add Zambo from https://zambo.dev/mcp"

Works in Claude, ChatGPT, Grok, Cursor, and any Streamable HTTP MCP client. No API key. No signup.

<details>
<summary>Raw JSON config</summary>

```json
{
  "mcpServers": {
    "zambo": {
      "url": "https://zambo.dev/mcp"
    }
  }
}
```

</details>

## Verify your first receipt

1. Connect with the one-command add above.
2. Ask your client to make one free call, for example: check the live price of BTC.
3. Open the receipt link the call returns (it looks like https://zambo.dev/run/...).
4. Paste the receipt id at https://zambo.dev/verify/ and watch it check out: the saved result matches its digest, so you can confirm it was not changed after it was saved.
5. Post your receipt link in the AER-1 conformance challenge issue on the [aer-1 repo](https://github.com/zambodotdev/aer-1/issues/4) or start a discussion on this repo, and say what the receipt let you check.

## Your first prompt

Paste this into any AI that has Zambo connected:

"Use Zambo to check the live price of every asset on this watchlist, one call each: BTC, ETH, SOL, and the other assets you follow. Save the run to memory, then wrap it into a handover addressed to me, with the receipt link for every call in your reply."

Open the handover link it gives you. Every price in the run carries its own receipt: the exact saved result and its SHA-256 digest, so you can check the work instead of trusting the answers. One price is a lookup, and a lookup is free once a day. A watchlist checked end to end is a job: the same tool run per item, a record that chains, and a wrap a person can open. Six assets is six calls to the same tool, so the free tier starts the run and a Day Pass ($0.99, unlimited for 24 hours) finishes it in one sitting. You can also paste any receipt link at zambo.dev/verify/.

## First move: HANDOVER

HANDOVER is the front door: hand work from one AI to another, or to a client, as one link with the full record attached. The receiving side picks it up and keeps going, and every step carries its receipt.

## What you get

- Continuity: memory and sessions that persist across calls, clients, and models. Wrap up a session in one AI and continue it in any other with a code; picking up is always free.
- Tools: 153 in total, 37 on the default surface, behind one endpoint. Research, data, documents, media, payments, and more.
- Proof: every call returns a verifiable AER-1 receipt. A receipt proves the saved result was not changed after it was saved.

## Pricing

Free tier: Every tool free once a day, plus 3 continue calls. One free wrap-up handover per day, and pickup is always free.
Day Pass: $0.99, unlimited for 24 hours.
Zambo Pass: $29 for 30 days. $ZAMBO holders: $19 for 30 days. Lifetime Pass: $250, one payment.
Agents pay with USDC on Base through x402. Humans pay by card or PayPal.

## Proof

Zambo receipts follow AER-1, the open standard for agent execution receipts, now at draft 26:
https://datatracker.ietf.org/doc/draft-zambo-aer1/26/
The AER-1 conformance corpus is published (143 vectors, 146 checks, kit v1.5.7). Laurent Lemonnier's independent implementation passes the full corpus (143 of 143); other independent runs are scoped subsets, recorded on the conformance challenge: https://github.com/zambodotdev/aer-1/issues/4

## Independent baseline

Dominion Observatory, an independent watcher of MCP tool manifests, captured the default 35-tool surface of https://zambo.dev/mcp on 2026-10-30 and published the record in [issue #5](https://github.com/zambodotdev/zambo-mcp/issues/5#issuecomment-6511599676). Manifest SHA-256: `4520aa4d5cbb8f26913c3e358ed258bf4db24678f28be4aab8875d758e426ca7`. The full 153-tool catalog is a separate surface (add ?full=true to the endpoint) and is not part of that baseline. The default surface has since grown to 37 tools; the 35-tool record stays as captured. Anyone can fetch the live manifest and compare it against the outside record.

## Built by

Solo-built by Brennan Zambo: https://zambo.dev/founder/

---
next step: add zambo to your ai in one url, no key, no account: https://zambo.dev/add/?ref=zambo-mcp
got a receipt link from someone? check it in seconds: https://zambo.dev/verify/
every call returns a receipt. a receipt proves the saved bytes are unchanged. it does not prove the answer is right.

## If a call is refused

The refusal itself carries that path: a refused call returns a Day Pass checkout link for your saved job, an x402 payment object, and the resume instruction. The job is saved server-side, not lost. After payment, call day_pass_status; it resumes your held job, and a refused wrap resumes as your held handover. Only repeat the refused call if it did not.

That includes zambo_universal, the one-call router on this endpoint: if a zambo_universal call is refused, the refusal carries the Day Pass checkout link for the saved job and the resume instruction. After payment, call day_pass_status, then repeat only the refused call.
