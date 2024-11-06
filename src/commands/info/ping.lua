local accessableby = require('../../constants/accessableby.lua')
local discordia = require('discordia')

local command = {}

function command:new()
  self.name = {'ping'}
  self.description = 'Shows the ping of the Bot'
  self.category = 'info'
  self.accessableby = {accessableby.member}
  self.usage = ''
  self.aliases = {}
  self.lavalink = false
  self.playerCheck = false
  self.usingInteraction = true
  self.sameVoiceCheck = false
  self.permissions = {}
  self.options = {}
  return self
end

function command:run(client, handler)
  handler:defer_reply()

  local msg_time = math.floor(handler.createdAt + 0.5)
  local ping = tostring(msg_time - os.time())

  local embed_data = {
    title = "🏓 " .. client.user.username,
    description = client._i18n:get(handler.language, 'command.info', 'ping_desc', { ping }),
    color = discordia.Color.fromHex(client._config.bot.EMBED_COLOR).value,
    timestamp = discordia.Date():toISO('T', 'Z')
  }
  handler:edit_reply({ embeds = {embed_data} })
end

return command