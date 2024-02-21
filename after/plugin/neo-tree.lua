if vim.g.vscode then
  return
end

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

require("neo-tree").setup({
  close_if_last_window = true,
})

vim.keymap.set("n", "<leader>tt", "<Cmd>Neotree reveal toggle<CR>", { desc = "Toggle file tree" })
vim.keymap.set("n", "<leader>tc", "<Cmd>Neotree action=close source=filesystem<CR>", { desc = "Close file tree" })
vim.keymap.set("n", "<leader>tf", "<Cmd>Neotree reveal action=focus<CR>", { desc = "Focus file tree" })
