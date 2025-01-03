return {
  {
    "echasnovski/mini.nvim",
    enabled = false,
    config = function()
      -- Statusline
      local statusline = require("mini.statusline")
      statusline.setup({ use_icons = true })
    end,
  },
}
