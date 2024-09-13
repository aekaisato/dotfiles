if not vim.g.vscode then
  return {}
end

local plugins = {
  "lazy.nvim",
  "AstroNvim",
  "astrocore",
  "astroui",
  "nvim-treesitter",
  "leap.nvim",
  "nvim-surround",
  "vim-repeat",
}

local Config = require("lazy.core.config")
-- disable plugin update checking
Config.options.checker.enabled = false
Config.options.change_detection.enabled = false
-- replace the default `cond`
Config.options.defaults.cond = function(plugin)
  return vim.tbl_contains(plugins, plugin.name)
end

---@type LazySpec
return {
  -- disable colorscheme setting
  { "AstroNvim/astroui", opts = { colorscheme = false } },
  -- disable treesitter highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = { highlight = { enable = false } },
  },
}
