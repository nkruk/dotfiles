return {
  "nvim-telescope/telescope-ui-select.nvim",
  config = function()
    -- get access to telescopes navigation functions
    local actions = require("telescope.actions")

    require("telescope").setup({
      defaults = {
        wrap_results = true,
        sorting_strategy = "ascending"
      },
      pickers = {
        oldfiles = {
          initial_mode = "normal"
        }
      },
      -- use ui-select dropdown as our ui
      extensions = {
        ["ui-select"] = {
          require("telescope.themes").get_dropdown({}),
        },
      },
      -- load the ui-select extension
      require("telescope").load_extension("ui-select"),
    })
  end,
}