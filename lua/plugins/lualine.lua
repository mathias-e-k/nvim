return {
  {
    enabled = true,
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = function()
      local ashen = require("ashen.plugins.lualine").lualine_opts
      ashen.extensions = { "lazy", "mason", "oil" }
      return ashen
    end
  }
}
