return {
  {
      'romgrk/barbar.nvim',
      dependencies = {'nvim-tree/nvim-web-devicons'},
      lazy = false,
      keys = {
          {"<leader>1", "<cmd>BufferGoto 1<cr>", desc = "Go to buffer 1"},
          {"<leader>2", "<cmd>BufferGoto 2<cr>", desc = "Go to buffer 2"},
          {"<leader>3", "<cmd>BufferGoto 3<cr>", desc = "Go to buffer 3"},
          {"<leader>4", "<cmd>BufferGoto 4<cr>", desc = "Go to buffer 4"},
          {"<leader>5", "<cmd>BufferGoto 5<cr>", desc = "Go to buffer 5"},
          {"<leader>6", "<cmd>BufferGoto 6<cr>", desc = "Go to buffer 6"},
          {"<leader>7", "<cmd>BufferGoto 7<cr>", desc = "Go to buffer 7"},
          {"<leader>8", "<cmd>BufferGoto 8<cr>", desc = "Go to buffer 8"},
          {"<leader>9", "<cmd>BufferGoto 9<cr>", desc = "Go to buffer 9"},
          {"<leader>tn", "<cmd>tabnew<cr>", desc = "Go to buffer 9"},
          {"<leader>tc", "<cmd>BufferClose<cr>", desc = "Buffer Close"},
      }
  }
}
