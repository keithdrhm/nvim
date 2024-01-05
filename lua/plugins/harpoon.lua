local harpoon = require('harpoon')
--NEED THIS OR BAD THINGS HAPPEN
harpoon:setup({})
--NEED THIS OR BAD THINGS HAPPEN

return{
  "ThePrimeagen/harpoon", 
  branch = "harpoon2",
  requires = {{"nvim-lua/plenary.nvim"}},
  keys = {
    {
      "<leader>a", 
      function() 
        harpoon:list():append() 
      end,
      desc ="adds file to harpoon"
    },
    {
      "<C-h>",
      function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      desc = 'shows list of harpooned files'
    },
    {
      "<C-q>",
      function()
        harpoon:list():select(1)
      end
    },
    {
      "<C-w>",
      function()
        harpoon:list():select(2)
      end
    },
    {
      "<C-e>",
      function()
        harpoon:list():select(3)
      end
    },
    {
      "<C-r>",
      function()
        harpoon:list():select(3)
      end
    },
    {
      "<C-t>",
      function()
        harpoon:list():select(4)
      end
    }
  }
}
