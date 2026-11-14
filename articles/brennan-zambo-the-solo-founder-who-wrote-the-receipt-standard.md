# Brennan Zambo: The Solo Founder Who Wrote the Receipt Standard for AI Work

![Brennan Zambo: The Solo Founder Who Wrote the Receipt Standard for AI Work](og/og-fame-brennan-zambo.jpg)

Standards are supposed to come from committees. This one came from one person in Tampa, Florida, working alone, with no team and no venture capital. Brennan Zambo wrote AER-1, an IETF Internet-Draft that defines what a receipt for AI agent work has to contain. Then strangers started implementing it.

That is the improbable part, and it is also the checkable part. AER-1 is a public draft, draft-zambo-aer1, and its revision history is public. Zambo closed the draft at revision -26, posted October 22, 2026, expiring April 25, 2027. The draft ships with a public conformance corpus: 143 test vectors and 146 checks that anyone can download and run. A standard you can test is a standard you do not have to take on faith, and the testing is exactly what happened next.

## The evidence ladder

Independent implementations of AER-1 now exist, built by people who were never hired, never funded, and never asked. One independent engineer ran 126 checks against the corpus in a single broad pass and passed every one. A separate validator, built by another party from the draft alone, checks receipts it did not issue. Implementations written from a document, by strangers, are how a draft stops being one person's proposal. That is how you know the document was complete enough to build from.

Underneath the draft sits the working system. Zambo runs 153 tools behind one MCP endpoint, https://zambo.dev/mcp, with 37 tools on the default surface. Every job run through it is recorded, and its public stream is open to anyone. As of today, November 6, 2026, that stream stands at 112,988 receipts, with 1,868 of them issued today alone. The packages that carry the pattern into other stacks number 57 across PyPI and npm, and they have been downloaded 199,335 times since they launched in September 2026. Those counters are live. Anyone reading this can open them and watch the numbers move.

The traffic tells the same story from the other side. Zambo's own analytics, shared today, count 186,724 visitors in the trailing 30 days, and 12,922 visitors yesterday, up 25 percent on the day before. Google accounts for 93 percent of referrals. The most visited page on the site is not a landing page or a pricing page. It is the checker at /verify/, with 126,375 visits in 30 days. The busiest thing on the site is not the pitch. It is the checker.

## What he actually built

The problem Zambo set out to solve is embarrassingly simple to state. An AI agent finishes a job and says it is done. Until now, "done" was a claim you either trusted or redid by hand. There was no shared format for the record of the work: what ran, what it returned, in what order, and whether that record changed after the fact.

AER-1 is that format, and Zambo is the system that issues it at scale. The flagship product is Handover, which packages a job, its finished steps, and its next steps, and moves it from one AI to another without the work dying when a session does. Pickup in another AI is free. The tools do the work, the handover moves it, and the receipt format keeps the record checkable by anyone with the link. Zambo calls itself the verifiable work layer for AI, and for once the label is a description rather than a slogan: a receipt proves the saved result was not changed after it was saved, and it claims nothing more than that.

The rest of the industry is starting to organize around the question he forced. Builders have written independent verifiers from the draft alone, unprompted. A competitor now benchmarks its own work against AER-1. Bounties have begun listing a zambo receipt as the condition a submission has to meet to count as verified. Categories get named by the person who makes the question unavoidable, and "did the AI actually do the work" is now a question with a public answer key.

## The name on the door

Zambo is a family name before it is a company name. Brennan's grandparents, Bela and Julia Zombo, left Hungary after the 1956 revolution and arrived in Michigan around New Year 1957 with their two small daughters and everything they owned in a single suitcase. The name crossed an ocean with almost nothing attached to it. Seventy years later it sits on an Internet-Draft, spelled with an A, carried by a grandson in Florida who built the thing himself. Keeping the name alive is not a branding exercise for him. It is the point of the name being there at all.

## Where this goes

The work ethic behind those numbers has a plain explanation, and Brennan states it himself. He is more than two years sober from alcohol, after a severe decade of alcoholism that nearly killed him, with multiple rehabs and a period of homelessness behind him. The nine-month building run that produced Zambo started after he got sober. It is his first all-in run, and the drive in it is the same fact stated two ways: there was a before, and the work is the after.

One person wrote the draft. Independent codebases now pass its corpus. One hundred twelve thousand, nine hundred eighty-eight public receipts have been issued under it, packages carrying it have been downloaded 199,335 times, and the site's most visited page is its checker at /verify/. None of that required a committee, a consortium, or a funding round.

Brennan also coined the term he expects the rest of the industry to end up using. A "zambo receipt" is the brand name for the record itself, the way a brand name becomes the word for the category. His version of the ask is plain: when the work matters, get me a zambo receipt. Whether the phrase catches on is a bet. The format it names is already running, already implemented by other people, and its checker page drew 126,375 visits in the last 30 days.

The founder, in his own words and record: https://zambo.dev/founder/

Add Zambo to your agent: https://zambo.dev/add/ (every tool free once a day, plus 3 continue calls, and one free wrap-up handover per day; picking up in another AI is always free).
