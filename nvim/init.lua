
-- ~/.config/nvim/init.lua

-- Opciones básicas
vim.opt.number = true          -- números de línea
vim.opt.relativenumber = true  -- números relativos
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50
-- Ocultar o recolorear los '~' al final del buffer
vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#191724", bg = "none" })

-- Leader key (muy importante)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Keymaps básicos
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Instalar lazy.nvim automáticamente
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local function aplicar_transparencia()
  for _, grupo in ipairs(grupos_transparentes) do
    vim.api.nvim_set_hl(0, grupo, { bg = "none" })
  end
  vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#403d52", bg = "none" })
end


-- Plugins
require("lazy").setup({
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "main",
      dark_variant = "main",
      styles = {
        transparency = true,
      },
    },
  },
  { "nvim-tree/nvim-tree.lua" },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "auto",
        component_separators = "",
        section_separators = "",
      },
    },
  },
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" },
  { "L3MON4D3/LuaSnip" },
})

-- Colores
vim.cmd.colorscheme "rose-pine"

-- Quitar el color de fondo para hacerlo transparente
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- Cambiar el color de los números de línea a blanco
vim.api.nvim_set_hl(0, "LineNr", { fg = "#FFFFFF" })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#FFFFFF", bold = true })

-- Cambiar el color de los comentarios a blanco
vim.api.nvim_set_hl(0, "Comment", { fg = "#FFFFFF" })

-- Usar el portapapeles del sistema
vim.opt.clipboard = "unnamedplus"

-- Mapear Ctrl+C para copiar (en modo visual)
vim.keymap.set("v", "<C-c>", '"+y', { noremap = true, silent = true })

-- Opcional: Ctrl+Shift+C también
vim.keymap.set("v", "<C-S-c>", '"+y', { noremap = true, silent = true })

require("options")
require("keymaps")
require("plugins")

