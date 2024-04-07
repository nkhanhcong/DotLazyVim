return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "jayp0521/mason-null-ls.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_null_ls = require("mason-null-ls")

    -- enable mason and configure icons
    mason.setup()

    mason_lspconfig.setup({
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true,
    })
  end,
}
