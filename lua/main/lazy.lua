local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Theme
  { 
    "cideM/yui",
    lazy = false,
    priority = 1000,
    -- config = function() 
    --    vim.cmd([[colorscheme yui]])
    -- end
  },
  { 
    "jaredgorski/fogbell.vim",
    lazy = false,
    priority = 1000,
    -- config = function() 
    --   vim.cmd([[colorscheme yui]])
    -- end
  },


  -- navigation
  -- Trouble stuff
  {
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup()
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    --tag = "1.0.1",
    dependencies = {
      "nvim-lua/plenary.nvim"
    }
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "nvim-treesitter/playground",
  "mbbill/undotree",

  -- Git
  "tpope/vim-fugitive",
  "lewis6991/gitsigns.nvim",

  -- AutoTags
  "nvim-treesitter/nvim-treesitter-context",
  "windwp/nvim-ts-autotag",

  -- comments 
  -- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
  {
    'numToStr/Comment.nvim',
    lazy = false,
    config = function ()
      require('Comment').setup()      
    end
  },
  
  -- surround
  "tpope/vim-surround",

})

if vim.g.vscode then
  local vscode = require('vscode-neovim')
  vscode.notify("Hello from Neovim Lua")
end

