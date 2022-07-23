local M = {}

function M.config()
  local present, notify = pcall(require, "notify")
  if present then
    notify.setup(require("core.utils").user_plugin_opts("plugins.notify", {
      stages = "fade",
      on_open = nil,
      on_close = nil,
      render = "default",
      timeout = 5000,
      max_width = nil,
      max_height = nil,
      background_colour = "Normal",
      minimum_width = 50,
      icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
      },
    }))

    vim.notify = notify
    local notify = vim.notify
vim.notify = function(msg, ...)
    if msg:match("warning: multiple different client offset_encodings") then
        return
    end

    notify(msg, ...)
end
  end
end

return M
