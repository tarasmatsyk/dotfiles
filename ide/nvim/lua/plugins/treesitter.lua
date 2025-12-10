return {
  "nvim-treesitter/nvim-treesitter",
  version = false,
  branch = "main",
  opts = {
	indent = { enable = true }, ---@type lazyvim.TSFeat
  	highlight = { enable = true }, ---@type lazyvim.TSFeat
  	folds = { enable = true }, ---@type lazyvim.TSFeat
  	ensure_installed = {
		"bash",
    	"diff",
    	"html",
    	"javascript",
    	"jsdoc",
    	"json",
    	"jsonc",
    	"lua",
    	"luadoc",
    	"luap",
    	"markdown",
    	"markdown_inline",
    	"printf",
    	"python",
    	"query",
    	"regex",
		"rust",
		"go",
    	"toml",
    	"tsx",
    	"typescript",
    	"vim",
    	"vimdoc",
    	"xml",
    	"yaml",
	}
  }
}
