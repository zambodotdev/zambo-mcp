# Glama bridge: lets directory scorers build and run this repo.
# Proxies stdio to the hosted Zambo endpoint (zero-auth) via mcp-remote.
FROM node:22-alpine
RUN npm install -g mcp-remote
ENTRYPOINT ["mcp-remote", "https://zambo.dev/api/mcp"]
