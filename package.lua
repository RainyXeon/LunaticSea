return {
  name = "LunaticSea",
  version = "1.0.0-dev",
  description = "ByteBlaze in lua version. Include staandalone packages",
  tags = { "lavalink", "discordbot", "discord" },
  license = "AGPL-3.0",
  author = { name = "RainyXeon", email = "xeondev@xeondex.onmicrosoft.com" },
  homepage = "https://github.com/RainyXeon/LunaticSea",
  dependencies = {
    "creationix/coro-http@v3.2.3",
    "luvit/require@2.2.3",
    "luvit/process@2.1.3",
    "luvit/dns@2.0.4",
    "luvit/secure-socket@v1.2.3",
    "RainyXeon/discordia@v3.0.6",
    "luvit/json@v2.5.2"
  },
  files = {
    "**.lua",
    "!test*",
    "!build.lua",
    "!dev.lua"
  }
}