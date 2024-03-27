return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    {
      "Saecki/crates.nvim",
      event = { "BufRead Cargo.toml" },
      opts = {
        src = {
          cmp = { enabled = true },
        },
      },
    },
    { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
  },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
      { name = "crates" },
    }))
    -- original LazyVim kind icon formatter
    local format_kinds = opts.formatting.format
    opts.formatting.format = function(entry, item)
      format_kinds(entry, item) -- add icons
      return require("tailwindcss-colorizer-cmp").formatter(entry, item)
    end
    opts.preselect = cmp.PreselectMode.None
    opts.experimental.ghost_text = false
    opts.completion.completeopt = "menu, menuone, noselect, noinsert"
    opts.enabled = function()
      if vim.bo.filetype == "chatgpt-input" then
        return false
      end
      if vim.bo.filetype == "TelescopePrompt" then
        return false
      end
      return true
    end
  end,
}
