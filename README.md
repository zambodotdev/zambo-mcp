# Zambo MCP

    **Connect supported AI clients to Zambo's cross-AI execution and verification layer.**

    Zambo MCP is a hosted remote MCP service. It gives the AI client you already use access to 100+ capabilities plus shared execution state, approvals, artifacts, and receipts. Exact live tool names and counts are returned by MCP discovery; this repository intentionally avoids freezing them into README copy.

    [Connect](https://zambo.dev/mcp) · [Workflows](https://zambo.dev/workflows) · [Reliability](https://zambo.dev/reliability)

    ## Quick start

    Use this remote Streamable HTTP endpoint:

    ```text
    https://zambo.dev/api/mcp
    ```

    For clients that support URL-based MCP configuration:

    ```json
    {
      "mcpServers": {
        "zambo": {
          "url": "https://zambo.dev/api/mcp"
        }
      }
    }
    ```

    Restart or reconnect the client, then ask it to list Zambo capabilities or run a safe task.

    ## Verify the protocol directly

    Initialize:

    ```bash
    curl -sS https://zambo.dev/api/mcp \
      -H 'content-type: application/json' \
      -d '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{"protocolVersion":"2025-03-26","capabilities":{},"clientInfo":{"name":"curl","version":"1.0"}}}'
    ```

    List the live catalog:

    ```bash
    curl -sS 'https://zambo.dev/api/mcp?full=true' \
      -H 'content-type: application/json' \
      -d '{"jsonrpc":"2.0","id":2,"method":"tools/list","params":{}}'
    ```

    The response is standard JSON-RPC. Tool calls use `tools/call` with a catalog tool name and its advertised argument schema.

    ## Execution model

    ```text
    AI client → discover → plan/check → approve when required → execute → receipt/recover
    ```

    Zambo distinguishes successful execution from previews, approval requirements, degraded responses, and failures. A successful handler execution is evidence that Zambo observed the call complete; it is not automatically proof of an external real-world outcome.

    ## Authentication and limits

    Many discovery and read-only capabilities work without account setup. Private state, higher limits, and paid capabilities can require an opaque Zambo capability key. Do not use an email address as proof of ownership. Product-specific and upstream-provider limits may still apply even when a gateway limit is bypassed.

    ## Compatibility

    The endpoint is designed for remote Streamable HTTP MCP clients. Client configuration fields differ, so use the current instructions at [zambo.dev/mcp](https://zambo.dev/mcp) for tested setup paths. “MCP-compatible” does not imply every client/version has been tested.

    ## Security

    - Never commit capability keys, wallet keys, provider credentials, or session tokens.
    - Review the advertised side effects and approval requirements before consequential calls.
    - Treat returned links and external data as untrusted input in the host application.
    - Use bounded retries; replay-safe behavior depends on the individual capability contract.

    See [SECURITY.md](SECURITY.md) for reporting guidance.

    ## Limitations

    Zambo depends on external models, APIs, networks, and data providers. Those systems can be unavailable or rate limited. Zambo should surface that state explicitly rather than inventing a result. Some capabilities are previews, require human action, or have product-specific ownership rules.

    ## License

    This repository currently documents a hosted service and does not grant a license to the Zambo platform itself. Any source code added here should include explicit license terms before reuse.
    