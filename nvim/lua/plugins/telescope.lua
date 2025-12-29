return {
  'nvim-telescope/telescope.nvim',
  tag = 'v0.2.0',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    {
      "<leader>f",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Find Tracked Files",
          find_command = {
            "rg",
            "--files",
          },
        })
      end,
      desc = "Open file picker in root dir",
    },
    {
      "<leader><leader>f",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Find All Files",
          find_command = {
            "rg",
            "--files",
            "--hidden",
            "--no-ignore",
            "--glob",
            "!**/.git",
            "--glob",
            "!**/node_modules",
          },
        })
      end,
      desc = "Open file picker in root dir",
    },
    {
      "<leader>.",
      function()
        require("telescope.builtin").find_files({
          prompt_title = "Find Dotfiles",
          find_command = {
            "rg",
            "--files",
            "-g",
            "**/.*",
          },
        })
      end,
      desc = "Search env files",
    },
    {
      "<leader>/",
      function()
        require("telescope.builtin").live_grep()
      end,
      desc = "Global search in root dir",
    },
    {
      "<leader><leader>/",
      function()
        require("telescope.builtin").live_grep({
          additional_args = {
            "--hidden",
            "--no-ignore",
            "--glob",
            "!**/.git",
            "--glob",
            "!**/node_modules",
          },
        })
      end,
      desc = "Global search in root dir",
    },
    {
      "<leader>s",
      function()
        require("telescope.builtin").lsp_document_symbols({})
      end,
      desc = "Open symbol picker",
    },
    {
      "<leader>j",
      function()
        require("telescope.builtin").jumplist()
      end,
      desc = "Open jumplist picker",
    },
    {
      "<leader>b",
      function()
        require("telescope.builtin").buffers()
      end,
      desc = "Open buffer picker",
    },
    {
      "<leader>S",
      function()
        require("telescope.builtin").lsp_workspace_symbols()
      end,
      desc = "Open symbol picker",
    },
    {
      "<leader>d",
      function()
        require("telescope.builtin").diagnostics({ bufnr = 0 })
      end,
      desc = "Open diagnostic picker",
    },
    {
      "<leader>D",
      function()
        require("telescope.builtin").diagnostics()
      end,
      desc = "Open workspace diagnostic picker",
    },
  },
}
