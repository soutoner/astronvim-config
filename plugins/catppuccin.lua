return {
  "catppuccin/nvim",
  as = "catppuccin",
  init = function()
    require("catppuccin").setup {
      flavour = "mocha",
      dim_inactive = {
        enabled = true,
        shade = "light",
        percentage = 0.25,
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
