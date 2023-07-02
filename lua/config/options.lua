vim.g.mapleader = " "
local opt = vim.opt

vim.wo.relativenumber = true


vim.o.guicursor = "a:block"

opt.nu = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.smartindent = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

-- clipboard
-- allow you to yank from neovim and C-v to anywhere vice versa
opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
if _G.IS_WSL and vim.fn.executable('win32yank.exe') == 1 then -- you need put win32yank in system32
  vim.g.clipboard = {
    name = 'win32yank-wsl',
    copy = {
      ["+"] = { "win32yank.exe", "-i", "--crlf" },
      ["*"] = { "win32yank.exe", "-i", "--crlf" },
    },
    paste = {
      ["+"] = { "win32yank.exe", "-o", "--lf" },
      ["*"] = { "win32yank.exe", "-o", "--lf" },
    },
    cache_enabled = true
  }
end

opt.iskeyword:append("-") -- now 'test-test' is a word
vim.wo.fillchars='eob: '

