-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",

  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    Normal = {
      bg = "#1e1e2e",
    },
  },
}

return M
