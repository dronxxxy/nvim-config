return {
  "bluz71/vim-moonfly-colors",
  priority = 1000,
  config = function()
    require("moonfly")
    vim.cmd.colorscheme "moonfly"
  end,
}
