local M = {
  custom_browser = 'Safari'
}

function M.previewmd()
  -- Save the current buffer
  vim.api.nvim_command('write')

  -- Convert the Markdown file to HTML
  local cmd = 'markdown ' .. vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) .. ' > /tmp/markdown-preview.html'
  os.execute(cmd)

  -- Open the HTML file in Safari
  cmd = 'open -a Safari /tmp/markdown-preview.html'
  os.execute(cmd)
end


function M.previewjy()
  -- Save the current buffer
  vim.api.nvim_command('write')

  -- Convert the Jupyter notebook to HTML
  local cmd = 'jupyter nbconvert --to html ' .. vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) .. ' --output /tmp/jupyter-preview.html'
  os.execute(cmd)

  -- Open the HTML file in Safari
  cmd = 'open -a' .. M.custom_browser .. '/tmp/jupyter-preview.html'
  os.execute(cmd)
end


return M
