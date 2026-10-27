# Add the Zambo MCP to your client

Zambo is a hosted MCP server. There is nothing to install, nothing to build,
and no account to create before the first call. You add one remote server
entry to your MCP client, restart or reload the client, and call a tool.
This page is the whole procedure, plus how to confirm it worked and what to
check when it does not.

## The configuration

```json
{
  "mcpServers": {
    "zambo": {
      "url": "https://zambo.dev/mcp"
    }
  }
}
```

That block is the complete integration. If your client stores servers in a
JSON file under the `mcpServers` key (a project file, a user settings
file, or a config the client generates from its settings screen), paste the
`zambo` entry alongside any servers already there. If your client collects remote servers through a form instead of a
file, the two values it wants are the name `zambo` and the URL
`https://zambo.dev/mcp`.

Client-specific click paths, kept current, live at https://zambo.dev/add.
The endpoint is the same for every client.

## What you get

- **No signup, no key.** The server answers anonymous calls. The first call
  lands in seconds.
- **Free tier:** 20 free calls per day, then they upgrade. No card is taken to start.
- **153 tools behind the one URL.** The default surface lists 35 everyday
  tools so a client's tool picker stays readable; the full set is served by
  the same endpoint.
- **A receipt with every call.** Each result comes back with a verifiable
  receipt at a public link, including calls that were rejected. What that
  record is and how to check it:
  [Verify AI agent work before you trust it](./verify-ai-agent-work.md)

## Make the first call

After reloading the client, call any harmless read-only tool. A price lookup
is a good probe: ask your agent for the current price of BTC. Three things
should come back:

1. The result itself.
2. A receipt link of the shape `https://zambo.dev/run/<id>`.
3. No error about authentication, because none is required.

Open the receipt link. It shows the saved record of your call. Then check
the record independently:

```bash
curl https://zambo.dev/api/v2/receipt/<id>/verify
```

A `verified` status with each check reported means the loop is closed: your
client called, the work was recorded, and the record recomputes. For a
worked example before you wire anything up, this receipt is already public:
https://zambo.dev/run/ef28b4c2-4355-479e-bd43-22a05122a574

## When it does not show up

- **The server is missing from the tool list.** The configuration is almost
  certainly not where the client reads it, or the JSON has a syntax error.
  Validate the file as JSON, confirm the entry sits under `mcpServers`, and
  fully restart the client; several clients read MCP configuration only at
  launch.
- **The client cannot reach the server.** The endpoint is a remote,
  streamable HTTP MCP server. Clients that only support local stdio servers
  cannot use a bare URL entry; check whether your client supports remote
  servers over HTTP before debugging the URL itself.
- **Calls answer but the tool list looks short.** That is the default
  surface doing its job. The 35 listed tools are the everyday set; the full set is 153 tools served by the same endpoint.

## Next steps

- Put the receipts to work: [Verify AI agent work before you trust
  it](./verify-ai-agent-work.md)
- Keep context across clients and models:
  [Memory and continuity across AI sessions](./memory-and-continuity.md)
- The specification the receipts follow is AER-1, draft-zambo-aer1-26:
  https://datatracker.ietf.org/doc/draft-zambo-aer1/26/
