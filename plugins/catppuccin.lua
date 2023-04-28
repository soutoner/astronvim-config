return {
  "catppuccin/nvim",
  as = "catppuccin",
  init = function()
    require("catppuccin").setup {
      flavour = "mocha",
      dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
      },
      integrations = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        telescope = true,
        notify = true,
      },
    }
  end,
}
