local servers = {
  ["clangd"] = { },
  ["typst"] = { },
  ["grammar_guard"] = {
    settings = {
      ltex = {
        enabled = { "latex", "tex", "bib", "markdown" },
        language = "en",
        diagnosticSeverity = "information",
        setenceCacheSize = 2000,
        additionalRules = {
          enablePickyRules = true,
          motherTongue = "en",
        },
        trace = { server = "verbose" },
        dictionary = {},
        disabledRules = {},
        hiddenFalsePositives = {},
      },
    },
  }
}

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
  keys = {
    { "gd", vim.lsp.buf.definition, desc = "Go to LSP definition" },
    { '<leader>la', vim.lsp.buf.code_action, desc = 'Show code actions' },
    { '<leader>lr', vim.lsp.buf.rename, desc = 'Rename symbol' },
    { '<leader>lh', vim.lsp.buf.hover, desc = 'Hover' }
  },
  lazy = false,
  config = function()
    local servers = {}
    for name, server in pairs(servers) do
      table.insert(servers, name)
    end
    require("mason").setup()
    require("mason-lspconfig").setup {
      ensure_installed = servers,
    }
    
    local lspconfig = require("lspconfig")
    for name, server in pairs(servers) do
      lspconfig[name].setup(server)
    end

    vim.diagnostic.config({
      virtual_text = {
        enabled = true,
      },
    })
  end
}
