return {

  -- tokyonight
  {
    "folke/tokyonight.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    opts = { transparent = false },
    config = function(_, opts)
      require("tokyonight").setup(opts)
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
    opts = { transparent_background = false },
    config = function(_, opts)
      require("catppuccin").setup(opts)
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
    opts = { disable_background = false },
    config = function(_, opts)
      require("rose-pine").setup(opts)
      vim.cmd("colorscheme rose-pine")
    end
  }
}
