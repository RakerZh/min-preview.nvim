local api = vim.api

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
  cmd = 'open -a ' .. M.custom_browser .. ' /tmp/markdown-preview.html'
  os.execute(cmd)
end


function M.previewjy()
  -- Save the current buffer
  vim.api.nvim_command('write')

  -- Convert the Jupyter notebook to HTML
  local cmd = 'jupyter nbconvert --to html ' .. vim.fn.shellescape(vim.api.nvim_buf_get_name(0)) .. ' --output /tmp/jupyter-preview.html'
  os.execute(cmd)

  -- Open the HTML file in Safari
  cmd = 'open -a ' .. M.custom_browser .. ' /tmp/jupyter-preview.html'
  os.execute(cmd)
end


function M.add_virtual_text()
    -- Check if the buffer exists
    -- if not vim.api.nvim_buf_is_valid(bufnr) then
    --    return
    -- end

    -- Get the current virtual text for the line
    -- local current_virtual_text = vim.api.nvim_buf_get_virtual_text(bufnr, line)

    -- Add the new virtual text to the current virtual text
    -- for i, virt_text in ipairs(virtual_text) do
    --    table.insert(current_virtual_text, virt_text)
    -- end

    -- Set the updated virtual text for the line
    local namespace_id = vim.api.nvim_create_namespace("min-preview")
    api.nvim_buf_set_extmark(0, namespace_id, 29, 32, {
    end_col = 43,
    virt_text = { { '[ select me to see ]', 'NonText' } },
    virt_text_pos = 'overlay',
    virt_text_hide = true,
})
end

return M
