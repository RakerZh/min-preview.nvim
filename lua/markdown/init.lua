-- File: ~/.local/share/nvim/plugged/markdown-preview/lua/markdown-preview.lua

local M = {}

function M.preview()
  -- Save the current buffer
  vim.api.nvim_command('write')

  -- Convert the Markdown file to HTML
  local cmd = 'markdown ' .. vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) .. ' > /tmp/markdown-preview.html'
  os.execute(cmd)

  -- Open the HTML file in Safari
  cmd = 'open -a Safari /tmp/markdown-preview.html'
  os.execute(cmd)
end

return M
