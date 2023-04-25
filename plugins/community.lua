return {
  "AstroNvim/astrocommunity",
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "catppuccin",
    opts = {
      flavour = "mocha",
      integrations = {
        neotree = true,
        cmp = true,
        telescope = true,
        notify = true,
      },
    },
  },
  { import = "astrocommunity.bars-and-lines.heirline-vscode-winbar" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },
}
