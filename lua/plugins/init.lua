return {
  "tpope/vim-sleuth",

  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },

  {
    "mbbill/undotree",
    keys = { { "<leader>u", vim.cmd.UndotreeToggle } }
  },

  {
    "theprimeagen/vim-be-good",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "VimBeGood",
  },

}
