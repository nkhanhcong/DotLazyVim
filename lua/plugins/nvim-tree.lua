return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        side = "right",
        width = 40,
      },
    })

    vim.api.nvim_set_keymap("n", "<leader>er", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<leader>ec", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })
  end,
}
