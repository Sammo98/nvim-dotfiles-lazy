return {
  -- Syntax highlightings
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "BufEnter",
    dependencies = {
      "nvim-treesitter/nvim-treesitter-textobjects",
      "nvim-treesitter/playground",
      "windwp/nvim-ts-autotag",
    },
    config = function()
      require("nvim-treesitter.configs").setup({
        highlight = {
          enable = true,
        },
        indent = {
          enable = true,
          disable = { "python" },
        },
        ensure_installed = {
          'vim',
          'markdown',
          'markdown_inline',
          'bash',
          'regex',
          'gomod',
          'javascript',
          'typescript',
          'tsx',
          'json',
          'toml',
          'html',
          'css',
          'scss',
          'lua',
          'rust'
        },
        auto_install = true,
        autotag = { -- dependency with 'nvim-ts-autotag'
          enable = true
        },
        playground = {
          enable = true,
          disable = {},
        },
        textobjects = {
          select = {
            enable = true,
            -- Automatically jump forward to textobj, similar to targets.vim
            lookahead = true,
            keymaps = {
            },
          },
        },
      }
      )
    end
  },

}
