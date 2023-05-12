return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function(plugin, opts)
    require "plugins.configs.telescope" (plugin, opts)

    local telescope = require "telescope"
    -- This is your opts table
    telescope.setup {
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_cursor {},
        },
      },
    }
    telescope.load_extension "ui-select"
  end,
}
