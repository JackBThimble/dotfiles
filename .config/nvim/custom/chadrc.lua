-- Just an example, supposed to be placed in /lua/custom/

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:
M.options = {}

M.ui = {
   theme = "radium",
}

M.plugins = {
  user = {
    ["ThePrimeagen/vim-be-good"] = {},
    ["goolord/alpha-nvim"] = {
      disable = false,
    },
    ["NvChad/nvterm"] = {
      config = function()
        require "plugins.configs.nvterm"
      end,
    },
    ["max397574/better-escape.nvim"] = {
      config = function()
        require("better_escape").setup({
          mappings = {"jj", "jk"}
        })
      end,
    },
  },
  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    }
  }
}

M.mappings = {
}

return M
