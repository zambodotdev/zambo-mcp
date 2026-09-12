# Zambo MCP — Tool Catalog

**120 native tools** behind one zero-auth remote endpoint: `https://zambo.dev/api/mcp`.

```json
{"mcpServers":{"zambo":{"url":"https://zambo.dev/api/mcp"}}}
```

Free: 20 calls/tool/day, no account. Day Pass $1.49/24h · Zambo Pass $49/mo.
Default `tools/list` returns a slim surface (11 tools); the full catalog is available
via `?full=true` or the `X-Zambo-Surface: full` header. This catalog was generated
live from the endpoint on 2026-09-12.

## Core stack (24)

- `zambo_agent_bootstrap` — Bootstrap your agent into the Zambo tools in one call. This creates or updates a public Signal profile and returns configuration details; use only aft
- `zambo_ask` — Ask any natural language question about the Zambo Stack — products, APIs, pricing, routing, how-to, use cases, or deep scan mode. Returns a precise st
- `zambo_brief` — Generate a personal intelligence brief — right now, on demand. Not generic news. Personalized to any goal, market, or focus area. Returns: one punchy 
- `zambo_check` — Evidence-aware universal preflight. Check a claim, source, tool, action, authorization boundary, execution, completion, output shape, freshness, confl
- `zambo_compare` — Real-time head-to-head comparison of any two things — with a structured verdict and winner. Not hallucinated. Uses live data and structured AI analysi
- `zambo_compose` — Run Zambo Autopilot — the 6-tool intelligence chain: ZAMBOT Spark → Zambo Score → Drift Detection → Substrate Breakthroughs → Cryptographic Chain Proo
- `zambo_help` — The universal shortcut for humans and agents. Accepts any goal prefixed with '/zambo help me' or plain natural language. Routes automatically through 
- `zambo_invoke` — Thin universal dispatch surface for the complete live Zambo catalog. Invoke any named Zambo tool by exact name without requiring the host AI to expose
- `zambo_limit` — Check your current usage — how many free calls you've used today per tool, how many remain, your tier (free / Signal agent / Day Pass / Zambo Pass), a
- `zambo_live` — Live session report — see exactly what tools have been called, when, how fast, and what's active right now. Returns a full chronological activity log 
- `zambo_mesh` — Get the canonical Zambo MCP config block (JSON) or merge it into an existing agent config. action='config' — returns the ready-to-paste mcpServers blo
- `zambo_playbook` — Browse, run, fork, or submit agent playbooks — named multi-step Zambo tool workflows. A playbook chains Zambo tools together into a proven recipe (e.g
- `zambo_pulse` — Get live zambo.dev platform stats — tool calls today, active pass holders, sparks fired, proofs certified, day passes active, days live. Returns real-
- `zambo_recall` — Retrieve your private Zambo memories — everything stored with zambo_remember, across all sessions. Omit key to get ALL memories as a ready-to-paste sy
- `zambo_remember` — Store any information in your private Zambo memory — permanently, across every session, device, and AI client. Claude loses all context between sessio
- `zambo_score` — Score any startup, idea, repo URL, business, or goal on a 0–100 scale with a letter grade (S/A/B/C/D), bottleneck analysis, fastest win, and a ready-t
- `zambo_session` — Load a ZAMBO session — instantly resume your exact context from Telegram, web, or any previous session in this AI client. Pass a session code (format:
- `zambo_share` — Share any Zambo result as a public link anyone can view — no install needed. When Claude returns something great (leads, code fix, strategy, site audi
- `zambo_spread` — Get ready-to-paste install configs and spread kits for zambo.dev — Claude, Cursor, Windsurf, agent.json, tweet, README, and more. Use platform param (
- `zambo_swarm` — Spawn a coordinated multi-agent swarm around any goal in one call. NOT a debate — a division of labor. Zambo assembles specialized agents (researcher,
- `zambo_token` — Get $ZAMBO token info — Solana community token with a deflationary supply mechanic. Returns contract address, current price, DexScreener/Jupiter/pump.
- `zambo_universal` — Universal Zambo Stack entry point. Routes any request through 100+ tools via one MCP connection — strategy AI, code audits, lead generation, wallet in
- `zambo_verified` — Get or issue a Zambo MCP Verified certificate for any project. Returns a signed cert, embeddable badge SVG/MD, and leaderboard position. Call with act
- `zambo_watch` — Set a persistent async watcher — Zambo monitors any condition in the background and sends a Telegram alert when it fires. This is the ONLY MCP tool th

## Presence (10)

- `presence_act` — Perform an action with a Presence identity. Actions: submit_form (POST form data), post_json (POST JSON body), wait (pause Nms), scroll (simulate scro
- `presence_extract` — Extract structured data from a URL using a Presence identity's session. Targets: meta (title/description/h1), text (full cleaned body text), links (al
- `presence_navigate` — Navigate to a URL using a Presence identity's persistent session. Returns page title, text, links, HTTP status, and cookies set. The session jar is pe
- `presence_post` — Post content as a Presence identity on a given platform. Requires an attached session with valid auth cookies. Platforms: x | instagram | linkedin | r
- `presence_reply` — Reply to a post/comment as a Presence identity. Requires an attached session with valid auth cookies. CALL FORMAT: presence_reply({ identity_id: 'uuid
- `presence_screenshot` — Get a structured content summary of a URL (title, H1, description, body text, links) using a Presence identity's session. HTTP runtime: returns struct
- `presence_session_attach` — Attach real browser session cookies to a Presence identity, enabling authenticated actions. Export cookies from DevTools → Application → Cookies → cop
- `presence_session_create` — Create a new persistent digital identity in the Zambo Presence vault. The identity gets an encrypted session store, audit log, and policy controls. Su
- `presence_session_kill` — Permanently kill a Presence identity — purges in-memory session, marks status dead, blocks all future actions. Use the kill_switch for temporary block
- `presence_session_list` — List all Presence identities in the vault with health status, action count, last active time, and session health. Provide the access_key returned when

## ZamboT agents (9)

- `zambot_chain` — Create or extend a Spark Chain — a cryptographically linked sequence of ZAMBOT Sparks for the same goal. Each Spark in a chain references the previous
- `zambot_drift` — Detect strategic drift — the silent divergence between what an agent was built to do and what it's actually doing. Pass the original goal and a list o
- `zambot_fix` — Diagnose and fix broken AI-generated (vibe-coded) code instantly. Identifies the exact failure mode: Token Collapse, Hallucination Loop, Incomplete Ou
- `zambot_legendary_spark` — Generate a LEGENDARY SPARK — the highest tier of ZAMBOT intelligence. Requires a verified 1,000 $ZAMBO burn transaction on Solana (CA: 584zSrbS5XLnJrT
- `zambot_outcome` — Submit a self-reported real-world outcome for a ZAMBOT Spark. Outcomes are published to the public registry and are not independently verified by Zamb
- `zambot_registry` — Browse the Proven Spark Registry — a public ledger of ZAMBOT sparks with verified real-world outcomes submitted by agents and humans. Returns sparks w
- `zambot_spark` — Run the ZAMBO Agent Council on any goal. Five specialist agents argue from biology, game theory, military strategy, behavioral economics, and systems 
- `zambot_swarm_debate` — CALL FORMAT: zambot_swarm_debate({goal: 'your strategic question or decision'}). Required param is `goal` (not topic, not question — exactly `goal`). 
- `zambot_verify` — Cryptographically verify that a ZAMBOT spark is authentic and was generated by the Zambo Stack. Pass the proof_hash from any zambot_spark response to 

## Trading (7)

- `trading_journal` — Read or write your private trading journal. Write: log an outcome (win/loss P&L) after a trade closes — the agent learns from every entry. Read: get y
- `trading_leaderboard` — Get the public trading leaderboard — top paper trading bots ranked by P&L, win rate, and win streak. Shows bot name, strategy type (mean_reversion/mom
- `trading_propose` — Full automated trade proposal workflow: loads your strategy, runs the pure-math risk gate, captures live market context, logs to your private journal,
- `trading_risk_gate` — Pure-math position risk check — NO AI, NO hallucination possible. Hard-enforces: position size vs max_position_pct, daily P&L vs daily_drawdown_pct, c
- `trading_stats` — Get your complete trading performance dashboard: total P&L, win rate, trade count, today's P&L, live vs paper breakdown. Use to check progress toward 
- `trading_strategy_compile` — Convert a natural-language trading strategy into a strict, versioned JSON schema that the trading agent enforces exactly. Define your chain (base/sola
- `trading_wallet` — Set or update your wallet address for trade profit routing. When live trades execute via X711, profits route directly to your wallet — Zambo never hol

## Agent utilities (4)

- `agent_brief` — Generate a comprehensive machine-readable structured briefing on any URL, product, company, API, codebase, or topic — optimized for AI agent consumpti
- `agent_hire` — Browse, hire, or list agents on the Zambo Agent Marketplace — an x402 marketplace for AI agents. Browse available agents by specialization, hire an ag
- `agent_identity` — Establish a persistent agent identity that survives every client switch, model update, and chain migration. Start a task in Claude Desktop, continue i
- `agent_network` — Coordinate a permissioned Zambo Room across humans and registered AI agents. Create a project, authorize members, delegate capability-scoped tasks, cl

## Ghost tools (3)

- `ghost_audit_report` — Retrieve the full markdown report for a completed Ghost Audit. Returns the complete Achilles 10-stage report: score (0-100), all CRITICAL/HIGH/MEDIUM/
- `ghost_audit_site` — Run Achilles 10-stage ghost audit on any website. Returns SEO gaps, AI discoverability issues, conversion leaks, brand presence gaps, and competitor i
- `ghost_audit_status` — Check the status of a running Ghost Audit. Pass the audit_id returned by ghost_audit_site. Returns status: 'complete' when the full markdown report is

## Capability search (2)

- `capability_rent` — Temporarily elevate your agent to a higher-capability tier by renting a premium capability for a fixed window. Provide a confirmed Solana $ZAMBO payme
- `capability_search` — Search across all 100+ Zambo Stack tools via one MCP connection to find what fits your use case. Returns up to 8 relevant products with relevance scor

## Human-in-the-loop (2)

- `hitl_check` — Check whether a human has approved or rejected a review submitted via hitl_submit. Poll this every 5–10 seconds after calling hitl_submit. When status
- `hitl_submit` — Human-in-the-loop gate — submit any content (voice transcript, plan, action) for a human to review and optionally edit before your agent acts on it. R

## Images (2)

- `image_analyze` — Analyze any image with AI vision — describe what's in it, extract text (OCR), review code/errors from screenshots, identify subjects, read charts. Acc
- `image_generate` — Generate stunning AI images from any description — Groq enhances your prompt for professional quality, then Pollinations renders it. Claude has no nat

## LeadSignal — lead generation (2)

- `leadsignal` — Zambo Stack — AI lead generation for contractors and local service businesses. Provide a trade type and city — get 5 qualified leads with contact info
- `leadsignal_generate` — Alias for leadsignal — AI lead generation for contractors. Provide trade and city, get 5 qualified leads with contact info in under 60 seconds. Suppor

## MCP meta (2)

- `mcp_extend` — Grant 10 additional free daily calls when a user has reached the free tier limit. Requires an email address. One extension per email, ever. Returns su
- `mcp_install_guide` — Get the zambo.dev install guide and client-correct hosted MCP instructions for Claude Desktop Connectors, Cursor remote URL, Windsurf serverUrl, nativ

## Monad (2)

- `monad_city` — Top contracts and whale wallets on Monad mainnet via NadCity. Returns: top 10 contracts by volume (with category, tier, tx count, hourly activity), to
- `monad_pulse` — Live Monad mainnet network stats via NadCity. Returns: current TPS, peak TPS (24h), active wallets right now, 24h volume in MON, current block number,

## Partners (2)

- `partner_register` — Register as a Zambo partner. Provide a partner_id and a wallet address for payouts. No Zambo Pass required. When to use: call partner_register when th
- `partner_stats` — Check partner stats — total conversions and pending payout balance. Provide partner_id. When to use: call partner_stats when the user's request matche

## Prompt defense (2)

- `prompt_lab` — Test and compare a prompt across multiple AI models — get outputs side-by-side with quality scores. Returns each model's response with a consistency s
- `prompt_shield` — Zambo Stack — Detect prompt injection, jailbreaks, and policy bypass attempts before they reach your AI model. Two-phase analysis: instant pattern lib

## Signal (2)

- `signal_lookup` — Look up a verified professional trust passport on Signal (zambo.dev/signal). Returns claimed credentials, skills, roles, verification status, and publ
- `signal_register` — Register this AI agent on Signal — the Zambo agent identity registry (zambo.dev/signal). This creates or updates a public profile URL, badge embed cod

## SubstrateLayer (2)

- `substrate_breakthroughs` — Zambo Stack — Fetch the latest AI-generated scientific breakthroughs from SubstrateLayer — a live autonomous research engine running 24/7. 64,000+ tot
- `substrate_engine` — Zambo Stack — Get live stats on the SubstrateLayer autonomous research engine: total lifeforms, active lifeforms, breakthroughs generated, evolution c

## TokenDiet (2)

- `tokendiet_analyze` — Analyze your Zambo MCP token usage and get a personalized savings report. Returns: cache hit rate, total tokens used, estimated cost, top token-hungry
- `tokendiet_cache` — Inspect TokenDiet smart-cache metadata and measured hit counts. Public and MCP callers cannot delete the shared cache. Only a deny-by-default set of r

## Video (2)

- `video_create` — Create a ZAMBO Video generation through the Video Engine. This is consequential external generation: first obtain the user's explicit confirmation by 
- `video_status` — Read honest ZAMBO Video Engine capabilities or the current status of an owned generation. Returns provider-reported state only; no fabricated outputs 

## BaseHawk — onchain scoring (1)

- `basehawk_score` — Score any Base (Base chain) wallet address from 0–1000. Returns a wallet intelligence profile: overall score, label (whale/builder/trader/degen/newcom

## Billing (2)

- `bill_audit` — Audit any bill, subscription, or service charge for errors, overcharges, and negotiation opportunities. Returns specific errors found, estimated savin
- `zambo_pay` — Agent-native x402 payment flow. Create a $1.49 USDC payment challenge on Base for a 24-hour Day Pass, then submit the server-issued payment_intent wit

## Bounty (1)

- `bounty_scan` — Scan a wallet for unclaimed DeFi bounties, airdrops, claimable rewards, and yield opportunities across 36+ protocols on 5 chains (Ethereum, Base, Arbi

## Builder (1)

- `builder_pass_check` — Check whether an email address has an active Zambo Pass or Day Pass. Returns active:true for both. Zambo Pass ($49/mo) includes 100+ MCP tools with co

## Code tools (1)

- `code_review` — Deep code review with severity-rated issues, security flags, performance notes, and specific fix suggestions. Returns: critical/high/medium/low issues

## Content (1)

- `content_distribute` — Generate a complete, platform-optimized content strategy for any product, feature, achievement, or idea. Returns ready-to-post copy for X (Twitter), L

## Contract scan (1)

- `contract_scan` — Scan any contract, terms of service, employment agreement, or legal document for red flags — in plain English. Returns risk level, specific red flags 

## CreditHunt — funding discovery (1)

- `credithunt` — Zambo Stack — Live, verified index of every AI and cloud startup credit program available right now. 29+ active programs including AWS Activate, Googl

## Day Pass (1)

- `day_pass_activate` — Agent-native Day Pass entry. Call with no arguments to create a $1.49 USDC payment intent on Base. After payment, call again with payment_intent and t

## Documents (1)

- `doc_intel` — Extract structured intelligence from any document — contracts, reports, PDFs, whitepapers, articles, READMEs, legal docs, or raw text. Pass a URL (web

## Email (1)

- `email_write` — Write any email — cold outreach, salary negotiation, complaints, follow-ups, apologies, pitch decks, rejections — fast and professionally. Returns sub

## Search (1)

- `find_agent` — Search the Zambo Agent Registry — the public phone book for AI agents. Find agents by capability, name, or description and get back their handle, endp

## Fridge (1)

- `fridge_forge` — Turn whatever is in your fridge into a real dinner plan. Give it a list of ingredients you have on hand and it returns 3 complete recipes with step-by

## GIFs (1)

- `gif_animate` — Generate a cinematic animated GIF from any description — AI generates the image, then applies a Ken Burns motion effect (pan, zoom, glitch, wave, heat

## Git (1)

- `git_changelog` — Turn raw git commits or a diff into a polished, professional changelog — formatted for GitHub releases, a CHANGELOG.md, or a product update. Returns g

## Live price (1)

- `live_price` — Real-time cryptocurrency price lookup for any coin — BTC, ETH, SOL, DOGE, BNB, XRP, MATIC, AVAX, ADA, LINK, and 100+ others. Returns live USD price, 2

## Markets (1)

- `market_pulse` — Real-time market intelligence snapshot across AI, agents, and research — aggregated from Substrate (64K+ live breakthroughs), CreditHunt opportunity i

## Meals (1)

- `meal_plan` — Generate a personalized meal plan with recipes, macros, and a shopping list — in seconds. Specify dietary restrictions, budget, cuisine preferences, a

## Memes (1)

- `meme_forge` — Generate a meme image — scene + overlaid caption text — as a shareable image URL. Describe the visual scene and the top/bottom text you want on the me

## Model oracle (1)

- `model_oracle` — Zambo Stack — Get a ranked recommendation of AI models for your specific task, token budget, and cost constraints. Covers Groq, Anthropic Claude, Open

## PDF (1)

- `pdf_extract` — Fetch and extract text content from any public URL — PDF documents, web pages, articles, docs. Returns the extracted text, word count, and a summary. 

## Proof (1)

- `proof_certify` — Cryptographically certify any AI-generated content with a SHA-256 provenance certificate — tamper-evident and publicly verifiable while the certificat

## ProvibeCode — code audit (1)

- `provibe_audit` — AI code audit for any public GitHub repository. Returns Provibe Score (0–100), security vulnerability list, dead code map, and an actionable execution

## QR codes (1)

- `qr_generate` — Generate a QR code for any URL, text, phone number, WiFi credentials, contact info, or anything else — instantly. Returns a direct image URL you can s

## Regex (1)

- `regex_build` — Describe what you need to match and get a working regex — with explanation, edge cases, and test examples in your language. No more Stack Overflow rab

## Reliability (1)

- `reliability_score` — Get real-time, machine-verified reliability scores for zambo.dev MCP tools — pass rates, latency, 7-day trend. zambo.dev is the ONLY MCP platform with

## Resume (1)

- `resume_boost` — Tailor your resume to a specific job description — boost ATS keyword match, strengthen bullet points, and highlight the right experience. Returns a re

## Salary (1)

- `salary_script` — Generate a complete salary negotiation script — opening move, rebuttals to every common pushback, BATNA, and closing. Returns a step-by-step negotiati

## SQL (1)

- `sql_from_english` — Convert plain-English database questions into working SQL queries — with explanation and optimization notes. Describe what you want to pull from your 

## Stack (1)

- `stack_architect` — Design the OPTIMAL Zambo Stack configuration for any goal — sequences 100+ tools intelligently, estimates time and cost, returns paste-ready MCP confi

## StructLock (1)

- `structlock` — Enforce any schema on messy AI output, natural language, or raw text — returns clean typed JSON every time. Replaces custom parseAIResponse() function

## Threads (1)

- `thread_craft` — Turn any idea, topic, or article into a viral-ready X (Twitter) thread — numbered, hooky, and optimized for engagement. Returns each tweet numbered wi

## Translate (1)

- `translate` — Translate any text into any language instantly — 100+ languages supported. Professional quality translation powered by Groq's fastest models. Works fo

## Voice (1)

- `voice_transcribe` — Transcribe any audio file or voice recording to text using Groq Whisper (whisper-large-v3). Accepts a direct URL to an audio file (mp3, wav, m4a, ogg,

## Weather (1)

- `weather` — Get real-time weather for any city, anywhere in the world — right now, no API key needed. Claude has no live data access; this tool bridges the gap. R

## Workout (1)

- `workout_build` — Build a complete personalized workout plan with exercises, sets, reps, and progression — based on your goal and equipment. Returns a structured weekly

## Writing (1)

- `write` — Professional AI writer — generates any content type at publication quality. Handles: blog posts, articles, emails, newsletters, landing page copy, ad 

## Zambro (1)

- `zambro_analyze` — Free, unlimited opportunity scanner with 21 specialized branches. Paste anything — a URL, GitHub repo, business description, product idea, or goal — a
