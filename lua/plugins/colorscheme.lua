local transparentBG = false

return {

  -- tokyonight
  {
    "folke/tokyonight.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({ transparent = transparentBG })
      vim.cmd("colorscheme tokyonight")
    end
  },

  -- catppuccin
  {
    "catppuccin/nvim",
    enabled = false,
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({ transparent_background = transparentBG })
      vim.cmd("colorscheme catppuccin")
    end
  },

  -- rose-pine
  {
    "rose-pine/neovim",
    enabled = true,
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    config = function()
      require("rose-pine").setup({
        styles = { italic = false, transparency = transparentBG }
      })
      vim.cmd("colorscheme rose-pine")
    end
  }
}
