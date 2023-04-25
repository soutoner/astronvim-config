return {
  "nvim-neo-tree/neo-tree.nvim",
  config = function(_, opts)
    opts.filesystem.filtered_items = {
      visible = true,
      hide_dotfiles = false,
      hide_gitignored = true,
    }

    require("neo-tree").setup(opts)
  end,
}
