return {
  "nvim-telescope/telescope-ui-select.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" }, -- ensure telescope is loaded first
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {
        wrap_results = true,
        sorting_strategy = "ascending",
      },
      pickers = {
        oldfiles = {
          initial_mode = "normal",
        },
      },
      extensions = {
        ["ui-select"] = require("telescope.themes").get_dropdown({}),
      },
    })

    telescope.load_extension("ui-select")
  end,
}

