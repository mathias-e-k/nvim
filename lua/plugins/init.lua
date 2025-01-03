return {
  "tpope/vim-sleuth",

  {
    "folke/lazydev.nvim",
    ft = "lua",
    cmd = "LazyDev",
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

  {
    'lewis6991/gitsigns.nvim',
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
    event = "UiEnter"
  },

  {
    -- TEST: the word TEST should be highlighted.
    -- NOTE: see docs for how to add your own keywords.
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = { signs = false }
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    event = "UiEnter"
  },
}
