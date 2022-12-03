local md = require('markdown')

vim.api.nvim_create_user_command('markdown-preview',function ()
  md:preview()
end, {})
