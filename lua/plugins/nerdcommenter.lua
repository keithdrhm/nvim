return {
  'preservim/nerdcommenter',
   -- toggle using <leader>ca 
   config = function()
     vim.g.NERDCustomDelimiters = {
       javascript = {
         left = '//',
         right = '',
         leftAlt = '{/* ',
         rightAlt = ' */}'
       }
      }
  end
}
