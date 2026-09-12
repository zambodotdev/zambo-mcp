# Zambo tool working set

These are the tools on the default 11-tool surface plus the most-used
routed tools. The complete catalog (120 tools) is searchable at runtime
via `capability_search`, or browsable at
`https://zambo.dev/.well-known/llms.txt`.

## Default surface (no discovery needed)

| Tool | What it does |
|---|---|
| `zambo_universal` | Execute any of the 120 tools by name. Arguments: `tool`, plus tool-specific args. Supports `mode: execute \| continue \| verify` and `session_id` for multi-step trails. |
| `capability_search` | Describe a job in plain words; returns the best-matching tool(s). |
| `live_price` | Live price for crypto, stocks, FX with source attribution. |
| `leadsignal` | Lead generation for contractors and local services. |
| `provibe_audit` | Brand/vibe audit for a site or product. |
| `ghost_audit_site` | Starts a 10-stage ghost audit of a URL. |
| `ghost_audit_status` | Polls the running audit. |
| `ghost_audit_report` | Fetches the finished audit report. |
| `credithunt` | Surfaces funding and credit opportunities. |
| `prompt_shield` | Scans text for prompt-injection attempts. |
| `day_pass_activate` | Activates the $1.49/24h Day Pass. |

## Payments

| Tool | What it does |
|---|---|
| `zambo_pay` | Creates a $1.49 USDC payment challenge on Base (x402). This is the payment rail; there is no other payment tool. |

## Discovery pattern

When the job doesn't match a default tool, call `capability_search` first.
It searches all 120 tools, including media generation, QR codes, research,
automation, and verification utilities. Then execute via `zambo_universal`.

Example flow for "audit my site and tell me what's broken":

1. `capability_search` → "audit a website for issues" → `ghost_audit_site`
2. `zambo_universal` → `ghost_audit_site` with `{url: "https://example.com"}`
3. `ghost_audit_status` until complete
4. `ghost_audit_report` → present findings with the receipt
