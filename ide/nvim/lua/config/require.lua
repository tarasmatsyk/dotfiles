require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  -- check automatically for udpates
  -- or run this
  -- nvim --headless "+Lazy! sync" +qa
  -- checker = { enabled = true },
})

require("lazydev").setup({
	library = { "nvim-dap-ui" },
})
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup()
