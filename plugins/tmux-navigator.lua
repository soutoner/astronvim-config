return {
  "christoomey/vim-tmux-navigator",
  lazy = false,
  config = function()
    vim.g.tmux_navigator_no_mappings = 1

    vim.keymap.set("n", "<M-Left>", "<CMD>TmuxNavigateLeft<CR>", { silent = true })
    vim.keymap.set("n", "<M-Down>", "<CMD>TmuxNavigateDown<CR>", { silent = true })
    vim.keymap.set("n", "<M-Up>", "<CMD>TmuxNavigateUp<CR>", { silent = true })
    vim.keymap.set("n", "<M-Right>", "<CMD>TmuxNavigateRight<CR>", { silent = true })
    vim.keymap.set("n", "<M-\\>", "<CMD>TmuxNavigatePrevious<CR>", { silent = true })
  end,
}
