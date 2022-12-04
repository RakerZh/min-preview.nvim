local api = vim.api

api.nvim_create_user_command('Previewmd', "lua require('min-preview').previewmd()" , {})
api.nvim_create_user_command('Previewjy', "lua require('min-preview').previewjy()" , {})









