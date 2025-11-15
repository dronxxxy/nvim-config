return {
  "nvim-tree/nvim-tree.lua",
  config = true,
  opts = {
    renderer = {
      icons = {
        show = {
          file = false,
          folder = false,
          folder_arrow = false,
          git = false,
          modified = false,
          hidden = false,
          diagnostics = false,
          bookmarks = false,
        },
      },
    },
  },
  keys = {
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle an explorer" },
  }
}
