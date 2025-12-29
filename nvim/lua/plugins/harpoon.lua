-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers").new({}, {
    prompt_title = "Harpoon",
    finder = require("telescope.finders").new_table({
      results = file_paths,
    }),
    previewer = conf.file_previewer({}),
    sorter = conf.generic_sorter({}),
  }):find()
end

return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    opts = {
      settings = {
        save_on_ui_close = true,
        save_on_toggle = true,
      },
    },
    config = function(_, opts)
      local harpoon = require("harpoon")
      harpoon:setup(opts)

      local harpoon_extensions = require("harpoon.extensions")
      harpoon:extend(harpoon_extensions.builtins.highlight_current_file())

      vim.keymap.set("n", "<leader>hg", function()
        harpoon:list():add()
      end, { desc = "Add mark" })

      vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
        { desc = "Open harpoon window" })

      vim.keymap.set("n", "<leader>he", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = "Open quick menu" })

      local keys = { "a", "s", "d", "f", "g", "h", "j", "k", "l", ";" }
      for idx, key in pairs(keys) do
        vim.keymap.set("n", "<leader>h" .. key, function()
          harpoon:list():select(idx)
        end, { desc = "Navigate to " .. idx })
      end
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
