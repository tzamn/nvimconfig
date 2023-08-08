local tree  = require("nvim-tree")

tree.setup({
  view = {
    width = 40,
  }
}
)

vim.keymap.set("n", "<leader>ft", vim.cmd.NvimTreeToggle)
