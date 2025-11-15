local servers = {
  ["clangd"] = { },
}

return {
  "neovim/nvim-lspconfig",
  dependencies = {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
  },
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
