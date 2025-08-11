-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

vim.diagnostic.config { update_in_insert = true }

vim.api.nvim_create_autocmd({ 'InsertLeave' }, {
  pattern = { '*' },
  callback = function()
    if vim.bo.modified then
      vim.cmd 'write'
    end
  end,
  nested = true,
})

require('lspconfig').ocamllsp.setup {}

return {
  'numToStr/Comment.nvim',
  opts = {},
}
