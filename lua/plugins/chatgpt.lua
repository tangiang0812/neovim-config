return {
  "jackMort/ChatGPT.nvim",
  event = "VeryLazy",
  config = function()
    require("chatgpt").setup({
      -- api_key_cmd = "cat " .. vim.fn.expand("$HOME") .. "/secret.txt",
      api_key_cmd = "cat " .. "/home/gnaig" .. "/secret.txt",
      edit_with_instructions = {
        diff = false,
        keymaps = {
          close = { "<C-c>", "<C-h>", "<C-j>", "<C-k>", "<C-l>" },
          accept = "<C-y>",
          toggle_diff = "<C-d>",
          toggle_settings = "<C-o>",
          cycle_windows = "<Tab>",
          use_output_as_input = "<C-i>",
        },
      },
      chat = {
        keymaps = {
          -- close = { "<C-c>" },
          close = { "<C-c>", "<C-h>", "<C-j>", "<C-k>", "<C-l>" },
          yank_last = "<C-y>",
          yank_last_code = "<C-m>",
          scroll_up = "<C-u>",
          scroll_down = "<C-d>",
          new_session = "<C-n>",
          cycle_windows = "<Tab>",
          cycle_modes = "<C-f>",
          next_message = "<C-N>",
          prev_message = "<C-P>",
          select_session = "<Space>",
          rename_session = "r",
          delete_session = "d",
          -- draft_message = "<C-d>",
          edit_message = "e",
          delete_message = "d",
          toggle_settings = "<C-o>",
          toggle_message_role = "<C-r>",
          toggle_system_role_open = "<C-s>",
          stop_generating = "<C-x>",
        },
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
}
