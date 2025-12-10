local         o  =        vim.opt
o.re          =  0
o.encoding    =  "utf-8"
--o.filetype  =  "on"
o.syntax      =  "off"
o.tabstop     =  4
o.shiftwidth  =  4
o.showcmd	  = true
--o.termguicolors = true
o.clipboard	  = "unnamedplus"

local lsp = vim.lsp
lsp.inlay_hint.enable(false)

