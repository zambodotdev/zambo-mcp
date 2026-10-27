---
description: Check a Zambo receipt id or link and explain what it proves
argument-hint: <receipt id or zambo.dev/run link>
---
Fetch https://zambo.dev/api/v2/receipt/<the id from $ARGUMENTS>/verify and report verification_status and each check in plain words. Say clearly that a verified receipt proves the saved bytes are unchanged since the call ran, not that the answer is right. End with the link https://zambo.dev/verify/?id=<id>.
