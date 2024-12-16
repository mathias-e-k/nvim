return {
  {
    -- enabled = false,
    "echasnovski/mini.nvim",
    config = function()
      -- Statusline
      local statusline = require("mini.statusline")
      statusline.setup({ use_icons = true })
    end,
  },
}
