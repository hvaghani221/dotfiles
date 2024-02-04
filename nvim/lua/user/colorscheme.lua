local M = {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
}

function M.config()
  vim.cmd.colorscheme "kanagawa"
end

return M
