vim.api.nvim_create_autocmd({"TermOpen" }, { command = "startinsert"})
vim.api.nvim_create_autocmd({"TermOpen" }, { command = "setlocal nonumber norelativenumber"})
vim.api.nvim_create_autocmd("TermClose", {
    callback = function()
       vim.cmd("close")
    end
})
