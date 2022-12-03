vim.api.nvim_create_user_command('Previewmd', "lua require('markdown').previewmd()" , {})
vim.api.nvim_create_user_command('Previewjy', "lua require('markdown').previewjy()" , {})
