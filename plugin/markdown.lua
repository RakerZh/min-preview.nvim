local api = vim.api
local md = require('markdown')

api.nvim_buf_create_user_command('markdown-preview',function ()
  md:preview()
end, {})
