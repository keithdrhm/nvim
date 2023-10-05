return {
  'dense-analysis/ale',
   config = function() 
     vim.g.ale_sign_error = '✘'
     vim.g.ale_sign_warning = '⚠'
     vim.cmd[[ highlight ALEError ctermbg=DarkMagenta ]]
     vim.g.ale_set_highlights = 1 
     vim.g.ale_fix_on_save = 1
     vim.g.ale_fixers = {
        typescript = {'prettier', 'tslint', 'eslint'},
        typescriptreact = {'prettier', 'tslint', 'eslint' },
        javascript = { 'prettier', 'eslint' },
        css = { 'prettier' }
    }
  end 
}
